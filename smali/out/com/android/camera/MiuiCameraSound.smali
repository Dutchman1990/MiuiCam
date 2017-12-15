.class public Lcom/android/camera/MiuiCameraSound;
.super Ljava/lang/Object;
.source "MiuiCameraSound.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/MiuiCameraSound$1;
    }
.end annotation


# static fields
.field private static final SOUND_FILES:[Ljava/lang/String;


# instance fields
.field private final mAssetManager:Landroid/content/res/AssetManager;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mLastPlayTime:J

.field private mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

.field private mSoundIdToPlay:I

.field private mSoundIds:[I

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method static synthetic -get0(Lcom/android/camera/MiuiCameraSound;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIdToPlay:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/camera/MiuiCameraSound;I)I
    .registers 2

    iput p1, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIdToPlay:I

    return p1
.end method

.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "camera_click.ogg"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "/system/media/audio/ui/camera_focus.ogg"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "video_record_start.ogg"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "video_record_end.ogg"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "camera_fast_burst.ogg"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "sound_shuter_delay_bee.ogg"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "/system/media/audio/ui/NumberPickerValueChange.ogg"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "audio_capture.ogg"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/camera/MiuiCameraSound;->SOUND_FILES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    const/4 v2, 0x1

    const/4 v6, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/camera/MiuiCameraSound;->mLastPlayTime:J

    new-instance v1, Lcom/android/camera/MiuiCameraSound$1;

    invoke-direct {v1, p0}, Lcom/android/camera/MiuiCameraSound$1;-><init>(Lcom/android/camera/MiuiCameraSound;)V

    iput-object v1, p0, Lcom/android/camera/MiuiCameraSound;->mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    const-string/jumbo v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/camera/MiuiCameraSound;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/MiuiCameraSound;->mAssetManager:Landroid/content/res/AssetManager;

    new-instance v3, Landroid/media/SoundPool;

    invoke-static {}, Lcom/android/camera/Device;->isSupportedMuteCameraSound()Z

    move-result v1

    if-eqz v1, :cond_4b

    move v1, v2

    :goto_2a
    const/4 v4, 0x0

    invoke-direct {v3, v2, v1, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v3, p0, Lcom/android/camera/MiuiCameraSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/camera/MiuiCameraSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/camera/MiuiCameraSound;->mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    sget-object v1, Lcom/android/camera/MiuiCameraSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIds:[I

    const/4 v0, 0x0

    :goto_3f
    iget-object v1, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4d

    iget-object v1, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIds:[I

    aput v6, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    :cond_4b
    const/4 v1, 0x7

    goto :goto_2a

    :cond_4d
    iput v6, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIdToPlay:I

    return-void
.end method

.method private loadFromAsset(I)I
    .registers 8

    const/4 v2, -0x1

    const/4 v0, 0x0

    :try_start_2
    iget-object v3, p0, Lcom/android/camera/MiuiCameraSound;->mAssetManager:Landroid/content/res/AssetManager;

    sget-object v4, Lcom/android/camera/MiuiCameraSound;->SOUND_FILES:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/MiuiCameraSound;->mSoundPool:Landroid/media/SoundPool;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_12} :catch_27
    .catchall {:try_start_2 .. :try_end_12} :catchall_3f

    move-result v2

    if-eqz v0, :cond_18

    :try_start_15
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_19

    :cond_18
    :goto_18
    return v2

    :catch_19
    move-exception v1

    const-string/jumbo v3, "MiuiCameraSound"

    const-string/jumbo v4, "IOException occurs when closing Camera Sound AssetFileDescriptor."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18

    :catch_27
    move-exception v1

    :try_start_28
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_3f

    if-eqz v0, :cond_18

    :try_start_2d
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_18

    :catch_31
    move-exception v1

    const-string/jumbo v3, "MiuiCameraSound"

    const-string/jumbo v4, "IOException occurs when closing Camera Sound AssetFileDescriptor."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18

    :catchall_3f
    move-exception v3

    if-eqz v0, :cond_45

    :try_start_42
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    :cond_45
    :goto_45
    throw v3

    :catch_46
    move-exception v1

    const-string/jumbo v4, "MiuiCameraSound"

    const-string/jumbo v5, "IOException occurs when closing Camera Sound AssetFileDescriptor."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_45
.end method

.method private declared-synchronized play(II)V
    .registers 10

    const/4 v2, 0x1

    monitor-enter p0

    if-ltz p1, :cond_9

    :try_start_4
    sget-object v0, Lcom/android/camera/MiuiCameraSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_26

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown sound requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_23

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIds:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4e

    const/4 v0, 0x6

    if-eq p1, v0, :cond_40

    if-eq p1, v2, :cond_40

    invoke-direct {p0, p1}, Lcom/android/camera/MiuiCameraSound;->loadFromAsset(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIdToPlay:I

    :goto_38
    iget-object v0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIds:[I

    iget v1, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIdToPlay:I

    aput v1, v0, p1
    :try_end_3e
    .catchall {:try_start_26 .. :try_end_3e} :catchall_23

    :goto_3e
    monitor-exit p0

    return-void

    :cond_40
    :try_start_40
    iget-object v0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundPool:Landroid/media/SoundPool;

    sget-object v1, Lcom/android/camera/MiuiCameraSound;->SOUND_FILES:[Ljava/lang/String;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIdToPlay:I

    goto :goto_38

    :cond_4e
    iget-object v0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIds:[I

    aget v1, v1, p1

    add-int/lit8 v5, p2, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/MiuiCameraSound;->mLastPlayTime:J
    :try_end_66
    .catchall {:try_start_40 .. :try_end_66} :catchall_23

    goto :goto_3e
.end method


# virtual methods
.method public getLastSoundPlayTime()J
    .registers 3

    iget-wide v0, p0, Lcom/android/camera/MiuiCameraSound;->mLastPlayTime:J

    return-wide v0
.end method

.method public declared-synchronized load(I)V
    .registers 6

    const/4 v2, 0x1

    monitor-enter p0

    if-ltz p1, :cond_9

    :try_start_4
    sget-object v0, Lcom/android/camera/MiuiCameraSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_26

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown sound requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_23

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIds:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3a

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3c

    if-eq p1, v2, :cond_3c

    iget-object v0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIds:[I

    invoke-direct {p0, p1}, Lcom/android/camera/MiuiCameraSound;->loadFromAsset(I)I

    move-result v1

    aput v1, v0, p1
    :try_end_3a
    .catchall {:try_start_26 .. :try_end_3a} :catchall_23

    :cond_3a
    :goto_3a
    monitor-exit p0

    return-void

    :cond_3c
    :try_start_3c
    iget-object v0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundIds:[I

    iget-object v1, p0, Lcom/android/camera/MiuiCameraSound;->mSoundPool:Landroid/media/SoundPool;

    sget-object v2, Lcom/android/camera/MiuiCameraSound;->SOUND_FILES:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, p1
    :try_end_4b
    .catchall {:try_start_3c .. :try_end_4b} :catchall_23

    goto :goto_3a
.end method

.method public playSound(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/MiuiCameraSound;->playSound(II)V

    return-void
.end method

.method public playSound(II)V
    .registers 5

    invoke-static {}, Lcom/android/camera/Device;->isSupportedMuteCameraSound()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/camera/MiuiCameraSound;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/android/camera/MiuiCameraSound;->play(II)V

    :cond_12
    return-void
.end method

.method public release()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/MiuiCameraSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    iput-object v1, p0, Lcom/android/camera/MiuiCameraSound;->mSoundPool:Landroid/media/SoundPool;

    :cond_c
    return-void
.end method
