.class Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;
.super Landroid/os/Handler;
.source "ClearSightImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearsightRegisterHandler"
.end annotation


# instance fields
.field private mNamedEntity:Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

.field final synthetic this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;


# direct methods
.method constructor <init>(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private onFailure()V
    .registers 2

    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->reset()V

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-wrap3(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)V

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;

    move-result-object v0

    invoke-interface {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$Callback;->onClearSightFailure()V

    :cond_1d
    return-void
.end method

.method private registerImage(Landroid/os/Message;)V
    .registers 6

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_1b

    const/4 v1, 0x1

    :goto_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/Image;

    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->hasReferenceImage(Z)Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->setReferenceImage(ZLandroid/media/Image;)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    const/4 v1, 0x0

    goto :goto_5

    :cond_1d
    invoke-static {}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->getInstance()Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;->registerImage(ZLandroid/media/Image;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string/jumbo v2, "CSImageProcessor"

    const-string/jumbo v3, "registerImage : terminal error with input image"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-wrap1(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string/jumbo v0, "CSImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "register - drop msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_26
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_6a

    :goto_2b
    return-void

    :sswitch_2c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->mNamedEntity:Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    goto :goto_2b

    :sswitch_33
    invoke-direct {p0, p1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->registerImage(Landroid/os/Message;)V

    goto :goto_2b

    :sswitch_37
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v1, :cond_48

    const-string/jumbo v0, "CSImageProcessor"

    const-string/jumbo v1, "ClearsightRegisterHandler - handleTimeout"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->onFailure()V

    goto :goto_2b

    :cond_48
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_59

    const-string/jumbo v0, "CSImageProcessor"

    const-string/jumbo v1, "ClearsightRegisterHandler - handleFailure"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->onFailure()V

    goto :goto_2b

    :cond_59
    iget-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->this$0:Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;->-get4(Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor;)Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightRegisterHandler;->mNamedEntity:Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/snapcam/filter/ClearSightImageProcessor$ClearsightProcessHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2b

    :sswitch_data_6a
    .sparse-switch
        0x0 -> :sswitch_2c
        0x1 -> :sswitch_33
        0x6 -> :sswitch_37
    .end sparse-switch
.end method
