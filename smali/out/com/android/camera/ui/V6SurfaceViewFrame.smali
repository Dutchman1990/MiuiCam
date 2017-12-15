.class public Lcom/android/camera/ui/V6SurfaceViewFrame;
.super Landroid/widget/FrameLayout;
.source "V6SurfaceViewFrame.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/android/camera/ui/V6FunctionUI;


# instance fields
.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mSurfaceManager:Lcom/android/camera/ui/V6SurfaceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public enableControls(Z)V
    .registers 2

    return-void
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/V6SurfaceViewFrame;->mSurfaceManager:Lcom/android/camera/ui/V6SurfaceManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SurfaceManager;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    return-object v0
.end method

.method public initSurfaceView()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/V6SurfaceViewFrame;->mSurfaceManager:Lcom/android/camera/ui/V6SurfaceManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SurfaceManager;->initializeSurfaceView()V

    return-void
.end method

.method public isSurfaceViewAvailable()Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SurfaceViewFrame;->isSurfaceViewVisible()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/android/camera/ui/V6SurfaceViewFrame;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public isSurfaceViewVisible()Z
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/V6SurfaceViewFrame;->mSurfaceManager:Lcom/android/camera/ui/V6SurfaceManager;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SurfaceManager;->isSurfaceViewVisible()Z

    move-result v0

    return v0
.end method

.method public onCameraOpen()V
    .registers 1

    return-void
.end method

.method public onCreate()V
    .registers 1

    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0, p0}, Lcom/android/camera/ui/V6SurfaceViewFrame;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v0, Lcom/android/camera/ui/V6SurfaceManager;

    iget-object v1, p0, Lcom/android/camera/ui/V6SurfaceViewFrame;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/camera/ui/V6SurfaceManager;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6SurfaceViewFrame;->mSurfaceManager:Lcom/android/camera/ui/V6SurfaceManager;

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 16

    const v2, 0x7f090084

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/camera/ui/V6SurfaceViewFrame;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/camera/ui/V6SurfaceViewFrame;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x2

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/ui/V6SurfaceViewFrame;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x3

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_20
    return-void
.end method

.method public onPause()V
    .registers 1

    return-void
.end method

.method public onResume()V
    .registers 1

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 11

    iget-object v0, p0, Lcom/android/camera/ui/V6SurfaceViewFrame;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/camera/ui/V6SurfaceViewFrame;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, p3, p4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v1, 0x0

    const v2, 0x7f090084

    const/4 v3, 0x2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_18
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .registers 3

    iput-object p1, p0, Lcom/android/camera/ui/V6SurfaceViewFrame;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    iget-object v0, p0, Lcom/android/camera/ui/V6SurfaceViewFrame;->mSurfaceManager:Lcom/android/camera/ui/V6SurfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6SurfaceManager;->setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V

    return-void
.end method

.method public setSurfaceViewVisible(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/V6SurfaceViewFrame;->mSurfaceManager:Lcom/android/camera/ui/V6SurfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6SurfaceManager;->setSurfaceViewVisible(Z)V

    return-void
.end method
