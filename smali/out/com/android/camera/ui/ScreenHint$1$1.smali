.class Lcom/android/camera/ui/ScreenHint$1$1;
.super Ljava/lang/Object;
.source "ScreenHint.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ScreenHint$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ui/ScreenHint$1;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ScreenHint$1;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/ScreenHint$1$1;->this$1:Lcom/android/camera/ui/ScreenHint$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint$1$1;->this$1:Lcom/android/camera/ui/ScreenHint$1;

    iget-object v0, v0, Lcom/android/camera/ui/ScreenHint$1;->this$0:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->dismissFrontCameraFirstUseHint()V

    return-void
.end method
