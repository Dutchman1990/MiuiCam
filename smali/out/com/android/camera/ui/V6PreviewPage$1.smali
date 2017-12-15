.class Lcom/android/camera/ui/V6PreviewPage$1;
.super Ljava/lang/Object;
.source "V6PreviewPage.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6PreviewPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6PreviewPage;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6PreviewPage;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/V6PreviewPage$1;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 11

    if-ne p2, p6, :cond_9

    if-ne p4, p8, :cond_9

    if-ne p3, p7, :cond_9

    if-ne p5, p9, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$1;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$1;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {v0}, Lcom/android/camera/ui/V6PreviewPage;->-get0(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1d

    :cond_17
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$1;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {v0}, Lcom/android/camera/ui/V6PreviewPage;->-wrap3(Lcom/android/camera/ui/V6PreviewPage;)V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$1;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$1;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {v0}, Lcom/android/camera/ui/V6PreviewPage;->-get1(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;

    move-result-object v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$1;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_1c

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$1;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-static {v0}, Lcom/android/camera/ui/V6PreviewPage;->-wrap2(Lcom/android/camera/ui/V6PreviewPage;)V

    goto :goto_1c
.end method
