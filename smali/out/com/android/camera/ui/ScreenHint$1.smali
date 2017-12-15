.class Lcom/android/camera/ui/ScreenHint$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScreenHint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ScreenHint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ScreenHint;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ScreenHint;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/ScreenHint$1;->this$0:Lcom/android/camera/ui/ScreenHint;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint$1;->this$0:Lcom/android/camera/ui/ScreenHint;

    invoke-static {v1}, Lcom/android/camera/ui/ScreenHint;->-get0(Lcom/android/camera/ui/ScreenHint;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint$1;->this$0:Lcom/android/camera/ui/ScreenHint;

    invoke-static {v1}, Lcom/android/camera/ui/ScreenHint;->-get1(Lcom/android/camera/ui/ScreenHint;)Landroid/animation/AnimatorSet;

    move-result-object v1

    if-ne p1, v1, :cond_1d

    new-instance v1, Lcom/android/camera/ui/ScreenHint$1$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/ScreenHint$1$1;-><init>(Lcom/android/camera/ui/ScreenHint$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint$1;->this$0:Lcom/android/camera/ui/ScreenHint;

    invoke-static {v1}, Lcom/android/camera/ui/ScreenHint;->-get0(Lcom/android/camera/ui/ScreenHint;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    if-ne p1, v1, :cond_1c

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1c
.end method
