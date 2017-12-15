.class Lcom/android/camera/ui/FocusView$1;
.super Landroid/os/Handler;
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

    iput-object p1, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16

    const/high16 v13, -0x40800000    # -1.0f

    const/4 v12, 0x6

    const-wide/16 v10, 0x14

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get6(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v3

    if-nez v3, :cond_11

    return-void

    :cond_11
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_2bc

    :cond_16
    :goto_16
    return-void

    :pswitch_17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get11(Lcom/android/camera/ui/FocusView;)J

    move-result-wide v6

    sub-long v0, v4, v6

    const-wide/16 v4, 0x208

    cmp-long v3, v0, v4

    if-ltz v3, :cond_45

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-set6(Lcom/android/camera/ui/FocusView;I)I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3, v8}, Lcom/android/camera/ui/FocusView;->-set7(Lcom/android/camera/ui/FocusView;I)I

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/FocusView$1;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_44

    invoke-virtual {p0, v12}, Lcom/android/camera/ui/FocusView$1;->removeMessages(I)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {p0, v12, v4, v5}, Lcom/android/camera/ui/FocusView$1;->sendEmptyMessageDelayed(IJ)Z

    :cond_44
    return-void

    :cond_45
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    long-to-float v4, v0

    const/high16 v5, 0x43fa0000    # 500.0f

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-set8(Lcom/android/camera/ui/FocusView;F)F

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-wrap4(Lcom/android/camera/ui/FocusView;)V

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->invalidate()V

    const/4 v3, 0x7

    invoke-virtual {p0, v3, v10, v11}, Lcom/android/camera/ui/FocusView$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_16

    :pswitch_5d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get22(Lcom/android/camera/ui/FocusView;)J

    move-result-wide v6

    sub-long v0, v4, v6

    const-wide/16 v4, 0x140

    cmp-long v3, v0, v4

    if-ltz v3, :cond_84

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3, v8}, Lcom/android/camera/ui/FocusView;->-set7(Lcom/android/camera/ui/FocusView;I)I

    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/FocusView$1;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_83

    invoke-virtual {p0, v12}, Lcom/android/camera/ui/FocusView$1;->removeMessages(I)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {p0, v12, v4, v5}, Lcom/android/camera/ui/FocusView$1;->sendEmptyMessageDelayed(IJ)Z

    :cond_83
    return-void

    :cond_84
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    long-to-float v4, v0

    const/high16 v5, 0x43960000    # 300.0f

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-wrap2(Lcom/android/camera/ui/FocusView;F)F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v4}, Lcom/android/camera/ui/FocusView;->-get21(Lcom/android/camera/ui/FocusView;)I

    move-result v4

    int-to-float v4, v4

    sub-float v5, v9, v2

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-set5(Lcom/android/camera/ui/FocusView;I)I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->invalidate()V

    const/16 v3, 0x8

    invoke-virtual {p0, v3, v10, v11}, Lcom/android/camera/ui/FocusView$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_16

    :pswitch_aa
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3, v8}, Lcom/android/camera/ui/FocusView;->-set6(Lcom/android/camera/ui/FocusView;I)I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/camera/ui/FocusView;->-set0(Lcom/android/camera/ui/FocusView;J)J

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-wrap4(Lcom/android/camera/ui/FocusView;)V

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->invalidate()V

    goto/16 :goto_16

    :pswitch_c4
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->invalidate()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get23(Lcom/android/camera/ui/FocusView;)J

    move-result-wide v6

    sub-long v0, v4, v6

    const-wide/16 v4, 0xdc

    cmp-long v3, v0, v4

    if-lez v3, :cond_dc

    return-void

    :cond_dc
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    long-to-float v4, v0

    const/high16 v5, 0x43480000    # 200.0f

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-wrap2(Lcom/android/camera/ui/FocusView;F)F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-wrap1(Lcom/android/camera/ui/FocusView;)Z

    move-result v3

    if-eqz v3, :cond_124

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {}, Lcom/android/camera/ui/FocusView;->-get2()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-set14(Lcom/android/camera/ui/FocusView;I)I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    sget v4, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-set2(Lcom/android/camera/ui/FocusView;I)I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    const/16 v4, 0x96

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-set1(Lcom/android/camera/ui/FocusView;I)I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    iput v9, v3, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    :goto_109
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3, v8}, Lcom/android/camera/ui/FocusView;->-set4(Lcom/android/camera/ui/FocusView;I)I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3, v8}, Lcom/android/camera/ui/FocusView;->-set9(Lcom/android/camera/ui/FocusView;I)I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get14(Lcom/android/camera/ui/FocusView;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3, v2}, Lcom/android/camera/ui/FocusView;->-wrap6(Lcom/android/camera/ui/FocusView;F)V

    goto/16 :goto_16

    :cond_124
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    sget v4, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    int-to-float v4, v4

    sub-float v5, v9, v2

    sget v6, Lcom/android/camera/ui/FocusView;->BIG_INIT_RADIUS:I

    sget v7, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-set2(Lcom/android/camera/ui/FocusView;I)I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    const/high16 v4, 0x43160000    # 150.0f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-set1(Lcom/android/camera/ui/FocusView;I)I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    iput v13, v3, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    goto :goto_109

    :pswitch_145
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->invalidate()V

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get24(Lcom/android/camera/ui/FocusView;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_16

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get25(Lcom/android/camera/ui/FocusView;)J

    move-result-wide v6

    sub-long v0, v4, v6

    const-wide/16 v4, 0x96

    cmp-long v3, v0, v4

    if-ltz v3, :cond_166

    return-void

    :cond_166
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    long-to-float v4, v0

    const/high16 v5, 0x43020000    # 130.0f

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-wrap2(Lcom/android/camera/ui/FocusView;F)F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get17(Lcom/android/camera/ui/FocusView;)Z

    move-result v3

    if-eqz v3, :cond_1d2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get12(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureViewListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v3

    if-eqz v3, :cond_1d2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_1ef

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {}, Lcom/android/camera/ui/FocusView;->-get4()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/android/camera/ui/FocusView;->-get4()I

    move-result v5

    invoke-static {}, Lcom/android/camera/ui/FocusView;->-get3()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-set14(Lcom/android/camera/ui/FocusView;I)I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    iput v13, v3, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3, v8}, Lcom/android/camera/ui/FocusView;->-set4(Lcom/android/camera/ui/FocusView;I)I

    :goto_1ad
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    sget v4, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-set2(Lcom/android/camera/ui/FocusView;I)I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    const/16 v4, 0x96

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-set1(Lcom/android/camera/ui/FocusView;I)I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3, v8}, Lcom/android/camera/ui/FocusView;->-set9(Lcom/android/camera/ui/FocusView;I)I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get14(Lcom/android/camera/ui/FocusView;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-wrap6(Lcom/android/camera/ui/FocusView;F)V

    goto/16 :goto_16

    :cond_1d2
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3, v8}, Lcom/android/camera/ui/FocusView;->-set4(Lcom/android/camera/ui/FocusView;I)I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {}, Lcom/android/camera/ui/FocusView;->-get4()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/android/camera/ui/FocusView;->-get2()I

    move-result v5

    invoke-static {}, Lcom/android/camera/ui/FocusView;->-get4()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-set14(Lcom/android/camera/ui/FocusView;I)I

    goto :goto_1ad

    :cond_1ef
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3, v8}, Lcom/android/camera/ui/FocusView;->-set14(Lcom/android/camera/ui/FocusView;I)I

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float v3, v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v2, v3, v4

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-set4(Lcom/android/camera/ui/FocusView;I)I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v4, v2

    const v5, 0x3ecccccd    # 0.4f

    add-float/2addr v4, v5

    iput v4, v3, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    goto :goto_1ad

    :pswitch_20f
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->invalidate()V

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get24(Lcom/android/camera/ui/FocusView;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_16

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get13(Lcom/android/camera/ui/FocusView;)J

    move-result-wide v6

    sub-long v0, v4, v6

    const-wide/16 v4, 0x140

    cmp-long v3, v0, v4

    if-ltz v3, :cond_230

    return-void

    :cond_230
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    long-to-float v4, v0

    const/high16 v5, 0x43960000    # 300.0f

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-wrap2(Lcom/android/camera/ui/FocusView;F)F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    sub-float v4, v9, v2

    const/high16 v5, 0x43340000    # 180.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-set12(Lcom/android/camera/ui/FocusView;I)I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {}, Lcom/android/camera/ui/FocusView;->-get1()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/android/camera/ui/FocusView;->-get1()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-set13(Lcom/android/camera/ui/FocusView;I)I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    sget v4, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    int-to-float v4, v4

    invoke-static {}, Lcom/android/camera/ui/FocusView;->-get0()I

    move-result v5

    sget v6, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-set2(Lcom/android/camera/ui/FocusView;I)I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    sub-float v4, v9, v2

    const/high16 v5, 0x43160000    # 150.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-set1(Lcom/android/camera/ui/FocusView;I)I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3, v8}, Lcom/android/camera/ui/FocusView;->-set9(Lcom/android/camera/ui/FocusView;I)I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    iput v13, v3, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3, v8}, Lcom/android/camera/ui/FocusView;->-set4(Lcom/android/camera/ui/FocusView;I)I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get14(Lcom/android/camera/ui/FocusView;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->-wrap6(Lcom/android/camera/ui/FocusView;F)V

    goto/16 :goto_16

    :pswitch_298
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get16(Lcom/android/camera/ui/FocusView;)Z

    move-result v3

    if-eqz v3, :cond_2b5

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get15(Lcom/android/camera/ui/FocusView;)Z

    move-result v3

    if-eqz v3, :cond_2b5

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-wrap5(Lcom/android/camera/ui/FocusView;)V

    const-wide/16 v4, 0x32

    const/4 v3, 0x5

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/camera/ui/FocusView$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_16

    :cond_2b5
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-wrap8(Lcom/android/camera/ui/FocusView;)V

    goto/16 :goto_16

    :pswitch_data_2bc
    .packed-switch 0x1
        :pswitch_c4
        :pswitch_145
        :pswitch_20f
        :pswitch_298
        :pswitch_298
        :pswitch_aa
        :pswitch_17
        :pswitch_5d
    .end packed-switch
.end method
