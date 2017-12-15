.class Lcom/android/camera/ui/FocusView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FocusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FocusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FocusView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FocusView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->-get16(Lcom/android/camera/ui/FocusView;)Z

    move-result v0

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->-get10(Lcom/android/camera/ui/FocusView;)I

    move-result v0

    if-nez v0, :cond_7d

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isDualModule()Z

    move-result v0

    if-eqz v0, :cond_7d

    :cond_1f
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get19(Lcom/android/camera/ui/FocusView;)[I

    move-result-object v2

    aget v2, v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get19(Lcom/android/camera/ui/FocusView;)[I

    move-result-object v3

    aget v3, v3, v6

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get7(Lcom/android/camera/ui/FocusView;)I

    move-result v3

    int-to-float v3, v3

    const v5, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/ui/FocusView;->-wrap0(Lcom/android/camera/ui/FocusView;FFF)Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->-get18(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/MessageDispacher;

    move-result-object v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->-get6(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->-get18(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/MessageDispacher;

    move-result-object v0

    const/4 v1, 0x2

    const v2, 0x7f090088

    const/4 v3, 0x3

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_6d
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "capture_times_focus_view"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0, v6}, Lcom/android/camera/ui/FocusView;->-set3(Lcom/android/camera/ui/FocusView;Z)Z

    :goto_7c
    return v6

    :cond_7d
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0, v6}, Lcom/android/camera/ui/FocusView;->-set10(Lcom/android/camera/ui/FocusView;Z)Z

    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->-wrap7(Lcom/android/camera/ui/FocusView;)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->-wrap10(Lcom/android/camera/ui/FocusView;)V

    goto :goto_7c

    :cond_8d
    return v3
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 13

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get15(Lcom/android/camera/ui/FocusView;)Z

    move-result v2

    if-nez v2, :cond_d

    return v4

    :cond_d
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get5(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/Camera;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6GestureRecognizer;->getGestureOrientation()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_31

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get20(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    if-eqz v2, :cond_4a

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get20(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    const/16 v3, 0xb4

    if-eq v2, v3, :cond_4a

    :cond_31
    const/16 v2, 0x64

    if-ne v0, v2, :cond_49

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get20(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_4a

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get20(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    const/16 v3, 0x10e

    if-eq v2, v3, :cond_4a

    :cond_49
    return v4

    :cond_4a
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get20(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    sparse-switch v2, :sswitch_data_150

    :goto_53
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-wrap3(Lcom/android/camera/ui/FocusView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get9(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    if-eq v1, v2, :cond_a9

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get10(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    if-eq v2, v6, :cond_10b

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get9(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    if-ge v1, v2, :cond_10b

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get9(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get6(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v3

    if-lt v2, v3, :cond_10b

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get6(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v2

    if-ge v1, v2, :cond_10b

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-wrap11(Lcom/android/camera/ui/FocusView;)V

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get9(Lcom/android/camera/ui/FocusView;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/ui/FocusView;->-set11(Lcom/android/camera/ui/FocusView;I)I

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2, v6}, Lcom/android/camera/ui/FocusView;->-set6(Lcom/android/camera/ui/FocusView;I)I

    :cond_a4
    :goto_a4
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2, v1, v4}, Lcom/android/camera/ui/FocusView;->-wrap9(Lcom/android/camera/ui/FocusView;IZ)V

    :cond_a9
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get10(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    if-eqz v2, :cond_b9

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get10(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    if-ne v2, v5, :cond_d2

    :cond_b9
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2, v5}, Lcom/android/camera/ui/FocusView;->-set6(Lcom/android/camera/ui/FocusView;I)I

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-wrap4(Lcom/android/camera/ui/FocusView;)V

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusView;->invalidate()V

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get14(Lcom/android/camera/ui/FocusView;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_d2
    return v5

    :sswitch_d3
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get8(Lcom/android/camera/ui/FocusView;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, p4

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/android/camera/ui/FocusView;->-set5(Lcom/android/camera/ui/FocusView;I)I

    goto/16 :goto_53

    :sswitch_e1
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get8(Lcom/android/camera/ui/FocusView;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, p3

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/android/camera/ui/FocusView;->-set5(Lcom/android/camera/ui/FocusView;I)I

    goto/16 :goto_53

    :sswitch_ef
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get8(Lcom/android/camera/ui/FocusView;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p4

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/android/camera/ui/FocusView;->-set5(Lcom/android/camera/ui/FocusView;I)I

    goto/16 :goto_53

    :sswitch_fd
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get8(Lcom/android/camera/ui/FocusView;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p3

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/android/camera/ui/FocusView;->-set5(Lcom/android/camera/ui/FocusView;I)I

    goto/16 :goto_53

    :cond_10b
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get10(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    if-eq v2, v7, :cond_a4

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get9(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    if-le v1, v2, :cond_a4

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get9(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get6(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v3

    if-ge v2, v3, :cond_a4

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get6(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v2

    if-lt v1, v2, :cond_a4

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-wrap11(Lcom/android/camera/ui/FocusView;)V

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get9(Lcom/android/camera/ui/FocusView;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/ui/FocusView;->-set11(Lcom/android/camera/ui/FocusView;I)I

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2, v7}, Lcom/android/camera/ui/FocusView;->-set6(Lcom/android/camera/ui/FocusView;I)I

    goto/16 :goto_a4

    :sswitch_data_150
    .sparse-switch
        0x0 -> :sswitch_d3
        0x5a -> :sswitch_e1
        0xb4 -> :sswitch_ef
        0x10e -> :sswitch_fd
    .end sparse-switch
.end method
