.class public Lcom/android/camera/ui/V6SurfaceManager;
.super Ljava/lang/Object;
.source "V6SurfaceManager.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mInitialized:Z

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceParent:Landroid/widget/FrameLayout;

.field private mSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceParent:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public initializeSurfaceView()V
    .registers 7

    const v5, 0x7f09009c

    const/4 v4, 0x0

    const-string/jumbo v1, "V6SurfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initializeSurfaceView mSurfaceView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mInitialized="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/ui/V6SurfaceManager;->mInitialized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceParent:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez v1, :cond_87

    iget-object v1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceParent:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez v1, :cond_5c

    iget-object v1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceParent:Landroid/widget/FrameLayout;

    const v3, 0x7f04002e

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceParent:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    :cond_5c
    iget-boolean v1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mInitialized:Z

    if-nez v1, :cond_86

    iget-object v1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v1, :cond_86

    iget-object v1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mInitialized:Z

    const-string/jumbo v1, "V6SurfaceManager"

    const-string/jumbo v2, "Using mdp_preview_content (MDP path)"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    :goto_86
    return-void

    :cond_87
    iget-object v1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_86
.end method

.method public isSurfaceViewVisible()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    return-void
.end method

.method public setSurfaceViewVisible(Z)V
    .registers 6

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceParent:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_17

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz p1, :cond_19

    :goto_13
    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_16
    return-void

    :cond_17
    move v0, v2

    goto :goto_8

    :cond_19
    move v1, v2

    goto :goto_13
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 8

    const-string/jumbo v0, "V6SurfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "surfaceChanged: width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mSurfaceHolder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " holder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 8

    const/4 v4, 0x0

    const-string/jumbo v0, "V6SurfaceManager"

    const-string/jumbo v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/android/camera/ui/V6SurfaceManager;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x0

    const v2, 0x7f09009c

    const/4 v3, 0x2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4

    const-string/jumbo v0, "V6SurfaceManager"

    const-string/jumbo v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method
