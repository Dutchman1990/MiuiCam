.class Lcom/android/camera/ui/V6SmartShutterButton$1;
.super Landroid/os/Handler;
.source "V6SmartShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6SmartShutterButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6SmartShutterButton;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6SmartShutterButton;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/V6SmartShutterButton$1;->this$0:Lcom/android/camera/ui/V6SmartShutterButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/android/camera/ui/V6SmartShutterButton$1;->this$0:Lcom/android/camera/ui/V6SmartShutterButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/V6SmartShutterButton;->-set0(Lcom/android/camera/ui/V6SmartShutterButton;I)I

    iget-object v0, p0, Lcom/android/camera/ui/V6SmartShutterButton$1;->this$0:Lcom/android/camera/ui/V6SmartShutterButton;

    invoke-static {v0}, Lcom/android/camera/ui/V6SmartShutterButton;->-wrap0(Lcom/android/camera/ui/V6SmartShutterButton;)V

    goto :goto_5

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
