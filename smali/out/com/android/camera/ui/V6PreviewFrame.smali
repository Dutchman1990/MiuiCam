.class public Lcom/android/camera/ui/V6PreviewFrame;
.super Landroid/widget/RelativeLayout;
.source "V6PreviewFrame.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/android/camera/ui/V6FunctionUI;


# instance fields
.field private mAspectRatio:F

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field public mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x3fe38e39

    iput v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:F

    return-void
.end method

.method private isReferenceLineEnabled()Z
    .registers 4

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_referenceline_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public enableControls(Z)V
    .registers 2

    return-void
.end method

.method public isFullScreen()Z
    .registers 7

    const/4 v1, 0x1

    sget v2, Lcom/android/camera/Util;->sWindowHeight:I

    sget v3, Lcom/android/camera/Util;->sWindowWidth:I

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result v0

    iget v2, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_2a

    iget v2, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2b

    :cond_2a
    :goto_2a
    return v1

    :cond_2b
    const/4 v1, 0x0

    goto :goto_2a
.end method

.method public onCameraOpen()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6PreviewFrame;->updateRefenceLineAccordSquare()V

    invoke-virtual {p0}, Lcom/android/camera/ui/V6PreviewFrame;->updatePreviewGrid()V

    return-void
.end method

.method public onCreate()V
    .registers 1

    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    const/4 v2, 0x3

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f090085

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SplitLineDrawer;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v0, v2, v2}, Lcom/android/camera/ui/SplitLineDrawer;->initialize(II)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/SplitLineDrawer;->setBorderVisible(ZZ)V

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    const v1, -0x7f000001

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SplitLineDrawer;->setLineColor(I)V

    invoke-virtual {p0, p0}, Lcom/android/camera/ui/V6PreviewFrame;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 16

    const v2, 0x7f090084

    const/4 v1, 0x1

    sub-int v0, p4, p2

    sub-int v3, p5, p3

    if-le v0, v3, :cond_b

    return-void

    :cond_b
    sub-int v0, p5, p3

    sub-int v3, p4, p2

    invoke-static {v0, v3}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:F

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x2

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x3

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_31
    return-void
.end method

.method public onPause()V
    .registers 1

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/camera/ui/V6PreviewFrame;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/camera/ui/V6PreviewFrame;->getHeight()I

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/camera/ui/V6PreviewFrame;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6PreviewFrame;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:F

    :cond_1a
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SplitLineDrawer;->setVisibility(I)V

    :cond_27
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 11

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, p3, p4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v1, 0x0

    const v2, 0x7f090084

    const/4 v3, 0x2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_18
    return-void
.end method

.method public setAspectRatio(F)V
    .registers 6

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_d
    iget v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v0, v0, v2

    if-lez v0, :cond_20

    iput p1, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:F

    :cond_20
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/V6PreviewFrame;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    return-void
.end method

.method public updatePreviewGrid()V
    .registers 3

    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewFrame;->isReferenceLineEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/camera/ui/V6PreviewFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isScanQRCodeIntent()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_12
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SplitLineDrawer;->setVisibility(I)V

    :goto_19
    return-void

    :cond_1a
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isDualModule()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_26
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SplitLineDrawer;->setVisibility(I)V

    goto :goto_19
.end method

.method public updateRefenceLineAccordSquare()V
    .registers 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v2}, Lcom/android/camera/ui/SplitLineDrawer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const-string/jumbo v2, "pref_camera_square_mode_key"

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/lit8 v1, v2, 0x6

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :goto_1a
    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v2}, Lcom/android/camera/ui/SplitLineDrawer;->getVisibility()I

    move-result v2

    if-nez v2, :cond_27

    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v2}, Lcom/android/camera/ui/SplitLineDrawer;->requestLayout()V

    :cond_27
    return-void

    :cond_28
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1a
.end method
