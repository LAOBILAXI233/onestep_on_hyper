package com.leaf.hyperdragshare.codex;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

final class ModuleActivation {
    static final String METHOD_REPORT_INJECTED = "report_injected";
    static final String EXTRA_VERSION_CODE = "version_code";
    static final String EXTRA_PORTAL_ROOT_GRANTED = "portal_root_granted";

    private static final String PREFS_NAME = "module_activation";
    private static final String KEY_INJECTED_VERSION = "injected_version";
    private static final String KEY_PORTAL_ROOT_VERSION = "portal_root_version";
    private static final String KEY_PORTAL_ROOT_GRANTED = "portal_root_granted";
    private static final long ROOT_TIMEOUT_SECONDS = 4L;
    private static final String PORTAL_SERVICE_COMMAND =
            "am startservice --user current "
                    + "-a miui.intent.action.TEXT_CONTENT_EXTENSION "
                    + "-n com.miui.contentextension/"
                    + "com.miui.contentextension.services.TextContentExtensionService";
    private static final String PORTAL_BLACKLIST_ACTIVITY_COMMAND =
            "am start --user current -n com.miui.contentextension/"
                    + "com.miui.contentextension.setting.whitelist.BlacklistSettingActivity";
    private static boolean portalRootProbeInFlight;

    private ModuleActivation() {}

    static boolean reportInjected(Context portalContext) {
        Bundle extras = new Bundle();
        extras.putLong(EXTRA_VERSION_CODE, com.hyper.onestep.BuildConfig.VERSION_CODE);
        return reportPortalStatus(portalContext, extras);
    }

    static void probePortalRootAccessAsync(Context portalContext) {
        if (portalContext == null) {
            return;
        }
        final Context reportContext = portalContext.getApplicationContext() == null
                ? portalContext
                : portalContext.getApplicationContext();
        synchronized (ModuleActivation.class) {
            if (portalRootProbeInFlight) {
                return;
            }
            portalRootProbeInFlight = true;
        }
        new Thread(() -> {
            try {
                reportPortalRootAccess(reportContext, hasRootAccess());
            } finally {
                synchronized (ModuleActivation.class) {
                    portalRootProbeInFlight = false;
                }
            }
        }, "DragShare-PortalRootCheck").start();
    }

    private static boolean reportPortalRootAccess(Context portalContext, boolean rootGranted) {
        Bundle extras = new Bundle();
        extras.putLong(EXTRA_VERSION_CODE, com.hyper.onestep.BuildConfig.VERSION_CODE);
        extras.putBoolean(EXTRA_PORTAL_ROOT_GRANTED, rootGranted);
        return reportPortalStatus(portalContext, extras);
    }

    private static boolean reportPortalStatus(Context portalContext, Bundle extras) {
        if (portalContext == null) {
            return false;
        }
        try {
            portalContext.getContentResolver().call(
                    ImageStagingClient.BASE_URI,
                    METHOD_REPORT_INJECTED,
                    null,
                    extras);
            return true;
        } catch (Throwable ignored) {
            return false;
        }
    }

    static void recordInjected(Context moduleContext, Bundle extras) {
        long reportedVersion = extras == null
                ? -1L
                : extras.getLong(EXTRA_VERSION_CODE, -1L);
        if (!matchesCurrentBuild(reportedVersion)) {
            return;
        }
        SharedPreferences.Editor editor = moduleContext
                .getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)
                .edit()
                .putLong(KEY_INJECTED_VERSION, reportedVersion);
        if (extras != null && extras.containsKey(EXTRA_PORTAL_ROOT_GRANTED)) {
            editor.putLong(KEY_PORTAL_ROOT_VERSION, reportedVersion)
                    .putBoolean(
                            KEY_PORTAL_ROOT_GRANTED,
                            extras.getBoolean(EXTRA_PORTAL_ROOT_GRANTED));
        }
        editor.apply();
    }

    static boolean isCurrentBuildInjected(Context context) {
        if (context == null) {
            return false;
        }
        SharedPreferences preferences = context.getSharedPreferences(
                PREFS_NAME,
                Context.MODE_PRIVATE);
        return matchesCurrentBuild(preferences.getLong(KEY_INJECTED_VERSION, -1L));
    }

    static boolean isCurrentBuildPortalRootGranted(Context context) {
        if (context == null) {
            return false;
        }
        SharedPreferences preferences = context.getSharedPreferences(
                PREFS_NAME,
                Context.MODE_PRIVATE);
        return matchesCurrentBuild(preferences.getLong(KEY_PORTAL_ROOT_VERSION, -1L))
                && preferences.getBoolean(KEY_PORTAL_ROOT_GRANTED, false);
    }

    static boolean hasRootAccess() {
        return runRootCommand("id -u");
    }

    static boolean requestPortalInjectionHandshake() {
        return runRootCommand(PORTAL_SERVICE_COMMAND);
    }

    static String portalHandshakeCommand() {
        return PORTAL_SERVICE_COMMAND;
    }

    static boolean openPortalBlacklistSettings() {
        return runRootCommand(portalBlacklistCommand());
    }

    static String portalBlacklistCommand() {
        return PORTAL_BLACKLIST_ACTIVITY_COMMAND;
    }

    private static boolean runRootCommand(String command) {
        java.lang.Process process = null;
        try {
            process = new ProcessBuilder("su", "-c", command)
                    .redirectErrorStream(true)
                    .start();
            if (!process.waitFor(ROOT_TIMEOUT_SECONDS, TimeUnit.SECONDS)) {
                process.destroyForcibly();
                return false;
            }
            return process.exitValue() == 0;
        } catch (IOException | InterruptedException ignored) {
            if (ignored instanceof InterruptedException) {
                Thread.currentThread().interrupt();
            }
            return false;
        } finally {
            if (process != null) {
                try {
                    process.getInputStream().close();
                } catch (IOException ignored) {
                    
                }
                try {
                    process.getOutputStream().close();
                } catch (IOException ignored) {
                    
                }
                process.destroy();
            }
        }
    }

    static boolean matchesCurrentBuild(long reportedVersion) {
        return reportedVersion == com.hyper.onestep.BuildConfig.VERSION_CODE;
    }
}
