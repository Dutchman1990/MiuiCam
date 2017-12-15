.class Lcom/android/camera/CameraHolder$MyHandler;
.super Landroid/os/Handler;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraHolder;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraHolder;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/camera/CameraHolder$MyHandler;->this$0:Lcom/android/camera/CameraHolder;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1c

    :goto_5
    return-void

    :pswitch_6
    iget-object v1, p0, Lcom/android/camera/CameraHolder$MyHandler;->this$0:Lcom/android/camera/CameraHolder;

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lcom/android/camera/CameraHolder$MyHandler;->this$0:Lcom/android/camera/CameraHolder;

    invoke-static {v0}, Lcom/android/camera/CameraHolder;->-get0(Lcom/android/camera/CameraHolder;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/camera/CameraHolder$MyHandler;->this$0:Lcom/android/camera/CameraHolder;

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_18

    :cond_16
    monitor-exit v1

    goto :goto_5

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
