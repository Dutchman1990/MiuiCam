.class Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;
.super Landroid/os/Handler;
.source "ClearSightImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageProcessHandler"
.end annotation


# instance fields
.field private mBayerCaptureResults:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field private mBayerFrames:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;",
            ">;"
        }
    .end annotation
.end field

.field private mBayerImages:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptureDone:Z

.field private mDroppedBayerCount:I

.field private mDroppedMonoCount:I

.field private mFastClearSight:Z

.field private mMonoCaptureResults:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field private mMonoFrames:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;",
            ">;"
        }
    .end annotation
.end field

.field private mMonoImages:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mNamedEntity:Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

.field private mNumImagesToProcess:[I

.field private mReprocessedBayerCount:I

.field private mReprocessedMonoCount:I

.field private mReprocessingFrames:Landroid/util/SparseLongArray;

.field private mReprocessingPairCount:I

.field private mReprocessingRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mReprocessingSingleBayer:Z

.field private mTimeout:Z

.field final synthetic this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;


# direct methods
.method constructor <init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/os/Looper;)V
    .registers 5

    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/util/ArrayDeque;

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get21(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get21(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get21(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerCaptureResults:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get21(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoCaptureResults:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get21(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerImages:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get21(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoImages:Ljava/util/ArrayDeque;

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:Landroid/util/SparseLongArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingRequests:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    return-void
.end method

.method private checkFastClearSight(Landroid/hardware/camera2/CaptureResult;)V
    .registers 6

    if-eqz p1, :cond_31

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const-string/jumbo v1, "CSImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fastCS: iso="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x190

    if-ge v1, v2, :cond_31

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mFastClearSight:Z

    :cond_31
    return-void
.end method

.method private checkForValidFramePairAndReprocess()V
    .registers 11

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string/jumbo v2, "CSImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkForValidFramePair - num bayer frames: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " num mono frames: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_43

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_44

    :cond_43
    :goto_43
    return-void

    :cond_44
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    const-string/jumbo v2, "CSImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkForValidFramePair - bayer ts: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v4}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mono ts: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v4}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "CSImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkForValidFramePair - difference: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v4}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    iget-object v6, v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v6}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    iget-object v4, v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v4}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get24(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_143

    iget v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mDroppedBayerCount:I

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get22(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v3

    if-ge v2, v3, :cond_df

    iget v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mDroppedMonoCount:I

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get22(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v3

    if-lt v2, v3, :cond_f7

    :cond_df
    const-string/jumbo v2, "CSImageProcessor"

    const-string/jumbo v3, "checkForValidFramePair - single bayer"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingSingleBayer:Z

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    invoke-direct {p0, v9, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->sendReprocessRequest(ILorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;)V

    goto/16 :goto_43

    :cond_f7
    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    iget-object v4, v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v4}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_125

    const-string/jumbo v2, "CSImageProcessor"

    const-string/jumbo v3, "checkForValidFramePair - toss mono"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    iget-object v2, v1, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->close()V

    iget v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mDroppedMonoCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mDroppedMonoCount:I

    goto/16 :goto_43

    :cond_125
    const-string/jumbo v2, "CSImageProcessor"

    const-string/jumbo v3, "checkForValidFramePair - toss bayer"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->close()V

    iget v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mDroppedBayerCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mDroppedBayerCount:I

    goto/16 :goto_43

    :cond_143
    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    invoke-direct {p0, v9, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->sendReprocessRequest(ILorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;)V

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    invoke-direct {p0, v8, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->sendReprocessRequest(ILorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;)V

    iget v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingPairCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingPairCount:I

    iget v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingPairCount:I

    if-ne v8, v2, :cond_43

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-direct {p0, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->checkFastClearSight(Landroid/hardware/camera2/CaptureResult;)V

    goto/16 :goto_43
.end method

.method private checkReprocessDone()V
    .registers 6

    const/4 v4, 0x6

    const/4 v1, 0x0

    const-string/jumbo v0, "CSImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkReprocessDone capture done: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mCaptureDone:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", reproc frames: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:Landroid/util/SparseLongArray;

    invoke-virtual {v3}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mCaptureDone:Z

    if-eqz v0, :cond_67

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    if-nez v0, :cond_67

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get5(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;

    move-result-object v2

    iget-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingSingleBayer:Z

    if-eqz v0, :cond_65

    const/4 v0, 0x1

    :goto_4e
    invoke-virtual {v2, v4, v0, v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    iput-boolean v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mCaptureDone:Z

    iput-boolean v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingSingleBayer:Z

    invoke-virtual {p0, v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    :goto_64
    return-void

    :cond_65
    move v0, v1

    goto :goto_4e

    :cond_67
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->kickTimeout()V

    goto :goto_64
.end method

.method private handleTimeout()V
    .registers 5

    const/4 v3, 0x6

    const/4 v2, 0x1

    const-string/jumbo v0, "CSImageProcessor"

    const-string/jumbo v1, "handleTimeout"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->releaseFrames()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    invoke-virtual {p0, v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    iput-boolean v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mCaptureDone:Z

    iput-boolean v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mTimeout:Z

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get5(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private kickTimeout()V
    .registers 4

    const/4 v2, 0x6

    iget-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mTimeout:Z

    if-nez v0, :cond_12

    invoke-virtual {p0, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get7(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_12
    return-void
.end method

.method private processFinalPair()V
    .registers 3

    const-string/jumbo v0, "CSImageProcessor"

    const-string/jumbo v1, "processFinalPair"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->releaseBayerFrames()V

    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->releaseMonoFrames()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mCaptureDone:Z

    iget v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingPairCount:I

    if-nez v0, :cond_37

    const-string/jumbo v0, "CSImageProcessor"

    const-string/jumbo v1, "processFinalPair - no matching pairs found"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->removeMessages(I)V

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingSingleBayer:Z

    if-eqz v0, :cond_38

    :cond_37
    :goto_37
    return-void

    :cond_38
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v0

    invoke-interface {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;->onClearSightFailure()V

    goto :goto_37
.end method

.method private processImg(Landroid/os/Message;)V
    .registers 6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/Image;

    iget-boolean v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mTimeout:Z

    if-eqz v1, :cond_2a

    const-string/jumbo v1, "CSImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processImg: timeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    :cond_29
    return-void

    :cond_2a
    const-string/jumbo v1, "CSImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processImg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    if-lez v1, :cond_69

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseLongArray;->indexOfValue(J)I

    move-result v1

    if-ltz v1, :cond_69

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_65

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    sget-object v2, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->PROCESSED:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    invoke-static {v1, v0, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-wrap5(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/media/Image;Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;)V

    :cond_65
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->processNewReprocessImage(Landroid/os/Message;)V

    :goto_68
    return-void

    :cond_69
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->processNewCaptureEvent(Landroid/os/Message;)V

    goto :goto_68
.end method

.method private processNewCaptureEvent(Landroid/os/Message;)V
    .registers 14

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->kickTimeout()V

    iget-boolean v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mCaptureDone:Z

    if-eqz v7, :cond_4f

    const-string/jumbo v7, "CSImageProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "processNewCaptureEvent - captureDone - we already have required frame pairs "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p1, Landroid/os/Message;->what:I

    if-ne v7, v11, :cond_4e

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/media/Image;

    const-string/jumbo v7, "CSImageProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "processNewCaptureEvent - captureDone - tossed frame ts: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/media/Image;->close()V

    :cond_4e
    return-void

    :cond_4f
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_105

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerImages:Ljava/util/ArrayDeque;

    iget-object v6, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerCaptureResults:Ljava/util/ArrayDeque;

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    :goto_59
    iget v7, p1, Landroid/os/Message;->what:I

    if-ne v7, v11, :cond_10d

    const-string/jumbo v7, "CSImageProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "processNewCaptureEvent - newImg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/media/Image;

    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_80
    :goto_80
    const-string/jumbo v7, "CSImageProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "processNewCaptureEvent - cam: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " num imgs: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " num results: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_c6

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_16e

    :cond_c6
    :goto_c6
    const-string/jumbo v7, "CSImageProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "processNewCaptureEvent - imagestoprocess[bayer] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " imagestoprocess[mono]: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    aget v9, v9, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mFastClearSight:Z

    if-nez v7, :cond_101

    iget v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingPairCount:I

    iget-object v8, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v8}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get22(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)I

    move-result v8

    if-ne v7, v8, :cond_191

    :cond_101
    :goto_101
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->processFinalPair()V

    :cond_104
    return-void

    :cond_105
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoImages:Ljava/util/ArrayDeque;

    iget-object v6, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoCaptureResults:Ljava/util/ArrayDeque;

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    goto/16 :goto_59

    :cond_10d
    iget v7, p1, Landroid/os/Message;->what:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_13a

    const-string/jumbo v7, "CSImageProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "processNewCaptureEvent - new failed result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    iget v8, p1, Landroid/os/Message;->arg1:I

    aget v9, v7, v8

    add-int/lit8 v9, v9, -0x1

    aput v9, v7, v8

    goto/16 :goto_80

    :cond_13a
    const-string/jumbo v7, "CSImageProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "processNewCaptureEvent - newResult: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v6, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_80

    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get23(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;

    move-result-object v7

    sget-object v8, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->CAPTURED:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    invoke-virtual {v7, v5, v8}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->updateResult(Landroid/hardware/camera2/TotalCaptureResult;Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;)V

    goto/16 :goto_80

    :cond_16e
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/Image;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/TotalCaptureResult;

    new-instance v7, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    invoke-direct {v7, v1, v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;-><init>(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    iget v8, p1, Landroid/os/Message;->arg1:I

    aget v9, v7, v8

    add-int/lit8 v9, v9, -0x1

    aput v9, v7, v8

    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->checkForValidFramePairAndReprocess()V

    goto/16 :goto_c6

    :cond_191
    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    aget v7, v7, v10

    if-nez v7, :cond_104

    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    aget v7, v7, v11

    if-nez v7, :cond_104

    goto/16 :goto_101
.end method

.method private processNewReprocessFailure(Landroid/os/Message;)V
    .registers 6

    iget-boolean v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mTimeout:Z

    if-eqz v1, :cond_21

    const-string/jumbo v1, "CSImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processNewReprocessFailure: timeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    const-string/jumbo v1, "CSImageProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processNewReprocessFailure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CaptureFailure;

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureFailure;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:Landroid/util/SparseLongArray;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Landroid/util/SparseLongArray;->delete(I)V

    iget-boolean v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mFastClearSight:Z

    if-eqz v1, :cond_58

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingSingleBayer:Z

    :cond_58
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->checkReprocessDone()V

    return-void
.end method

.method private processNewReprocessImage(Landroid/os/Message;)V
    .registers 16

    const-wide/32 v12, 0xf4240

    const/4 v10, 0x0

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_89

    const/4 v3, 0x1

    :goto_9
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v8

    const-string/jumbo v0, "CSImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processNewReprocessImage - cam: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", ts: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_8c

    iget v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessedBayerCount:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessedBayerCount:I

    :goto_40
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get8(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get19(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNamedEntity:Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    div-long v6, v8, v12

    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->saveDebugImageAsJpeg(Lcom/android/camera/storage/ImageSaver;Landroid/media/Image;ZLcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;IJ)V

    :cond_57
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get9(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNamedEntity:Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    div-long v6, v8, v12

    invoke-virtual/range {v1 .. v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->saveDebugImageAsNV21(Landroid/media/Image;ZLcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;IJ)V

    :cond_68
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get5(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v6, 0x1

    invoke-virtual {v0, v6, v1, v10, v4}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:Landroid/util/SparseLongArray;

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v8, v9}, Landroid/util/SparseLongArray;->indexOfValue(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseLongArray;->removeAt(I)V

    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->checkReprocessDone()V

    return-void

    :cond_89
    const/4 v3, 0x0

    goto/16 :goto_9

    :cond_8c
    iget v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessedMonoCount:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessedMonoCount:I

    goto :goto_40
.end method

.method private processNewReprocessResult(Landroid/os/Message;)V
    .registers 7

    iget-boolean v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mTimeout:Z

    if-eqz v2, :cond_21

    const-string/jumbo v2, "CSImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processNewReprocessResult: timeout "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    const-string/jumbo v2, "CSImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processNewReprocessResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_8d

    const/4 v0, 0x1

    :goto_42
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getReferenceResult(Z)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v2

    if-nez v2, :cond_7c

    const-string/jumbo v2, "CSImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reprocess - setReferenceResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->setReferenceResult(ZLandroid/hardware/camera2/TotalCaptureResult;)V

    :cond_7c
    if-eqz v0, :cond_89

    iget-object v2, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v2}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get23(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;

    move-result-object v2

    sget-object v3, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;->PROCESSED:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;

    invoke-virtual {v2, v1, v3}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$SemiFinishedImage;->updateResult(Landroid/hardware/camera2/TotalCaptureResult;Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$BackupState;)V

    :cond_89
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->checkReprocessDone()V

    return-void

    :cond_8d
    const/4 v0, 0x0

    goto :goto_42
.end method

.method private releaseBayerFrames()V
    .registers 6

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    iget-object v4, v2, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v4}, Landroid/media/Image;->close()V

    goto :goto_6

    :cond_18
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerImages:Ljava/util/ArrayDeque;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    goto :goto_23

    :cond_33
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerImages:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mBayerCaptureResults:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method private releaseFrames()V
    .registers 2

    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->releaseBayerFrames()V

    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->releaseMonoFrames()V

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->clear()V

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private releaseMonoFrames()V
    .registers 6

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;

    iget-object v4, v2, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v4}, Landroid/media/Image;->close()V

    goto :goto_6

    :cond_18
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoFrames:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoImages:Ljava/util/ArrayDeque;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    goto :goto_23

    :cond_33
    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoImages:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    iget-object v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mMonoCaptureResults:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method private sendReprocessRequest(ILorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;)V
    .registers 15

    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get2(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v7

    aget-object v5, v7, p1

    invoke-virtual {v5}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    :try_start_c
    const-string/jumbo v7, "CSImageProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sendReprocessRequest - cam: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p2, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v0, v7}, Landroid/hardware/camera2/CameraDevice;->createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get15(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/media/ImageReader;

    move-result-object v7

    aget-object v7, v7, p1

    invoke-virtual {v7}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v7, p2, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v7}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingFrames:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v7, v8, v10, v11}, Landroid/util/SparseLongArray;->put(IJ)V

    const-string/jumbo v7, "CSImageProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sendReprocessRequest - adding reproc frame - hash: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", ts: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v7}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get16(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)[Landroid/media/ImageWriter;

    move-result-object v7

    aget-object v7, v7, p1

    iget-object v8, p2, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ReprocessableImage;->mImage:Landroid/media/Image;

    invoke-virtual {v7, v8}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    new-instance v7, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler$1;

    invoke-direct {v7, p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler$1;-><init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;I)V

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v7, v8}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    iget-object v7, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingRequests:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_bf
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_c .. :try_end_bf} :catch_c0

    :goto_bf
    return-void

    :catch_c0
    move-exception v1

    const-string/jumbo v7, "CSImageProcessor"

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_bf
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-wrap1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string/jumbo v0, "CSImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "capture - drop msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->releaseFrames()V

    return-void

    :cond_29
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_8e

    :goto_2e
    return-void

    :pswitch_2f
    iput-boolean v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mCaptureDone:Z

    iput-boolean v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mTimeout:Z

    iput-boolean v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingSingleBayer:Z

    iput-boolean v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mFastClearSight:Z

    iput v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessingPairCount:I

    iput v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessedBayerCount:I

    iput v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mReprocessedMonoCount:I

    iput v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mDroppedBayerCount:I

    iput v4, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mDroppedMonoCount:I

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNumImagesToProcess:[I

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    aput v2, v0, v1

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_66

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get20(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/camera_adapter/camera2/NamedImages;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/camera_adapter/camera2/NamedImages;->nameNewImage(J)V

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get20(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lcom/android/camera/camera_adapter/camera2/NamedImages;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/camera2/NamedImages;->getNextNameEntity()Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNamedEntity:Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    :cond_66
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get5(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->mNamedEntity:Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    invoke-virtual {v0, v4, v4, v4, v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2e

    :pswitch_76
    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->handleTimeout()V

    goto :goto_2e

    :pswitch_7a
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->processImg(Landroid/os/Message;)V

    goto :goto_2e

    :pswitch_7e
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->processNewCaptureEvent(Landroid/os/Message;)V

    goto :goto_2e

    :pswitch_82
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->processNewReprocessResult(Landroid/os/Message;)V

    goto :goto_2e

    :pswitch_86
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->processNewCaptureEvent(Landroid/os/Message;)V

    goto :goto_2e

    :pswitch_8a
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ImageProcessHandler;->processNewReprocessFailure(Landroid/os/Message;)V

    goto :goto_2e

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_7a
        :pswitch_7e
        :pswitch_86
        :pswitch_82
        :pswitch_8a
        :pswitch_76
    .end packed-switch
.end method
