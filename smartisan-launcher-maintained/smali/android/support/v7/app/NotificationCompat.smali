.class public Landroid/support/v7/app/NotificationCompat;
.super Landroid/support/v4/app/NotificationCompat;
.source "NotificationCompat.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/NotificationCompat$MediaStyle;,
        Landroid/support/v7/app/NotificationCompat$LollipopExtender;,
        Landroid/support/v7/app/NotificationCompat$JellybeanExtender;,
        Landroid/support/v7/app/NotificationCompat$IceCreamSandwichExtender;,
        Landroid/support/v7/app/NotificationCompat$Builder;
    }
.end annotation


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat;-><init>()V

    .line 223
    return-void
.end method

.method static addBigMediaStyleToBuilderJellybean(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 18
    .param p0, "n"    # Landroid/app/Notification;
    .param p1, "b"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 95
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    instance-of v3, v3, Landroid/support/v7/app/NotificationCompat$MediaStyle;

    if-eqz v3, :cond_1

    .line 96
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    move-object/from16 v17, v0

    check-cast v17, Landroid/support/v7/app/NotificationCompat$MediaStyle;

    .line 97
    .local v17, "mediaStyle":Landroid/support/v7/app/NotificationCompat$MediaStyle;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-boolean v11, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget-wide v12, v3, Landroid/app/Notification;->when:J

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    iget-boolean v15, v0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mShowCancelButton:Z

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mCancelButtonIntent:Landroid/app/PendingIntent;

    move-object/from16 v16, v0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v16}, Landroid/support/v7/app/NotificationCompatImplBase;->overrideBigContentView(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJLjava/util/List;ZLandroid/app/PendingIntent;)V

    .line 102
    invoke-static/range {p0 .. p0}, Landroid/support/v7/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v2

    .line 103
    .local v2, "extras":Landroid/os/Bundle;
    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v3, :cond_0

    .line 104
    const-string v4, "android.mediaSession"

    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 105
    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 104
    invoke-static {v2, v4, v3}, Landroid/support/v4/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 107
    :cond_0
    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    if-eqz v3, :cond_1

    .line 108
    const-string v3, "android.compactActions"

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 111
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v17    # "mediaStyle":Landroid/support/v7/app/NotificationCompat$MediaStyle;
    :cond_1
    return-void
.end method

.method static addMediaStyleToBuilderIcs(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 18
    .param p0, "builder"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
    .param p1, "b"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 82
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    instance-of v3, v3, Landroid/support/v7/app/NotificationCompat$MediaStyle;

    if-eqz v3, :cond_0

    .line 83
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    check-cast v2, Landroid/support/v7/app/NotificationCompat$MediaStyle;

    .line 84
    .local v2, "mediaStyle":Landroid/support/v7/app/NotificationCompat$MediaStyle;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-boolean v11, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget-wide v12, v3, Landroid/app/Notification;->when:J

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    iget-object v15, v2, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    iget-boolean v0, v2, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mShowCancelButton:Z

    move/from16 v16, v0

    iget-object v0, v2, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mCancelButtonIntent:Landroid/app/PendingIntent;

    move-object/from16 v17, v0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v17}, Landroid/support/v7/app/NotificationCompatImplBase;->overrideContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJLjava/util/List;[IZLandroid/app/PendingIntent;)V

    .line 91
    .end local v2    # "mediaStyle":Landroid/support/v7/app/NotificationCompat$MediaStyle;
    :cond_0
    return-void
.end method

.method static addMediaStyleToBuilderLollipop(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Style;)V
    .locals 3
    .param p0, "builder"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
    .param p1, "style"    # Landroid/support/v4/app/NotificationCompat$Style;

    .prologue
    .line 72
    instance-of v1, p1, Landroid/support/v7/app/NotificationCompat$MediaStyle;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 73
    check-cast v0, Landroid/support/v7/app/NotificationCompat$MediaStyle;

    .line 74
    .local v0, "mediaStyle":Landroid/support/v7/app/NotificationCompat$MediaStyle;
    iget-object v2, v0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    iget-object v1, v0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 76
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v1

    .line 74
    :goto_0
    invoke-static {p0, v2, v1}, Landroid/support/v7/app/NotificationCompatImpl21;->addMediaStyle(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;[ILjava/lang/Object;)V

    .line 78
    .end local v0    # "mediaStyle":Landroid/support/v7/app/NotificationCompat$MediaStyle;
    :cond_0
    return-void

    .line 76
    .restart local v0    # "mediaStyle":Landroid/support/v7/app/NotificationCompat$MediaStyle;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getMediaSession(Landroid/app/Notification;)Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 6
    .param p0, "notification"    # Landroid/app/Notification;

    .prologue
    .line 46
    invoke-static {p0}, Landroid/support/v7/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    .line 47
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 48
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    .line 49
    const-string v4, "android.mediaSession"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 50
    .local v3, "tokenInner":Landroid/os/Parcelable;
    if-eqz v3, :cond_1

    .line 51
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->fromToken(Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v2

    .line 66
    .end local v3    # "tokenInner":Landroid/os/Parcelable;
    :goto_0
    return-object v2

    .line 54
    :cond_0
    const-string v4, "android.mediaSession"

    invoke-static {v0, v4}, Landroid/support/v4/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 55
    .local v3, "tokenInner":Landroid/os/IBinder;
    if-eqz v3, :cond_1

    .line 56
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 57
    .local v1, "p":Landroid/os/Parcel;
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 58
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    sget-object v4, Landroid/support/v4/media/session/MediaSessionCompat$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 60
    invoke-interface {v4, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 61
    .local v2, "token":Landroid/support/v4/media/session/MediaSessionCompat$Token;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 66
    .end local v1    # "p":Landroid/os/Parcel;
    .end local v2    # "token":Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .end local v3    # "tokenInner":Landroid/os/IBinder;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
