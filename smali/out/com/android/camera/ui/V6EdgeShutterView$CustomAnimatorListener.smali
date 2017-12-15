.class Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "V6EdgeShutterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6EdgeShutterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomAnimatorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6EdgeShutterView;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/V6EdgeShutterView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6EdgeShutterView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/V6EdgeShutterView;Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;-><init>(Lcom/android/camera/ui/V6EdgeShutterView;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 5

    const-string/jumbo v0, "CameraEdgeShutterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnimationCancel animation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6EdgeShutterView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/V6EdgeShutterView;->-set0(Lcom/android/camera/ui/V6EdgeShutterView;I)I

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    const/4 v3, 0x4

    const-string/jumbo v0, "CameraEdgeShutterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnimationEnd animation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6EdgeShutterView;

    invoke-static {v0}, Lcom/android/camera/ui/V6EdgeShutterView;->-get1(Lcom/android/camera/ui/V6EdgeShutterView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-ne p1, v0, :cond_43

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6EdgeShutterView;

    invoke-static {v0}, Lcom/android/camera/ui/V6EdgeShutterView;->-get4(Lcom/android/camera/ui/V6EdgeShutterView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_43

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6EdgeShutterView;

    invoke-static {v0, v3}, Lcom/android/camera/ui/V6EdgeShutterView;->-wrap2(Lcom/android/camera/ui/V6EdgeShutterView;I)V

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6EdgeShutterView;

    invoke-static {v0, v3}, Lcom/android/camera/ui/V6EdgeShutterView;->-set0(Lcom/android/camera/ui/V6EdgeShutterView;I)I

    :cond_36
    :goto_36
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6EdgeShutterView;

    iget-object v1, p0, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6EdgeShutterView;

    invoke-static {v1}, Lcom/android/camera/ui/V6EdgeShutterView;->-get2(Lcom/android/camera/ui/V6EdgeShutterView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6EdgeShutterView;->setX(F)V

    return-void

    :cond_43
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6EdgeShutterView;

    invoke-static {v0}, Lcom/android/camera/ui/V6EdgeShutterView;->-get3(Lcom/android/camera/ui/V6EdgeShutterView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-ne p1, v0, :cond_36

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6EdgeShutterView;

    invoke-static {v0}, Lcom/android/camera/ui/V6EdgeShutterView;->-get4(Lcom/android/camera/ui/V6EdgeShutterView;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_36

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6EdgeShutterView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/V6EdgeShutterView;->-set0(Lcom/android/camera/ui/V6EdgeShutterView;I)I

    goto :goto_36
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6EdgeShutterView;

    invoke-static {v0}, Lcom/android/camera/ui/V6EdgeShutterView;->-get0(Lcom/android/camera/ui/V6EdgeShutterView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-ne p1, v0, :cond_14

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6EdgeShutterView;

    iget-object v1, p0, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;->this$0:Lcom/android/camera/ui/V6EdgeShutterView;

    invoke-static {v1}, Lcom/android/camera/ui/V6EdgeShutterView;->-get2(Lcom/android/camera/ui/V6EdgeShutterView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6EdgeShutterView;->setX(F)V

    :cond_14
    return-void
.end method
