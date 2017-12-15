.class Lcom/android/camera/module/VideoModule$MainHandler$1;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/VideoModule$MainHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/module/VideoModule$MainHandler;


# direct methods
.method constructor <init>(Lcom/android/camera/module/VideoModule$MainHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/module/VideoModule$MainHandler$1;->this$1:Lcom/android/camera/module/VideoModule$MainHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler$1;->this$1:Lcom/android/camera/module/VideoModule$MainHandler;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4b

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler$1;->this$1:Lcom/android/camera/module/VideoModule$MainHandler;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6RecordingTimeView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler$1;->this$1:Lcom/android/camera/module/VideoModule$MainHandler;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x96

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/V6RecordingTimeView;->animateIn(Ljava/lang/Runnable;IZ)V

    :cond_3a
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler$1;->this$1:Lcom/android/camera/module/VideoModule$MainHandler;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->-get10(Lcom/android/camera/module/VideoModule;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler$1;->this$1:Lcom/android/camera/module/VideoModule$MainHandler;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0, v4}, Lcom/android/camera/module/VideoModule;->-set1(Lcom/android/camera/module/VideoModule;I)I

    :cond_4b
    return-void
.end method
