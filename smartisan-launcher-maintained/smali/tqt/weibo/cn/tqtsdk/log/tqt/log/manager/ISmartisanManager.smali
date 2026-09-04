.class public interface abstract Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ISmartisanManager;
.super Ljava/lang/Object;
.source "ISmartisanManager.java"


.field public static final INIT_BOOLEAN_AUTO_UPDATE_ACTIVATE:Ljava/lang/String; = "INIT_BOOLEAN_AUTO_UPDATE_ACTIVATE"

.field public static final INIT_BOOLEAN_USING_4X1:Ljava/lang/String; = "INIT_BOOLEAN_USING_4X1"

.field public static final INIT_BOOLEAN_USING_4X2:Ljava/lang/String; = "INIT_BOOLEAN_USING_4X2"

.field public static final INIT_BOOLEAN_USING_5X1:Ljava/lang/String; = "INIT_BOOLEAN_USING_5X1"

.field public static final INIT_BOOLEAN_USING_5X2:Ljava/lang/String; = "INIT_BOOLEAN_USING_5X2"

.field public static final INIT_BOOLEAN_WEATHER_NOTIFICATION_ACTIVATE:Ljava/lang/String; = "INIT_BOOLEAN_WEATHER_NOTIFICATION_ACTIVATE"

.field public static final INIT_KEY:Ljava/lang/String; = "INIT_KEY"

.field public static final INIT_LONG_TIMES_APP_START:Ljava/lang/String; = "INIT_LONG_TIMES_APP_START"

.field public static final INIT_LONG_TIMES_HOMEPAGE_MANUAL_REFRESH:Ljava/lang/String; = "INIT_LONG_TIMES_HOMEPAGE_MANUAL_REFRESH"

.field public static final INIT_STRING_ARRAY_ALL_CITY_CODES:Ljava/lang/String; = "INIT_STRING_ARRAY_ALL_CITY_CODES"

.field public static final INIT_STRING_CURRENT_USING_4X1_WIDGET:Ljava/lang/String; = "INIT_STRING_CURRENT_USING_4X1_WIDGET"

.field public static final INIT_STRING_CURRENT_USING_4X2_WIDGET:Ljava/lang/String; = "INIT_STRING_CURRENT_USING_4X2_WIDGET"

.field public static final INIT_STRING_CURRENT_USING_5X1_WIDGET:Ljava/lang/String; = "INIT_STRING_CURRENT_USING_5X1_WIDGET"

.field public static final INIT_STRING_CURRENT_USING_5X2_WIDGET:Ljava/lang/String; = "INIT_STRING_CURRENT_USING_5X2_WIDGET"

.field public static final INIT_STRING_LOCATE_CITYCOD:Ljava/lang/String; = "INIT_STRING_LOCATE_CITYCOD"

.field public static final INIT_STRING_NOTIFICATION_CITY:Ljava/lang/String; = "INIT_STRING_NOTIFICATION_CITY"

.field public static final INIT_STRING_WIDGET_CITYCODE:Ljava/lang/String; = "INIT_STRING_WIDGET_CITYCODE"

.field public static final SINA_INT_APP_BROUGHT_TO_FRONT:Ljava/lang/String; = "SINA_INT_APP_BROUGHT_TO_FRONT"

.field public static final SINA_INT_APP_ICON_INTO_TQT:Ljava/lang/String; = "SINA_INT_APP_ICON_INTO_TQT"

.field public static final SINA_INT_INTO_CITY_MANAGER_BY_CLICK:Ljava/lang/String; = "SINA_INT_INTO_CITY_MANAGER_BY_CLICK"

.field public static final SINA_INT_NOTIFICATION_INTO_TQT:Ljava/lang/String; = "SINA_INT_NOTIFICATION_INTO_TQT"

.field public static final SINA_INT_NOTIFICATION_SHOWN:Ljava/lang/String; = "SINA_INT_NOTIFICATION_SHOWN"

.field public static final SINA_INT_REFRESH_MANUALLY:Ljava/lang/String; = "SINA_INT_REFRESH_MANUALLY"

.field public static final SINA_INT_SWITCH_CITY:Ljava/lang/String; = "SINA_INT_SWITCH_CITY"

.field public static final SINA_STAT_KEY:Ljava/lang/String; = "SINA_STAT_KEY"

