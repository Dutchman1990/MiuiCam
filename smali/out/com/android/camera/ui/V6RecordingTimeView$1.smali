.class Lcom/android/camera/ui/V6RecordingTimeView$1;
.super Ljava/lang/Object;
.source "V6RecordingTimeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/V6RecordingTimeView;->animateOut(Ljava/lang/Runnable;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6RecordingTimeView;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6RecordingTimeView;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/android/camera/ui/V6RecordingTimeView$1;->this$0:Lcom/android/camera/ui/V6RecordingTimeView;

    iput-object p2, p0, Lcom/android/camera/ui/V6RecordingTimeView$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView$1;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView$1;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_9
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView$1;->this$0:Lcom/android/camera/ui/V6RecordingTimeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6RecordingTimeView;->setVisibility(I)V

    return-void
.end method
