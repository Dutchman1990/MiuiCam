.class public Lcom/android/camera/MutexModeManager;
.super Ljava/lang/Object;
.source "MutexModeManager.java"


# instance fields
.field private mCurrentMutexMode:I

.field private mLastMutexMode:I

.field private mRunnableMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    iput v0, p0, Lcom/android/camera/MutexModeManager;->mLastMutexMode:I

    iput-object p1, p0, Lcom/android/camera/MutexModeManager;->mRunnableMap:Ljava/util/HashMap;

    return-void
.end method

.method private enter(I)V
    .registers 6

    iput p1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-eqz p1, :cond_24

    iget-object v2, p0, Lcom/android/camera/MutexModeManager;->mRunnableMap:Ljava/util/HashMap;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/camera/MutexModeManager;->mRunnableMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_24

    const-string/jumbo v2, "enter"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_24

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_24
    return-void
.end method

.method private exit(I)V
    .registers 6

    const/4 v3, 0x0

    iget v2, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    iput v2, p0, Lcom/android/camera/MutexModeManager;->mLastMutexMode:I

    iput v3, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-eqz p1, :cond_29

    iget-object v2, p0, Lcom/android/camera/MutexModeManager;->mRunnableMap:Ljava/util/HashMap;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/android/camera/MutexModeManager;->mRunnableMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_29

    const-string/jumbo v2, "exit"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_29

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_29
    return-void
.end method

.method public static getMutexModeName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1c

    :pswitch_3
    const-string/jumbo v0, "none"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "hdr"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "aohdr"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "hand-night"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "raw"

    return-object v0

    :pswitch_17
    const-string/jumbo v0, "burst-shoot"

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_3
        :pswitch_3
        :pswitch_17
    .end packed-switch
.end method

.method private switchMutexMode(II)V
    .registers 3

    if-eq p1, p2, :cond_8

    invoke-direct {p0, p1}, Lcom/android/camera/MutexModeManager;->exit(I)V

    invoke-direct {p0, p2}, Lcom/android/camera/MutexModeManager;->enter(I)V

    :cond_8
    return-void
.end method


# virtual methods
.method public getLastMutexMode()I
    .registers 2

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mLastMutexMode:I

    return v0
.end method

.method public getMutexMode()I
    .registers 2

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    return v0
.end method

.method public getSuffix()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    packed-switch v0, :pswitch_data_1a

    const-string/jumbo v0, ""

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "_AO_HDR"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "_HDR"

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "_HHT"

    return-object v0

    :pswitch_15
    const-string/jumbo v0, "_RAW"

    return-object v0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_d
        :pswitch_9
        :pswitch_11
        :pswitch_15
        :pswitch_d
    .end packed-switch
.end method

.method public isAoHdr()Z
    .registers 3

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isBurstShoot()Z
    .registers 3

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isHandNight()Z
    .registers 3

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isHdr()Z
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-ne v1, v0, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_a

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isMorphoHdr()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isNeedComposed()Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-eqz v1, :cond_10

    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_10

    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public isNormal()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-nez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public isRAW()Z
    .registers 3

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isSceneHdr()Z
    .registers 3

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isSupportedFlashOn()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-eqz v2, :cond_b

    iget v2, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    move v0, v1

    goto :goto_b
.end method

.method public isSupportedTorch()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedTorchCapture()Z

    move-result v2

    if-eqz v2, :cond_19

    iget v2, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-eqz v2, :cond_11

    iget v2, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    iget v2, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_11

    move v0, v1

    goto :goto_11

    :cond_19
    move v0, v1

    goto :goto_11
.end method

.method public isUbiFocus()Z
    .registers 3

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public resetMutexMode()V
    .registers 3

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/MutexModeManager;->switchMutexMode(II)V

    return-void
.end method

.method public resetMutexModeDummy()V
    .registers 2

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    iput v0, p0, Lcom/android/camera/MutexModeManager;->mLastMutexMode:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    return-void
.end method

.method public setMutexMode(I)V
    .registers 3

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    invoke-direct {p0, v0, p1}, Lcom/android/camera/MutexModeManager;->switchMutexMode(II)V

    return-void
.end method
