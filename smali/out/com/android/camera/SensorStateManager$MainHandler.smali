.class Lcom/android/camera/SensorStateManager$MainHandler;
.super Landroid/os/Handler;
.source "SensorStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SensorStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SensorStateManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/SensorStateManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/camera/SensorStateManager$MainHandler;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1c

    :goto_6
    return-void

    :pswitch_7
    iget-object v0, p0, Lcom/android/camera/SensorStateManager$MainHandler;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v0}, Lcom/android/camera/SensorStateManager;->-wrap2(Lcom/android/camera/SensorStateManager;)V

    goto :goto_6

    :pswitch_d
    iget-object v1, p0, Lcom/android/camera/SensorStateManager$MainHandler;->this$0:Lcom/android/camera/SensorStateManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v0, :cond_19

    :goto_15
    invoke-static {v1, v2, v0}, Lcom/android/camera/SensorStateManager;->-wrap5(Lcom/android/camera/SensorStateManager;IZ)V

    goto :goto_6

    :cond_19
    const/4 v0, 0x0

    goto :goto_15

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_7
        :pswitch_d
    .end packed-switch
.end method
