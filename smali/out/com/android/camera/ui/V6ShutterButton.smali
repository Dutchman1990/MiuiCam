.class public Lcom/android/camera/ui/V6ShutterButton;
.super Lcom/android/camera/ui/V6BottomAnimationViewGroup;
.source "V6ShutterButton.java"


# instance fields
.field private mAudioSound:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

.field private mShutterButton:Lcom/android/camera/ui/V6ShutterButtonInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public changeImageWithAnimation(IJ)V
    .registers 6

    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButton;->mShutterButton:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/ui/V6ShutterButtonInternal;->changeImageWithAnimation(IJ)V

    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButton;->mShutterButton:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public isCanceled()Z
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButton;->mShutterButton:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButton;->mShutterButton:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isPressed()Z
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButton;->mShutterButton:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->isPressed()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 5

    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->onFinishInflate()V

    const v0, 0x7f090014

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ShutterButton;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6ShutterButtonInternal;

    iput-object v0, p0, Lcom/android/camera/ui/V6ShutterButton;->mShutterButton:Lcom/android/camera/ui/V6ShutterButtonInternal;

    const v0, 0x7f090013

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ShutterButton;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    iput-object v0, p0, Lcom/android/camera/ui/V6ShutterButton;->mAudioSound:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButton;->mAudioSound:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButton;->mAudioSound:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    iget-object v1, p0, Lcom/android/camera/ui/V6ShutterButton;->mShutterButton:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6ShutterButtonInternal;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/android/camera/ui/V6ShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->setRadius(II)V

    :cond_3b
    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->onResume()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ShutterButton;->setVisibility(I)V

    return-void
.end method

.method public setAudioProgress(F)V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButton;->mAudioSound:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButton;->mAudioSound:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->setAudioProgress(F)V

    :cond_9
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButton;->mShutterButton:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6ShutterButtonInternal;->setEnabled(Z)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButton;->mShutterButton:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6ShutterButtonInternal;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButton;->mShutterButton:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6ShutterButtonInternal;->setImageResource(I)V

    return-void
.end method
