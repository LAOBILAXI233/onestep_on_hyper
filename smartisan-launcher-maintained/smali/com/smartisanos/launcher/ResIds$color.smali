.class public Lcom/smartisanos/launcher/ResIds$color;
.super Ljava/lang/Object;
.source "ResIds.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/ResIds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "color"
.end annotation


.field public static def_apps_shadow_color:I

.field public static def_apps_text_color:I

.field public static page_title_text_color:I

.field public static page_title_text_shadow_color:I

.field public static theme_name_in_dot_normal:I

.field public static theme_name_in_dot_selected:I

.field public static theme_name_in_dot_used:I

.field public static transparent:I


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    const v0, 0x106000d

    sput v0, Lcom/smartisanos/launcher/ResIds$color;->transparent:I

    .line 135
    const v0, 0x7f0e0037

    sput v0, Lcom/smartisanos/launcher/ResIds$color;->def_apps_text_color:I

    .line 136
    const v0, 0x7f0e0036

    sput v0, Lcom/smartisanos/launcher/ResIds$color;->def_apps_shadow_color:I

    .line 137
    const v0, 0x7f0e006d

    sput v0, Lcom/smartisanos/launcher/ResIds$color;->page_title_text_color:I

    .line 138
    const v0, 0x7f0e006e

    sput v0, Lcom/smartisanos/launcher/ResIds$color;->page_title_text_shadow_color:I

    .line 140
    const v0, 0x7f0e00ab

    sput v0, Lcom/smartisanos/launcher/ResIds$color;->theme_name_in_dot_normal:I

    .line 141
    const v0, 0x7f0e00ad

    sput v0, Lcom/smartisanos/launcher/ResIds$color;->theme_name_in_dot_used:I

    .line 142
    const v0, 0x7f0e00ac

    sput v0, Lcom/smartisanos/launcher/ResIds$color;->theme_name_in_dot_selected:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
