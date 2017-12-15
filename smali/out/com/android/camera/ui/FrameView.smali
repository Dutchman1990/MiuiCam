.class public abstract Lcom/android/camera/ui/FrameView;
.super Landroid/view/View;
.source "FrameView.java"

# interfaces
.implements Lcom/android/camera/ui/FocusIndicator;
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field private final LOGV:Z

.field protected mIsBigEnoughRect:Z

.field protected mMatrix:Landroid/graphics/Matrix;

.field protected mOrientation:I

.field protected mPause:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FrameView;->LOGV:Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FrameView;->mMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 1

    return-void
.end method

.method public faceExists()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getFocusRect()Landroid/graphics/RectF;
.end method

.method public isNeedExposure()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/ui/FrameView;->mIsBigEnoughRect:Z

    return v0
.end method

.method public pause()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FrameView;->mPause:Z

    return-void
.end method

.method public resume()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FrameView;->mPause:Z

    return-void
.end method

.method public setOrientation(IZ)V
    .registers 3

    iput p1, p0, Lcom/android/camera/ui/FrameView;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/camera/ui/FrameView;->invalidate()V

    return-void
.end method

.method public showFail()V
    .registers 1

    return-void
.end method

.method public showStart()V
    .registers 1

    return-void
.end method

.method public showSuccess()V
    .registers 1

    return-void
.end method
