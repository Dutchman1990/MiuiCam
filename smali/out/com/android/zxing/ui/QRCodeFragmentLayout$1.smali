.class Lcom/android/zxing/ui/QRCodeFragmentLayout$1;
.super Ljava/lang/Object;
.source "QRCodeFragmentLayout.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/zxing/ui/QRCodeFragmentLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/zxing/ui/QRCodeFragmentLayout;


# direct methods
.method constructor <init>(Lcom/android/zxing/ui/QRCodeFragmentLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout$1;->this$0:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 12

    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout$1;->this$0:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->-get0(Lcom/android/zxing/ui/QRCodeFragmentLayout;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout$1;->this$0:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->-get1(Lcom/android/zxing/ui/QRCodeFragmentLayout;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f020021

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_22
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout$1;->this$0:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->-get1(Lcom/android/zxing/ui/QRCodeFragmentLayout;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->expandViewTouchDelegate(Landroid/view/View;)V

    return-void

    :cond_2c
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout$1;->this$0:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    invoke-static {v0}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->-get1(Lcom/android/zxing/ui/QRCodeFragmentLayout;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f020020

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_22
.end method
