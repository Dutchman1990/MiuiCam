.class Lcom/android/camera/ui/UIController$5;
.super Ljava/lang/Object;
.source "UIController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/UIController;->getMonoDummySurface()Landroid/view/Surface;
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

    iput-object p1, p0, Lcom/android/camera/ui/UIController$5;->this$0:Lcom/android/camera/ui/UIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/camera/ui/UIController$5;->this$0:Lcom/android/camera/ui/UIController;

    invoke-static {v0}, Lcom/android/camera/ui/UIController;->-get5(Lcom/android/camera/ui/UIController;)Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/UIController$5;->this$0:Lcom/android/camera/ui/UIController;

    invoke-static {v1}, Lcom/android/camera/ui/UIController;->-get4(Lcom/android/camera/ui/UIController;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/UIController$5;->this$0:Lcom/android/camera/ui/UIController;

    invoke-static {v2}, Lcom/android/camera/ui/UIController;->-get3(Lcom/android/camera/ui/UIController;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    iget-object v0, p0, Lcom/android/camera/ui/UIController$5;->this$0:Lcom/android/camera/ui/UIController;

    invoke-static {v0}, Lcom/android/camera/ui/UIController;->-get6(Lcom/android/camera/ui/UIController;)Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->setVisibility(I)V

    return-void
.end method
