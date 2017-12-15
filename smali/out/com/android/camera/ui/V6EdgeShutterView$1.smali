.class Lcom/android/camera/ui/V6EdgeShutterView$1;
.super Landroid/os/Handler;
.source "V6EdgeShutterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6EdgeShutterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6EdgeShutterView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6EdgeShutterView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/V6EdgeShutterView$1;->this$0:Lcom/android/camera/ui/V6EdgeShutterView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView$1;->this$0:Lcom/android/camera/ui/V6EdgeShutterView;

    invoke-static {v0}, Lcom/android/camera/ui/V6EdgeShutterView;->-wrap1(Lcom/android/camera/ui/V6EdgeShutterView;)V

    goto :goto_5

    :pswitch_c
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView$1;->this$0:Lcom/android/camera/ui/V6EdgeShutterView;

    invoke-static {v0}, Lcom/android/camera/ui/V6EdgeShutterView;->-wrap0(Lcom/android/camera/ui/V6EdgeShutterView;)V

    goto :goto_5

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
