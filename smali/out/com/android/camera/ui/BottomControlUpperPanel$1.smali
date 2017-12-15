.class Lcom/android/camera/ui/BottomControlUpperPanel$1;
.super Ljava/lang/Object;
.source "BottomControlUpperPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/BottomControlUpperPanel;->animateOut(Ljava/lang/Runnable;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/BottomControlUpperPanel;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/BottomControlUpperPanel;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/android/camera/ui/BottomControlUpperPanel$1;->this$0:Lcom/android/camera/ui/BottomControlUpperPanel;

    iput-object p2, p0, Lcom/android/camera/ui/BottomControlUpperPanel$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel$1;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel$1;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_9
    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel$1;->this$0:Lcom/android/camera/ui/BottomControlUpperPanel;

    invoke-static {v0}, Lcom/android/camera/ui/BottomControlUpperPanel;->-get0(Lcom/android/camera/ui/BottomControlUpperPanel;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/camera/ui/BottomControlUpperPanel$1;->this$0:Lcom/android/camera/ui/BottomControlUpperPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BottomControlUpperPanel;->setVisibility(I)V

    :cond_18
    return-void
.end method
