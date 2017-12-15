.class public Lcom/android/camera/ui/V6ModeExitView;
.super Landroid/widget/LinearLayout;
.source "V6ModeExitView.java"

# interfaces
.implements Lcom/android/camera/ui/V6FunctionUI;


# instance fields
.field private mCurrentKey:Ljava/lang/String;

.field private mExitButton:Lcom/android/camera/ui/ExitButton;

.field private mVisible:Z


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/V6ModeExitView;)Lcom/android/camera/ui/ExitButton;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mVisible:Z

    return-void
.end method


# virtual methods
.method public clearExitButtonClickListener(Z)V
    .registers 4

    const/4 v1, 0x0

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/ExitButton;->hasOnClickListeners()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/ExitButton;->callOnClick()Z

    :cond_10
    invoke-virtual {p0, v1, v1}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonClickListener(Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    return-void
.end method

.method public enableControls(Z)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6ModeExitView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ExitButton;->setEnabled(Z)V

    return-void
.end method

.method public getExitButton()Lcom/android/camera/ui/ExitButton;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    return-object v0
.end method

.method public hide()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mVisible:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mVisible:Z

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModeExitView;->setVisibility(I)V

    :cond_c
    return-void
.end method

.method public isCurrentExitView(Ljava/lang/String;)Z
    .registers 5

    const-string/jumbo v0, "Camera5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "V6ModeExitView isCurrent key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mCurrentKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/V6ModeExitView;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_30

    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public isExitButtonShown()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {v1}, Lcom/android/camera/ui/ExitButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public onCameraOpen()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mVisible:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/camera/ui/V6ModeExitView;->updateBackground()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModeExitView;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method public onCreate()V
    .registers 3

    const/4 v1, 0x0

    const-string/jumbo v0, "pref_camera_stereo_mode_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModeExitView;->isCurrentExitView(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonVisible(I)V

    invoke-virtual {p0, v1, v1}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonClickListener(Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f09006c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModeExitView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ExitButton;

    iput-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    new-instance v1, Lcom/android/camera/ui/V6ModeExitView$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/V6ModeExitView$1;-><init>(Lcom/android/camera/ui/V6ModeExitView;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ExitButton;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public onPause()V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ExitButton;->setExpandedAnimation(Z)V

    return-void
.end method

.method public onResume()V
    .registers 1

    return-void
.end method

.method public setExitButtonClickListener(Landroid/view/View$OnClickListener;Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v0, "Camera6"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "V6ModeExitView setOnClickListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/android/camera/ui/V6ModeExitView;->mCurrentKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ExitButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setExitButtonVisible(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ExitButton;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ExitButton;->setVisibility(I)V

    const/16 v0, 0x8

    if-ne v0, p1, :cond_19

    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-static {v0}, Lcom/android/camera/Util;->expandViewTouchDelegate(Landroid/view/View;)V

    :cond_19
    return-void
.end method

.method public setExitContent(I)V
    .registers 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_12

    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    iget-object v1, p0, Lcom/android/camera/ui/V6ModeExitView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ExitButton;->setText(Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public setLayoutParameters(II)V
    .registers 6

    const/16 v2, 0xc

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/camera/ui/V6ModeExitView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_17

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_e
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    if-eqz p2, :cond_1b

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_16
    return-void

    :cond_17
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_e

    :cond_1b
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_16
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .registers 2

    return-void
.end method

.method public show()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mVisible:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mVisible:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModeExitView;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method public updateBackground()V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    const v1, 0x7f020021

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ExitButton;->setBackgroundResource(I)V

    :goto_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    const v1, 0x7f020020

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ExitButton;->setBackgroundResource(I)V

    goto :goto_1a
.end method

.method public updateExitButton(IZ)V
    .registers 6

    const-string/jumbo v0, "Camera6"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "V6ModeExitView updateExitButton = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2c

    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    iget-object v1, p0, Lcom/android/camera/ui/V6ModeExitView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ExitButton;->setText(Ljava/lang/String;)V

    :cond_2c
    if-eqz p2, :cond_3a

    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Lcom/android/camera/ui/ExitButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/ExitButton;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    :cond_3a
    const/16 v0, 0x8

    :goto_3c
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonVisible(I)V

    return-void

    :cond_40
    const/4 v0, 0x0

    goto :goto_3c
.end method
