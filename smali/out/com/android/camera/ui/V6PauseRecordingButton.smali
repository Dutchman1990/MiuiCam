.class public Lcom/android/camera/ui/V6PauseRecordingButton;
.super Lcom/android/camera/ui/V6BottomAnimationImageView;
.source "V6PauseRecordingButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/V6FunctionUI;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6BottomAnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p0}, Lcom/android/camera/ui/V6PauseRecordingButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/V6PauseRecordingButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/camera/ui/V6PauseRecordingButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x0

    const v2, 0x7f090011

    const/4 v3, 0x2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->onResume()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PauseRecordingButton;->setVisibility(I)V

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    if-nez p1, :cond_8

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoPauseVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_8
    :goto_8
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setVisibility(I)V

    return-void

    :cond_c
    const/16 p1, 0x8

    goto :goto_8
.end method
