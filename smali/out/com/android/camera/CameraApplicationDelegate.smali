.class public Lcom/android/camera/CameraApplicationDelegate;
.super Lmiui/external/ApplicationDelegate;
.source "CameraApplicationDelegate.java"


# static fields
.field private static appChannel:Ljava/lang/String;

.field private static appID:Ljava/lang/String;

.field private static appKey:Ljava/lang/String;

.field private static sContext:Lcom/android/camera/CameraAppImpl;


# instance fields
.field private mActivities:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mRestoreSetting:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "2882303761517373386"

    sput-object v0, Lcom/android/camera/CameraApplicationDelegate;->appID:Ljava/lang/String;

    const-string/jumbo v0, "5641737344386"

    sput-object v0, Lcom/android/camera/CameraApplicationDelegate;->appKey:Ljava/lang/String;

    const-string/jumbo v0, "ro.product.mod_device"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraApplicationDelegate;->appChannel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraAppImpl;)V
    .registers 3

    invoke-direct {p0}, Lmiui/external/ApplicationDelegate;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mRestoreSetting:Z

    sput-object p1, Lcom/android/camera/CameraApplicationDelegate;->sContext:Lcom/android/camera/CameraAppImpl;

    return-void
.end method

.method public static getAndroidContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/android/camera/CameraApplicationDelegate;->sContext:Lcom/android/camera/CameraAppImpl;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addActivity(Landroid/app/Activity;)V
    .registers 3

    monitor-enter p0

    if-nez p1, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized closeAllActivitiesBut(Landroid/app/Activity;)V
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    :try_start_4
    invoke-virtual {p0}, Lcom/android/camera/CameraApplicationDelegate;->getActivityCount()I

    move-result v3

    if-ge v2, v3, :cond_1e

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraApplicationDelegate;->getActivity(I)Landroid/app/Activity;

    move-result-object v0

    if-eq v0, p1, :cond_1b

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v3, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_20

    :goto_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getActivity(I)Landroid/app/Activity;
    .registers 3

    monitor-enter p0

    if-ltz p1, :cond_9

    :try_start_3
    invoke-virtual {p0}, Lcom/android/camera/CameraApplicationDelegate;->getActivityCount()I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_16

    move-result v0

    if-lt p1, v0, :cond_c

    :cond_9
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getActivityCount()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSettingsFlag()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mRestoreSetting:Z

    return v0
.end method

.method public onCreate()V
    .registers 6

    const/4 v4, 0x1

    invoke-super {p0}, Lmiui/external/ApplicationDelegate;->onCreate()V

    invoke-static {p0}, Lcom/android/camera/Util;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/camera/CameraApplicationDelegate;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraApplicationDelegate;->appID:Ljava/lang/String;

    sget-object v2, Lcom/android/camera/CameraApplicationDelegate;->appKey:Ljava/lang/String;

    sget-object v3, Lcom/android/camera/CameraApplicationDelegate;->appChannel:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->setUseSystemUploadingService(Z)V

    const/4 v0, 0x4

    const-wide/32 v2, 0x2bf20

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->setUploadPolicy(IJ)V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    iput-boolean v4, p0, Lcom/android/camera/CameraApplicationDelegate;->mRestoreSetting:Z

    return-void
.end method

.method public declared-synchronized removeActivity(Landroid/app/Activity;)V
    .registers 3

    monitor-enter p0

    if-nez p1, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetRestoreFlag()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mRestoreSetting:Z

    return-void
.end method
