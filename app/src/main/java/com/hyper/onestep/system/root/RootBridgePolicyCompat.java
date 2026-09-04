package com.hyper.onestep.system.root;

public final class RootBridgePolicyCompat {
    private static final int ANDROID_11_API = 30;

    private RootBridgePolicyCompat() {
    }

    public static boolean shouldApplyLivePolicy(int sdkInt) {
        return sdkInt != ANDROID_11_API;
    }

    
    public static String buildLivePolicyCommand() {
        
        String[] rules = {
                "allow $policy_domain default_android_service service_manager add",
                "allow untrusted_app default_android_service service_manager find",
                "allow priv_app default_android_service service_manager find",
                "allow untrusted_app $policy_domain binder { call transfer }",
                "allow $policy_domain untrusted_app binder { call transfer }",
                "allow untrusted_app $policy_domain unix_stream_socket connectto",
                "allow $policy_domain untrusted_app fd use",
                "allow priv_app $policy_domain binder { call transfer }",
                "allow $policy_domain priv_app binder { call transfer }",
                "allow priv_app $policy_domain unix_stream_socket connectto",
                "allow $policy_domain priv_app fd use",
                "allow $policy_domain surfaceflinger_service service_manager find",
                "allow $policy_domain surfaceflinger binder { call transfer }",
                "allow surfaceflinger $policy_domain binder transfer",
        };
        StringBuilder magiskArgs = new StringBuilder();
        StringBuilder ksudRules = new StringBuilder();
        for (String rule : rules) {
            magiskArgs.append(shellDoubleQuote(rule)).append(' ');
            
            ksudRules.append(shellDoubleQuote(rule)).append(' ');
        }
        return "root_context=$(id -Z 2>/dev/null); "
                + "root_domain=${root_context#u:r:}; root_domain=${root_domain%%:*}; "
                + "case \"$root_domain\" in ''|*[!a-zA-Z0-9_]*) policy_domain= ;; "
                + "*) policy_domain=$root_domain ;; esac; "
                + "if [ -n \"$policy_domain\" ] "
                + "&& command -v magiskpolicy >/dev/null 2>&1; then "
                + "magiskpolicy --live " + magiskArgs
                + ">/dev/null 2>&1 || true; "
                + "elif [ -n \"$policy_domain\" ]; then "
                + "ksud_bin=$(command -v ksud 2>/dev/null); "
                + "[ -n \"$ksud_bin\" ] || ksud_bin=/data/adb/ksu/bin/ksud; "
                + "[ -x \"$ksud_bin\" ] || ksud_bin=/data/adb/ksud; "
                + "if [ -x \"$ksud_bin\" ]; then "
                + "for policy_rule in " + ksudRules + "; do "
                + "\"$ksud_bin\" sepolicy patch \"$policy_rule\" "
                + ">/dev/null 2>&1 || true; done; fi; "
                + "fi; ";
    }

    
    private static String shellDoubleQuote(String value) {
        return "\"" + value
                .replace("\\", "\\\\")
                .replace("\"", "\\\"")
                .replace("`", "\\`") + "\"";
    }
}
