.class public Lcom/android/camera/camera_adapter/camera2/FocusStateListener;
.super Ljava/lang/Object;
.source "FocusStateListener.java"


# instance fields
.field private mFocusView:Lcom/android/camera/ui/FocusView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/FocusView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/FocusStateListener;->mFocusView:Lcom/android/camera/ui/FocusView;

    return-void
.end method


# virtual methods
.method public onFocusStatusUpdate(I)V
    .registers 4

    packed-switch p1, :pswitch_data_6e

    :goto_3
    return-void

    :pswitch_4
    const-string/jumbo v0, "FocusStateListener"

    const-string/jumbo v1, "CONTROL_AF_STATE_ACTIVE_SCAN showStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/FocusStateListener;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->showStart()V

    goto :goto_3

    :pswitch_13
    const-string/jumbo v0, "FocusStateListener"

    const-string/jumbo v1, "CONTROL_AF_STATE_FOCUSED_LOCKED showSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/FocusStateListener;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->showSuccess()V

    goto :goto_3

    :pswitch_22
    const-string/jumbo v0, "FocusStateListener"

    const-string/jumbo v1, "CONTROL_AF_STATE_NOT_FOCUSED_LOCKED showFail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/FocusStateListener;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->showFail()V

    goto :goto_3

    :pswitch_31
    const-string/jumbo v0, "FocusStateListener"

    const-string/jumbo v1, "CONTROL_AF_STATE_PASSIVE_FOCUSED showSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/FocusStateListener;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->showSuccess()V

    goto :goto_3

    :pswitch_40
    const-string/jumbo v0, "FocusStateListener"

    const-string/jumbo v1, "CONTROL_AF_STATE_PASSIVE_SCAN showStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/FocusStateListener;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->showStart()V

    goto :goto_3

    :pswitch_4f
    const-string/jumbo v0, "FocusStateListener"

    const-string/jumbo v1, "CONTROL_AF_STATE_PASSIVE_UNFOCUSED showFail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/FocusStateListener;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->showFail()V

    goto :goto_3

    :pswitch_5e
    const-string/jumbo v0, "FocusStateListener"

    const-string/jumbo v1, "CONTROL_AF_STATE_INACTIVE clear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/FocusStateListener;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->clear()V

    goto :goto_3

    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_40
        :pswitch_31
        :pswitch_4
        :pswitch_13
        :pswitch_22
        :pswitch_4f
    .end packed-switch
.end method
