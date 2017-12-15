.class Lcom/android/camera/ui/StereoPopup$AnimationListener;
.super Lcom/android/camera/ui/SimpleAnimationListener;
.source "StereoPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/StereoPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/StereoPopup;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/StereoPopup;Landroid/view/View;Z)V
    .registers 4

    iput-object p1, p0, Lcom/android/camera/ui/StereoPopup$AnimationListener;->this$0:Lcom/android/camera/ui/StereoPopup;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/ui/SimpleAnimationListener;-><init>(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 8

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/camera/ui/SimpleAnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup$AnimationListener;->this$0:Lcom/android/camera/ui/StereoPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/StereoPopup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup$AnimationListener;->this$0:Lcom/android/camera/ui/StereoPopup;

    invoke-static {v0}, Lcom/android/camera/ui/StereoPopup;->-get3(Lcom/android/camera/ui/StereoPopup;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne v0, p1, :cond_2b

    const/16 v1, 0xb

    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup$AnimationListener;->this$0:Lcom/android/camera/ui/StereoPopup;

    iget-object v0, v0, Lcom/android/camera/ui/StereoPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_2a

    if-lez v1, :cond_2a

    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup$AnimationListener;->this$0:Lcom/android/camera/ui/StereoPopup;

    iget-object v0, v0, Lcom/android/camera/ui/StereoPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    move v3, v2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_2a
    return-void

    :cond_2b
    iget-object v0, p0, Lcom/android/camera/ui/StereoPopup$AnimationListener;->this$0:Lcom/android/camera/ui/StereoPopup;

    invoke-static {v0}, Lcom/android/camera/ui/StereoPopup;->-get0(Lcom/android/camera/ui/StereoPopup;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne v0, p1, :cond_19

    const/16 v1, 0xc

    goto :goto_19
.end method
