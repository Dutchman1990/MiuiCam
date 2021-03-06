.class public Lcom/android/camera/Clapper;
.super Ljava/lang/Object;
.source "Clapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Clapper$ClapperListener;
    }
.end annotation


# static fields
.field public static final AMPLITUDE_ABSOLUTE_THRESHOLD:I

.field public static final AMPLITUDE_INIT:I

.field private static final DEFAULT_AMPLITUDE_DIFF:I

.field public static final SCALE_FACTOR:I


# instance fields
.field private mContinueRecording:Z

.field private mListener:Lcom/android/camera/Clapper$ClapperListener;

.field private mRecorder:Landroid/media/MediaRecorder;


# direct methods
.method static synthetic -wrap0(Lcom/android/camera/Clapper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/Clapper;->threadRecordClap()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/android/camera/Clapper;->getScaleFactor()I

    move-result v0

    sput v0, Lcom/android/camera/Clapper;->SCALE_FACTOR:I

    sget v0, Lcom/android/camera/Clapper;->SCALE_FACTOR:I

    mul-int/lit16 v0, v0, 0x7d0

    sput v0, Lcom/android/camera/Clapper;->AMPLITUDE_INIT:I

    sget v0, Lcom/android/camera/Clapper;->SCALE_FACTOR:I

    mul-int/lit16 v0, v0, 0x7d0

    sput v0, Lcom/android/camera/Clapper;->DEFAULT_AMPLITUDE_DIFF:I

    sget v0, Lcom/android/camera/Clapper;->SCALE_FACTOR:I

    mul-int/lit16 v0, v0, 0x1388

    sput v0, Lcom/android/camera/Clapper;->AMPLITUDE_ABSOLUTE_THRESHOLD:I

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Clapper$ClapperListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/Clapper;->mListener:Lcom/android/camera/Clapper$ClapperListener;

    return-void
.end method

.method public static getScaleFactor()I
    .registers 3

    const/4 v2, 0x1

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI2A:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/android/camera/Device;->IS_C3A:Z

    if-eqz v0, :cond_a

    :cond_9
    return v2

    :cond_a
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v0, :cond_20

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI5:Z

    if-nez v0, :cond_20

    sget-boolean v0, Lcom/android/camera/Device;->IS_A9:Z

    if-nez v0, :cond_20

    sget-boolean v0, Lcom/android/camera/Device;->IS_H2XLTE:Z

    if-eqz v0, :cond_22

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-gt v1, v0, :cond_22

    :cond_20
    const/4 v0, 0x6

    return v0

    :cond_22
    sget-boolean v0, Lcom/android/camera/Device;->IS_PAD1:Z

    if-eqz v0, :cond_27

    return v2

    :cond_27
    const/4 v0, 0x3

    return v0
.end method

.method private startRecorder()Z
    .registers 6

    const/4 v4, 0x1

    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v2, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    :try_start_8
    iget-object v2, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    iget-object v2, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v2, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "camera_claaper_recorder.3gp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V

    iget-object v2, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4b} :catch_4c

    return v4

    :catch_4c
    move-exception v0

    const-string/jumbo v2, "Clapper"

    const-string/jumbo v3, "Failed to start media recorder. Maybe it is used by other app."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    return v2
.end method

.method private threadRecordClap()V
    .registers 15

    sget v1, Lcom/android/camera/Clapper;->AMPLITUDE_INIT:I

    const/4 v5, 0x3

    :cond_3
    const-wide/16 v8, 0xc8

    :try_start_5
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_2c

    :goto_8
    iget-object v7, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v3

    if-le v3, v1, :cond_37

    int-to-double v8, v1

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v8, v10

    int-to-double v10, v3

    const-wide v12, 0x3fb9999999999998L    # 0.09999999999999998

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-int v1, v8

    :goto_20
    if-lez v5, :cond_48

    add-int/lit8 v5, v5, -0x1

    :cond_24
    :goto_24
    iget-boolean v7, p0, Lcom/android/camera/Clapper;->mContinueRecording:Z

    if-nez v7, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/Clapper;->stopRecorder()V

    return-void

    :catch_2c
    move-exception v2

    const-string/jumbo v7, "Clapper"

    const-string/jumbo v8, "Thread.sleep() interrupted"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_37
    int-to-double v8, v1

    const-wide v10, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v8, v10

    int-to-double v10, v3

    const-wide v12, 0x3fc9999999999998L    # 0.19999999999999996

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-int v1, v8

    goto :goto_20

    :cond_48
    sub-int v0, v3, v1

    sget v7, Lcom/android/camera/Clapper;->AMPLITUDE_INIT:I

    if-le v1, v7, :cond_75

    sget v7, Lcom/android/camera/Clapper;->DEFAULT_AMPLITUDE_DIFF:I

    int-to-double v8, v7

    int-to-double v10, v1

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    sget v7, Lcom/android/camera/Clapper;->AMPLITUDE_INIT:I

    int-to-double v12, v7

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    mul-double/2addr v8, v10

    double-to-int v6, v8

    :goto_5e
    iget-object v7, p0, Lcom/android/camera/Clapper;->mListener:Lcom/android/camera/Clapper$ClapperListener;

    if-eqz v7, :cond_24

    sget v7, Lcom/android/camera/Clapper;->AMPLITUDE_ABSOLUTE_THRESHOLD:I

    if-gt v3, v7, :cond_68

    if-lt v0, v6, :cond_78

    :cond_68
    iget-object v7, p0, Lcom/android/camera/Clapper;->mListener:Lcom/android/camera/Clapper$ClapperListener;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-interface {v7, v8}, Lcom/android/camera/Clapper$ClapperListener;->heard(F)V

    iget-object v7, p0, Lcom/android/camera/Clapper;->mListener:Lcom/android/camera/Clapper$ClapperListener;

    invoke-interface {v7}, Lcom/android/camera/Clapper$ClapperListener;->releaseShutter()V

    goto :goto_24

    :cond_75
    sget v6, Lcom/android/camera/Clapper;->DEFAULT_AMPLITUDE_DIFF:I

    goto :goto_5e

    :cond_78
    int-to-float v7, v3

    sget v8, Lcom/android/camera/Clapper;->AMPLITUDE_ABSOLUTE_THRESHOLD:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    int-to-float v8, v0

    int-to-float v9, v6

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget-object v7, p0, Lcom/android/camera/Clapper;->mListener:Lcom/android/camera/Clapper$ClapperListener;

    invoke-interface {v7, v4}, Lcom/android/camera/Clapper$ClapperListener;->heard(F)V

    goto :goto_24
.end method


# virtual methods
.method public start()Z
    .registers 4

    invoke-direct {p0}, Lcom/android/camera/Clapper;->startRecorder()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/Clapper;->mContinueRecording:Z

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/camera/Clapper$1;

    invoke-direct {v2, p0}, Lcom/android/camera/Clapper$1;-><init>(Lcom/android/camera/Clapper;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_16
    return v0
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Clapper;->mContinueRecording:Z

    return-void
.end method

.method public stopRecorder()V
    .registers 4

    iget-object v1, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, p0, Lcom/android/camera/Clapper;->mContinueRecording:Z

    iget-object v1, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    iget-object v1, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_15} :catch_16

    :goto_15
    return-void

    :catch_16
    move-exception v0

    const-string/jumbo v1, "Clapper"

    const-string/jumbo v2, "Failed to stop media recorder."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method
