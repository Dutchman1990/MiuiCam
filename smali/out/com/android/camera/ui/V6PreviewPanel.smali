.class public Lcom/android/camera/ui/V6PreviewPanel;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6PreviewPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public mCaptureDelayNumber:Lcom/android/camera/ui/RotateTextView;

.field public mCaptureDelayNumberParent:Landroid/widget/RelativeLayout;

.field public mCropView:Lcom/android/camera/ui/V6EffectCropView;

.field public mFaceView:Lcom/android/camera/ui/FaceView;

.field public mFocusView:Lcom/android/camera/ui/FocusView;

.field private mIsDelayNumInCenter:Z

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field public mMultiSnapNum:Lcom/android/camera/ui/RotateTextView;

.field public mObjectView:Lcom/android/camera/ui/ObjectView;

.field public mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

.field public mReviewImage:Landroid/widget/ImageView;

.field public mVideoRecordingTimeView:Lcom/android/camera/ui/V6RecordingTimeView;

.field public mVideoReviewImage:Landroid/widget/ImageView;

.field public mVideoReviewPlay:Lcom/android/camera/ui/RotateImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mIsDelayNumInCenter:Z

    return-void
.end method

.method private getLeftMarginAccordingDevice()I
    .registers 4

    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v0, v0

    const-string/jumbo v1, "camera_front_count_down_margin"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private isDelayNumberInCenter()Z
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_9

    return v1

    :cond_9
    sget-boolean v3, Lcom/android/camera/Device;->IS_A8:Z

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-static {v0}, Lcom/android/camera/Util;->isActivityInvert(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v2

    :goto_16
    if-ne v3, v0, :cond_1c

    move v0, v1

    :goto_19
    return v0

    :cond_1a
    move v0, v1

    goto :goto_16

    :cond_1c
    move v0, v2

    goto :goto_19
.end method

.method private updateCaptureDelayView(Z)V
    .registers 9

    const/16 v6, 0xd

    const/16 v5, 0xa

    const/4 v4, -0x1

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/android/camera/ui/V6PreviewPanel;->mIsDelayNumInCenter:Z

    if-ne v2, p1, :cond_b

    return-void

    :cond_b
    iput-boolean p1, p0, Lcom/android/camera/ui/V6PreviewPanel;->mIsDelayNumInCenter:Z

    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumberParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/ui/V6PreviewPanel;->mIsDelayNumInCenter:Z

    if-eqz v2, :cond_36

    aput v4, v1, v6

    aput v3, v1, v5

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumber:Lcom/android/camera/ui/RotateTextView;

    const v3, 0x429f570a    # 79.67f

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/RotateTextView;->setTextSize(F)V

    :goto_2b
    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumberParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumber:Lcom/android/camera/ui/RotateTextView;

    invoke-virtual {v2}, Lcom/android/camera/ui/RotateTextView;->requestLayout()V

    return-void

    :cond_36
    aput v3, v1, v6

    aput v4, v1, v5

    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPanel;->getLeftMarginAccordingDevice()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumber:Lcom/android/camera/ui/RotateTextView;

    const/high16 v3, 0x42480000    # 50.0f

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/RotateTextView;->setTextSize(F)V

    goto :goto_2b
.end method


# virtual methods
.method public hideDelayNumber()V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumber:Lcom/android/camera/ui/RotateTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateTextView;->setVisibility(I)V

    return-void
.end method

.method public onCameraOpen()V
    .registers 2

    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPanel;->isDelayNumberInCenter()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->updateCaptureDelayView(Z)V

    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onCameraOpen()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-nez v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewPlay:Lcom/android/camera/ui/RotateImageView;

    if-ne v0, p1, :cond_1b

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v2, 0x7f09008a

    const/4 v3, 0x2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_1b
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    const v0, 0x7f090086

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FaceView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mFaceView:Lcom/android/camera/ui/FaceView;

    const v0, 0x7f090087

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ObjectView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mObjectView:Lcom/android/camera/ui/ObjectView;

    const v0, 0x7f090082

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateTextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumber:Lcom/android/camera/ui/RotateTextView;

    const v0, 0x7f090081

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumberParent:Landroid/widget/RelativeLayout;

    const v0, 0x7f090083

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateTextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mMultiSnapNum:Lcom/android/camera/ui/RotateTextView;

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mMultiSnapNum:Lcom/android/camera/ui/RotateTextView;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/camera/Util;->getMiuiTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateTextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f09008a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewPlay:Lcom/android/camera/ui/RotateImageView;

    const v0, 0x7f090080

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6RecordingTimeView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoRecordingTimeView:Lcom/android/camera/ui/V6RecordingTimeView;

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoRecordingTimeView:Lcom/android/camera/ui/V6RecordingTimeView;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/camera/Util;->getMiuiTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6RecordingTimeView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f090088

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FocusView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mFocusView:Lcom/android/camera/ui/FocusView;

    const v0, 0x7f090084

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6PreviewFrame;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    const v0, 0x7f09008b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6EffectCropView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCropView:Lcom/android/camera/ui/V6EffectCropView;

    const v0, 0x7f090089

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    const v0, 0x7f09007f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mReviewImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-void
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onPause()V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->clear()V

    return-void
.end method

.method public onResume()V
    .registers 3

    const/16 v1, 0x8

    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onResume()V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ObjectView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mMultiSnapNum:Lcom/android/camera/ui/RotateTextView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumber:Lcom/android/camera/ui/RotateTextView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewPlay:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoRecordingTimeView:Lcom/android/camera/ui/V6RecordingTimeView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6RecordingTimeView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isScanQRCodeIntent()Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->setVisibility(I)V

    :goto_36
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewPlay:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_3c
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->setVisibility(I)V

    goto :goto_36
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/camera/ui/V6RelativeLayout;->setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V

    iput-object p1, p0, Lcom/android/camera/ui/V6PreviewPanel;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    return-void
.end method

.method public setOrientation(IZ)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;->setOrientation(IZ)V

    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPanel;->isDelayNumberInCenter()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/V6PreviewPanel;->updateCaptureDelayView(Z)V

    return-void
.end method

.method public showDelayNumber(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumberParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumberParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_e
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumber:Lcom/android/camera/ui/RotateTextView;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumber:Lcom/android/camera/ui/RotateTextView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateTextView;->setVisibility(I)V

    :cond_1b
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumber:Lcom/android/camera/ui/RotateTextView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
