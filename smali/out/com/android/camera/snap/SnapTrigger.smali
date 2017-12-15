.class public Lcom/android/camera/snap/SnapTrigger;
.super Ljava/lang/Object;
.source "SnapTrigger.java"

# interfaces
.implements Lcom/android/camera/snap/SnapCamera$SnapStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/snap/SnapTrigger$1;,
        Lcom/android/camera/snap/SnapTrigger$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/camera/snap/SnapTrigger;


# instance fields
.field private mBurstCount:I

.field private mCamera:Lcom/android/camera/snap/SnapCamera;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mLongPressRunnable:Ljava/lang/Runnable;

.field private mProximityLock:Lcom/android/camera/ProximitySensorLock;

.field private final mSnapRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/camera/snap/SnapTrigger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/snap/SnapTrigger;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/snap/SnapTrigger;->mBurstCount:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/camera/snap/SnapTrigger;)Lcom/android/camera/snap/SnapCamera;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mCamera:Lcom/android/camera/snap/SnapCamera;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/camera/snap/SnapTrigger;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/camera/snap/SnapTrigger;)Lcom/android/camera/ProximitySensorLock;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mProximityLock:Lcom/android/camera/ProximitySensorLock;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/camera/snap/SnapTrigger;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mSnapRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/snap/SnapTrigger;I)I
    .registers 2

    iput p1, p0, Lcom/android/camera/snap/SnapTrigger;->mBurstCount:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/snap/SnapTrigger;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/snap/SnapTrigger;->initCamera()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/camera/snap/SnapTrigger;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/snap/SnapTrigger;->shutdownWatchDog()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/camera/snap/SnapTrigger;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/camera/snap/SnapTrigger;->triggerWatchdog(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/camera/snap/SnapTrigger;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/snap/SnapTrigger;->vibratorShort()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/camera/snap/SnapTrigger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/snap/SnapTrigger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mCamera:Lcom/android/camera/snap/SnapCamera;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/snap/SnapTrigger;->mBurstCount:I

    new-instance v0, Lcom/android/camera/snap/SnapTrigger$1;

    invoke-direct {v0, p0}, Lcom/android/camera/snap/SnapTrigger$1;-><init>(Lcom/android/camera/snap/SnapTrigger;)V

    iput-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mSnapRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/camera/snap/SnapTrigger$2;

    invoke-direct {v0, p0}, Lcom/android/camera/snap/SnapTrigger$2;-><init>(Lcom/android/camera/snap/SnapTrigger;)V

    iput-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mLongPressRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static declared-synchronized destroy()V
    .registers 3

    const-class v1, Lcom/android/camera/snap/SnapTrigger;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/camera/snap/SnapTrigger;->sInstance:Lcom/android/camera/snap/SnapTrigger;

    if-eqz v0, :cond_30

    sget-object v0, Lcom/android/camera/snap/SnapTrigger;->sInstance:Lcom/android/camera/snap/SnapTrigger;

    invoke-direct {v0}, Lcom/android/camera/snap/SnapTrigger;->onDestroy()V

    sget-object v0, Lcom/android/camera/snap/SnapTrigger;->sInstance:Lcom/android/camera/snap/SnapTrigger;

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/camera/snap/SnapTrigger;->mBurstCount:I

    sget-object v0, Lcom/android/camera/snap/SnapTrigger;->sInstance:Lcom/android/camera/snap/SnapTrigger;

    iget-object v0, v0, Lcom/android/camera/snap/SnapTrigger;->mCamera:Lcom/android/camera/snap/SnapCamera;

    if-eqz v0, :cond_23

    sget-object v0, Lcom/android/camera/snap/SnapTrigger;->sInstance:Lcom/android/camera/snap/SnapTrigger;

    iget-object v0, v0, Lcom/android/camera/snap/SnapTrigger;->mCamera:Lcom/android/camera/snap/SnapCamera;

    invoke-virtual {v0}, Lcom/android/camera/snap/SnapCamera;->release()V

    sget-object v0, Lcom/android/camera/snap/SnapTrigger;->sInstance:Lcom/android/camera/snap/SnapTrigger;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/camera/snap/SnapTrigger;->mCamera:Lcom/android/camera/snap/SnapCamera;

    :cond_23
    sget-object v0, Lcom/android/camera/snap/SnapTrigger;->sInstance:Lcom/android/camera/snap/SnapTrigger;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/camera/snap/SnapTrigger;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/camera/snap/SnapTrigger;->sInstance:Lcom/android/camera/snap/SnapTrigger;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/camera/snap/SnapTrigger;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/snap/SnapTrigger;->sInstance:Lcom/android/camera/snap/SnapTrigger;
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_32

    :cond_30
    monitor-exit v1

    return-void

    :catchall_32
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance()Lcom/android/camera/snap/SnapTrigger;
    .registers 1

    sget-object v0, Lcom/android/camera/snap/SnapTrigger;->sInstance:Lcom/android/camera/snap/SnapTrigger;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/camera/snap/SnapTrigger;

    invoke-direct {v0}, Lcom/android/camera/snap/SnapTrigger;-><init>()V

    sput-object v0, Lcom/android/camera/snap/SnapTrigger;->sInstance:Lcom/android/camera/snap/SnapTrigger;

    :cond_b
    sget-object v0, Lcom/android/camera/snap/SnapTrigger;->sInstance:Lcom/android/camera/snap/SnapTrigger;

    return-object v0
.end method

.method private initCamera()V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mCamera:Lcom/android/camera/snap/SnapCamera;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/android/camera/snap/SnapCamera;

    iget-object v1, p0, Lcom/android/camera/snap/SnapTrigger;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/camera/snap/SnapCamera;-><init>(Landroid/content/Context;Lcom/android/camera/snap/SnapCamera$SnapStatusListener;)V

    iput-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mCamera:Lcom/android/camera/snap/SnapCamera;

    return-void
.end method

.method public static notifyForDetail(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_42

    const-string/jumbo v5, "video/*"

    :goto_10
    invoke-virtual {v1, p1, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "notification"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    new-instance v2, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const v5, 0x1080041

    invoke-direct {v2, v5, p2, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p0, v5, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, p0, p2, p3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget v5, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v2, Landroid/app/Notification;->flags:I

    iget-object v5, v2, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/MiuiNotification;->setMessageCount(I)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_41
    return-void

    :cond_42
    const-string/jumbo v5, "image/*"
    :try_end_45
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_45} :catch_46

    goto :goto_10

    :catch_46
    move-exception v0

    goto :goto_41
.end method

.method private onDestroy()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mProximityLock:Lcom/android/camera/ProximitySensorLock;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mProximityLock:Lcom/android/camera/ProximitySensorLock;

    invoke-virtual {v0}, Lcom/android/camera/ProximitySensorLock;->destroy()V

    :cond_a
    iput-object v1, p0, Lcom/android/camera/snap/SnapTrigger;->mProximityLock:Lcom/android/camera/ProximitySensorLock;

    return-void
.end method

.method private shutdownWatchDog()V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/android/camera/snap/SnapTrigger;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "watch dog Off"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_13
    return-void
.end method

.method private triggerWatchdog(Z)V
    .registers 7

    const/16 v4, 0x65

    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/android/camera/snap/SnapTrigger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "watch dog On -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/camera/snap/SnapTrigger;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2e

    const/4 v0, 0x0

    :goto_29
    int-to-long v2, v0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2d
    return-void

    :cond_2e
    const/16 v0, 0x1388

    goto :goto_29
.end method

.method private vibrator([J)V
    .registers 6

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/snap/SnapTrigger;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method private vibratorShort()V
    .registers 2

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_a

    invoke-direct {p0, v0}, Lcom/android/camera/snap/SnapTrigger;->vibrator([J)V

    return-void

    :array_a
    .array-data 8
        0xa
        0x14
    .end array-data
.end method


# virtual methods
.method public handleKeyEvent(IIJ)V
    .registers 11

    invoke-virtual {p0}, Lcom/android/camera/snap/SnapTrigger;->isRunning()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_30

    if-nez p2, :cond_1d

    iget-object v1, p0, Lcom/android/camera/snap/SnapTrigger;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/snap/SnapTrigger;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_19
    :goto_19
    invoke-direct {p0, v0}, Lcom/android/camera/snap/SnapTrigger;->triggerWatchdog(Z)V

    return-void

    :cond_1d
    const/4 v1, 0x1

    if-ne p2, v1, :cond_19

    iget-object v1, p0, Lcom/android/camera/snap/SnapTrigger;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/snap/SnapTrigger;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/camera/snap/SnapTrigger;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/snap/SnapTrigger;->mSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    goto :goto_19

    :cond_30
    const/16 v1, 0x1a

    if-ne p1, v1, :cond_19

    iget-object v1, p0, Lcom/android/camera/snap/SnapTrigger;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/snap/SnapTrigger;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/camera/snap/SnapTrigger;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/snap/SnapTrigger;->mSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    goto :goto_19
.end method

.method public declared-synchronized init(Landroid/content/Context;Landroid/os/Handler;)Z
    .registers 6

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/android/camera/snap/SnapTrigger;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/camera/snap/SnapTrigger;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/camera/ProximitySensorLock;->enabled()Z

    move-result v0

    if-eqz v0, :cond_34

    new-instance v0, Lcom/android/camera/ProximitySensorLock;

    iget-object v1, p0, Lcom/android/camera/snap/SnapTrigger;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/ProximitySensorLock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mProximityLock:Lcom/android/camera/ProximitySensorLock;

    sget-object v0, Lcom/android/camera/snap/SnapTrigger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "init, create a new instance -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/snap/SnapTrigger;->mProximityLock:Lcom/android/camera/ProximitySensorLock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mProximityLock:Lcom/android/camera/ProximitySensorLock;

    invoke-virtual {v0}, Lcom/android/camera/ProximitySensorLock;->startWatching()V

    :cond_34
    invoke-virtual {p0}, Lcom/android/camera/snap/SnapTrigger;->isRunning()Z
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_3a

    move-result v0

    monitor-exit p0

    return v0

    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRunning()Z
    .registers 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/android/camera/snap/SnapTrigger;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/camera/snap/SnapTrigger;->mHandler:Landroid/os/Handler;
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_d

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    monitor-exit p0

    return v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDone(Landroid/net/Uri;)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/camera/snap/SnapTrigger;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/snap/SnapTrigger;->triggerWatchdog(Z)V

    invoke-direct {p0}, Lcom/android/camera/snap/SnapTrigger;->vibratorShort()V

    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mCamera:Lcom/android/camera/snap/SnapCamera;

    invoke-virtual {v0}, Lcom/android/camera/snap/SnapCamera;->isCamcorder()Z

    move-result v0

    if-nez v0, :cond_25

    iget v0, p0, Lcom/android/camera/snap/SnapTrigger;->mBurstCount:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_25

    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/snap/SnapTrigger;->mSnapRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_25
    if-nez p1, :cond_28

    return-void

    :cond_28
    iget-object v0, p0, Lcom/android/camera/snap/SnapTrigger;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/camera/snap/SnapTrigger;->mContext:Landroid/content/Context;

    const v2, 0x7f0e01cd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/snap/SnapTrigger;->mContext:Landroid/content/Context;

    const v3, 0x7f0e01ce

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/snap/SnapTrigger;->mCamera:Lcom/android/camera/snap/SnapCamera;

    invoke-virtual {v3}, Lcom/android/camera/snap/SnapCamera;->isCamcorder()Z

    move-result v3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/camera/snap/SnapTrigger;->notifyForDetail(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
