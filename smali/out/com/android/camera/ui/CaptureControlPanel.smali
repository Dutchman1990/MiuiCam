.class public Lcom/android/camera/ui/CaptureControlPanel;
.super Landroid/widget/RelativeLayout;
.source "CaptureControlPanel.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/V6FunctionUI;


# instance fields
.field private mCancle:Lcom/android/camera/ui/V6BottomAnimationImageView;

.field private mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mVisible:Z

    return-void
.end method


# virtual methods
.method public enableControls(Z)V
    .registers 2

    return-void
.end method

.method public getReviewCanceledView()Lcom/android/camera/ui/V6BottomAnimationImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mCancle:Lcom/android/camera/ui/V6BottomAnimationImageView;

    return-object v0
.end method

.method public getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

    return-object v0
.end method

.method public onCameraOpen()V
    .registers 1

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    const v2, 0x7f090023

    const/4 v3, 0x2

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

    if-ne v0, p1, :cond_11

    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x0

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x1

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_10
.end method

.method public onCreate()V
    .registers 1

    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f090024

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CaptureControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6BottomAnimationImageView;

    iput-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

    const v0, 0x7f090025

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CaptureControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6BottomAnimationImageView;

    iput-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mCancle:Lcom/android/camera/ui/V6BottomAnimationImageView;

    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mCancle:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onPause()V
    .registers 1

    return-void
.end method

.method public onResume()V
    .registers 5

    const/4 v3, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/android/camera/ui/CaptureControlPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isVideoCaptureIntent()Z

    move-result v1

    :goto_13
    iput-boolean v1, p0, Lcom/android/camera/ui/CaptureControlPanel;->mVisible:Z

    iget-boolean v1, p0, Lcom/android/camera/ui/CaptureControlPanel;->mVisible:Z

    if-eqz v1, :cond_29

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/CaptureControlPanel;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/ui/CaptureControlPanel;->mCancle:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setVisibility(I)V

    :goto_21
    iget-object v1, p0, Lcom/android/camera/ui/CaptureControlPanel;->mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setVisibility(I)V

    return-void

    :cond_27
    const/4 v1, 0x1

    goto :goto_13

    :cond_29
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/CaptureControlPanel;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/ui/CaptureControlPanel;->mCancle:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setVisibility(I)V

    goto :goto_21
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/CaptureControlPanel;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    return-void
.end method

.method public setOrientation(IZ)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mVisible:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setOrientation(IZ)V

    iget-object v0, p0, Lcom/android/camera/ui/CaptureControlPanel;->mCancle:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setOrientation(IZ)V

    :cond_e
    return-void
.end method
