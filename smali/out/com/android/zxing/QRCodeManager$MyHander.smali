.class Lcom/android/zxing/QRCodeManager$MyHander;
.super Landroid/os/Handler;
.source "QRCodeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/zxing/QRCodeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHander"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/zxing/QRCodeManager;


# direct methods
.method public constructor <init>(Lcom/android/zxing/QRCodeManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c2

    :cond_5
    :goto_5
    :pswitch_5
    return-void

    :pswitch_6
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/zxing/Result;

    invoke-virtual {v0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->recode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/zxing/QRCodeManager;->-set0(Lcom/android/zxing/QRCodeManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->-get9(Lcom/android/zxing/QRCodeManager;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->-get1(Lcom/android/zxing/QRCodeManager;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->-wrap0(Lcom/android/zxing/QRCodeManager;)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->-get9(Lcom/android/zxing/QRCodeManager;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->-get4(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;->findQRCode()V

    :cond_42
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    const/16 v1, 0xfa0

    invoke-static {v0, v1}, Lcom/android/zxing/QRCodeManager;->-wrap2(Lcom/android/zxing/QRCodeManager;I)V

    goto :goto_5

    :pswitch_4a
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->-get9(Lcom/android/zxing/QRCodeManager;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->-get9(Lcom/android/zxing/QRCodeManager;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_5

    :pswitch_5e
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->-wrap0(Lcom/android/zxing/QRCodeManager;)Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->-get2(Lcom/android/zxing/QRCodeManager;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->-get5(Lcom/android/zxing/QRCodeManager;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_75
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/android/zxing/QRCodeManager;->-wrap2(Lcom/android/zxing/QRCodeManager;I)V

    goto :goto_5

    :pswitch_7d
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->-wrap1(Lcom/android/zxing/QRCodeManager;)V

    const-string/jumbo v0, "QRCodeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exit decode qrcode for timeout, mResumeTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/zxing/QRCodeManager$MyHander;->this$0:Lcom/android/zxing/QRCodeManager;

    invoke-static {v2}, Lcom/android/zxing/QRCodeManager;->-get8(Lcom/android/zxing/QRCodeManager;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " now="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " decodetime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/zxing/QRCodeManager;->-get0()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :pswitch_data_c2
    .packed-switch 0x7f090006
        :pswitch_4a
        :pswitch_6
        :pswitch_5e
        :pswitch_5
        :pswitch_7d
    .end packed-switch
.end method
