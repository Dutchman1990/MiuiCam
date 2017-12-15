.class Lcom/android/camera/FocusManager$MainHandler;
.super Landroid/os/Handler;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/FocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/FocusManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/FocusManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    invoke-static {v0}, Lcom/android/camera/FocusManager;->-wrap0(Lcom/android/camera/FocusManager;)V

    iget-object v0, p0, Lcom/android/camera/FocusManager$MainHandler;->this$0:Lcom/android/camera/FocusManager;

    invoke-static {v0}, Lcom/android/camera/FocusManager;->-get0(Lcom/android/camera/FocusManager;)Lcom/android/camera/FocusManager$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->startFaceDetection()V

    goto :goto_5

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method