.field public static final TQT_INT_APP_BROUGHT_TO_FRONT:Ljava/lang/String; = "TQT_INT_APP_BROUGHT_TO_FRONT"

.field public static final TQT_INT_APP_ICON_INTO_TQT:Ljava/lang/String; = "TQT_INT_APP_ICON_INTO_TQT"

.field public static final TQT_INT_INTO_CITY_MANAGER_BY_CLICK:Ljava/lang/String; = "TQT_INT_INTO_CITY_MANAGER_BY_CLICK"

.field public static final TQT_INT_NOTIFICATION_INTO_TQT:Ljava/lang/String; = "TQT_INT_NOTIFICATION_INTO_TQT"

.field public static final TQT_INT_NOTIFICATION_SHOWN:Ljava/lang/String; = "TQT_INT_NOTIFICATION_SHOWN"

.field public static final TQT_INT_REFRESH_MANUALLY:Ljava/lang/String; = "TQT_INT_REFRESH_MANUALLY"

.field public static final TQT_INT_SWITCH_CITY:Ljava/lang/String; = "TQT_INT_SWITCH_CITY"

.field public static final TQT_STAT_KEY_:Ljava/lang/String; = "TQT_STAT_KEY_"

.field public static final VERSION:J = 0x5L

.field public static final WB_INT_APP_BROUGHT_TO_FRONT:Ljava/lang/String; = "WB_INT_APP_BROUGHT_TO_FRONT"

.field public static final WB_INT_APP_ICON_INTO_TQT:Ljava/lang/String; = "WB_INT_APP_ICON_INTO_TQT"

.field public static final WB_INT_INTO_CITY_MANAGER_BY_CLICK:Ljava/lang/String; = "WB_INT_INTO_CITY_MANAGER_BY_CLICK"

.field public static final WB_INT_NOTIFICATION_INTO_TQT:Ljava/lang/String; = "WB_INT_NOTIFICATION_INTO_TQT"

.field public static final WB_INT_NOTIFICATION_SHOWN:Ljava/lang/String; = "WB_INT_NOTIFICATION_SHOWN"

.field public static final WB_INT_REFRESH_MANUALLY:Ljava/lang/String; = "WB_INT_REFRESH_MANUALLY"

.field public static final WB_INT_SWITCH_CITY:Ljava/lang/String; = "WB_INT_SWITCH_CITY"

.field public static final WB_STAT_KEY:Ljava/lang/String; = "WB_STAT_KEY"


.method public abstract autoRefreshKpStat()V
.end method

.method public abstract enterMainKpStat()V
.end method

.method public abstract exitSinaStat()V
.end method

.method public abstract init(Landroid/os/Bundle;)V
.end method

.method public abstract initSinaStat()V
.end method

.method public abstract initTqtStat()V
.end method

.method public abstract initWbStat()V
.end method

.method public abstract launchByAbnormalNotiKpStat()V
.end method

.method public abstract launchByAdvanceWarningNotiKpStat()V
.end method

.method public abstract launchByAlarmKpStat()V
.end method

.method public abstract launchByOperationNotiKpStat()V
.end method

.method public abstract launchBySolarTermsNotiKpStat()V
.end method

.method public abstract launchBySubwayNotiKpStat()V
.end method

.method public abstract launchByWeatherNotiKpStat()V
.end method

.method public abstract launchByWidgetKpStat()V
.end method

.method public abstract onDestroyActivityWbStat(Landroid/content/Context;)V
.end method

.method public abstract onPauseActivityWbStat(Landroid/content/Context;)V
.end method

.method public abstract onResumeActivityWbStat(Landroid/content/Context;)V
.end method

.method public abstract sendSinaStat()V
.end method

.method public abstract sendTqtStat()V
.end method

.method public abstract sendWbStat()V
.end method

.method public abstract someSinaStat(Landroid/os/Bundle;)V
.end method

.method public abstract someTqtStat(Landroid/os/Bundle;)V
.end method

.method public abstract someWbStat(Landroid/os/Bundle;)V
.end method

.method public abstract userRefreshKpStat()V
.end method

.method public abstract usingWeatherNotiKpStat()V
.end method

.method public abstract usingWidgetKpStat()V
.end method
