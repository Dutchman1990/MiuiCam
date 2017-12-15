.class Lcom/android/camera/ui/UIController$2;
.super Ljava/lang/Object;
.source "UIController.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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

    iput-object p1, p0, Lcom/android/camera/ui/UIController$2;->this$0:Lcom/android/camera/ui/UIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/android/camera/ui/UIController$2;->this$0:Lcom/android/camera/ui/UIController;

    invoke-static {v0, p1}, Lcom/android/camera/ui/UIController;->-set3(Lcom/android/camera/ui/UIController;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/android/camera/ui/UIController$2;->this$0:Lcom/android/camera/ui/UIController;

    invoke-static {v0}, Lcom/android/camera/ui/UIController;->-get2(Lcom/android/camera/ui/UIController;)Landroid/renderscript/Allocation;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/camera/ui/UIController$2;->this$0:Lcom/android/camera/ui/UIController;

    invoke-static {v0}, Lcom/android/camera/ui/UIController;->-get2(Lcom/android/camera/ui/UIController;)Landroid/renderscript/Allocation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/UIController$2;->this$0:Lcom/android/camera/ui/UIController;

    invoke-static {v1}, Lcom/android/camera/ui/UIController;->-get5(Lcom/android/camera/ui/UIController;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->setSurface(Landroid/view/Surface;)V

    :cond_20
    iget-object v0, p0, Lcom/android/camera/ui/UIController$2;->this$0:Lcom/android/camera/ui/UIController;

    invoke-static {v0}, Lcom/android/camera/ui/UIController;->-wrap1(Lcom/android/camera/ui/UIController;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2

    return-void
.end method
