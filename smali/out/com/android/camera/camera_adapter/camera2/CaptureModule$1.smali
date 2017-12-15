.class Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CaptureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camera_adapter/camera2/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method

.method private onAfDone(Ljava/lang/Integer;I)V
    .registers 6

    const/4 v2, 0x6

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap4(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v0

    if-eqz v0, :cond_30

    sget v0, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    if-ne v0, p2, :cond_2a

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0, p2, v2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap32(Lcom/android/camera/camera_adapter/camera2/CaptureModule;II)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap34(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap17(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    :goto_23
    return-void

    :cond_24
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0, p2, v1}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap32(Lcom/android/camera/camera_adapter/camera2/CaptureModule;II)V

    goto :goto_23

    :cond_2a
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap23(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    goto :goto_23

    :cond_30
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap5(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0, p2, v2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap32(Lcom/android/camera/camera_adapter/camera2/CaptureModule;II)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap17(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    goto :goto_23

    :cond_43
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v0, p2}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap29(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    goto :goto_23
.end method

.method private process(Landroid/hardware/camera2/CaptureResult;)V
    .registers 13

    const/4 v10, 0x2

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap8(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v4

    if-eqz v4, :cond_d

    return-void

    :cond_d
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_16

    return-void

    :cond_16
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v4, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap14(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)I

    move-result v4

    packed-switch v4, :pswitch_data_29c

    :pswitch_3d
    const-string/jumbo v4, "CaptureModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " afState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " aeState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v6, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap14(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7e
    :goto_7e
    :pswitch_7e
    return-void

    :pswitch_7f
    const-string/jumbo v4, "CaptureModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "STATE_WAITING_AF_LOCK id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " afState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " aeState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v8, v4, :cond_bb

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v9, v4, :cond_cb

    :cond_bb
    :goto_bb
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get2(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[J

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    aput-wide v6, v4, v3

    invoke-direct {p0, v0, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->onAfDone(Ljava/lang/Integer;I)V

    goto :goto_7e

    :cond_cb
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v10, v4, :cond_bb

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x6

    if-eq v5, v4, :cond_bb

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get19(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[I

    move-result-object v4

    aget v4, v4, v3

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v5

    if-ne v4, v5, :cond_7e

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_7e

    goto :goto_bb

    :pswitch_f1
    const-string/jumbo v4, "CaptureModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "STATE_WAITING_PRECAPTURE id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " afState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " aeState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_129

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v9, :cond_142

    :cond_129
    :goto_129
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get22(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[I

    move-result-object v4

    aget v4, v4, v3

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v5

    if-ne v4, v5, :cond_7e

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v4, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap23(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    goto/16 :goto_7e

    :cond_142
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v8, :cond_129

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v10, :cond_7e

    goto :goto_129

    :pswitch_14f
    const-string/jumbo v4, "CaptureModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "STATE_WAITING_AE_LOCK id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " afState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " aeState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_188

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7e

    :cond_188
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    const/4 v5, 0x6

    invoke-static {v4, v3, v5}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap32(Lcom/android/camera/camera_adapter/camera2/CaptureModule;II)V

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get1(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[J

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    aput-wide v6, v4, v3

    const-string/jumbo v4, "CaptureModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "aeAfTime["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v6}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get1(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[J

    move-result-object v6

    aget-wide v6, v6, v3

    iget-object v8, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v8}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get11(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " aeTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v6}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get1(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[J

    move-result-object v6

    aget-wide v6, v6, v3

    iget-object v8, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v8}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-get2(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)[J

    move-result-object v8

    aget-wide v8, v8, v3

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget v4, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->MONO_ID:I

    if-ne v4, v3, :cond_1fb

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap4(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)Z

    move-result v4

    if-eqz v4, :cond_1fb

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v4}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap34(Lcom/android/camera/camera_adapter/camera2/CaptureModule;)V

    :cond_1fb
    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v4, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap17(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)V

    goto/16 :goto_7e

    :pswitch_202
    const-string/jumbo v4, "CaptureModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "STATE_WAITING_TOUCH_FOCUS id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " afState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " aeState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v4, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap11(Lcom/android/camera/camera_adapter/camera2/CaptureModule;I)I

    move-result v2

    if-eqz v2, :cond_24a

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v4

    if-ne v2, v4, :cond_24a

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v4, v3, v7}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap31(Lcom/android/camera/camera_adapter/camera2/CaptureModule;II)V

    const/4 v2, 0x0

    :cond_24a
    if-nez v2, :cond_7e

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v8, v4, :cond_258

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v9, v4, :cond_7e

    :cond_258
    invoke-direct {p0, v0, v3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->onAfDone(Ljava/lang/Integer;I)V

    goto/16 :goto_7e

    :pswitch_25d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v8, v4, :cond_26a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-eq v5, v4, :cond_7e

    :cond_26a
    const-string/jumbo v4, "CaptureModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "STATE_AF_AE_LOCKED id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " afState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " aeState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7e

    :pswitch_data_29c
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_7f
        :pswitch_f1
        :pswitch_14f
        :pswitch_3d
        :pswitch_202
        :pswitch_25d
    .end packed-switch
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 6

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v1, p3, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap38(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Landroid/hardware/camera2/CaptureResult;I)V

    invoke-direct {p0, p3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->process(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .registers 6

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->this$0:Lcom/android/camera/camera_adapter/camera2/CaptureModule;

    invoke-static {v1, p3, v0}, Lcom/android/camera/camera_adapter/camera2/CaptureModule;->-wrap38(Lcom/android/camera/camera_adapter/camera2/CaptureModule;Landroid/hardware/camera2/CaptureResult;I)V

    invoke-direct {p0, p3}, Lcom/android/camera/camera_adapter/camera2/CaptureModule$1;->process(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method
