.class Lcom/android/camera/ui/UIController$1;
.super Ljava/lang/Object;
.source "UIController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/UIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/UIController;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/UIController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/UIController$1;->this$0:Lcom/android/camera/ui/UIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/UIController$1;->this$0:Lcom/android/camera/ui/UIController;

    invoke-static {v0}, Lcom/android/camera/ui/UIController;->-get0(Lcom/android/camera/ui/UIController;)Lcom/android/camera/ui/MutexView;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/camera/ui/UIController$1;->this$0:Lcom/android/camera/ui/UIController;

    invoke-static {v0}, Lcom/android/camera/ui/UIController;->-get0(Lcom/android/camera/ui/UIController;)Lcom/android/camera/ui/MutexView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/MutexView;->show()V

    iget-object v0, p0, Lcom/android/camera/ui/UIController$1;->this$0:Lcom/android/camera/ui/UIController;

    invoke-static {v0, v1}, Lcom/android/camera/ui/UIController;->-set1(Lcom/android/camera/ui/UIController;Lcom/android/camera/ui/MutexView;)Lcom/android/camera/ui/MutexView;

    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/android/camera/ui/UIController$1;->this$0:Lcom/android/camera/ui/UIController;

    iget-object v0, v0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPage;->updateOrientationLayout(Z)V

    goto :goto_17
.end method
