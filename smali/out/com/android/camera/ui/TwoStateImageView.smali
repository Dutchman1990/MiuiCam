.class public Lcom/android/camera/ui/TwoStateImageView;
.super Landroid/widget/ImageView;
.source "TwoStateImageView.java"


# instance fields
.field private final DISABLED_ALPHA:F

.field private mFilterEnabled:Z

.field private mFilterInPressState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/TwoStateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/android/camera/ui/TwoStateImageView;->DISABLED_ALPHA:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/TwoStateImageView;->mFilterEnabled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/TwoStateImageView;->mFilterInPressState:Z

    return-void
.end method


# virtual methods
.method public enableFilter(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/camera/ui/TwoStateImageView;->mFilterEnabled:Z

    return-void
.end method

.method public enablePressFilter(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/camera/ui/TwoStateImageView;->mFilterInPressState:Z

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/android/camera/ui/TwoStateImageView;->mFilterEnabled:Z

    if-eqz v0, :cond_e

    if-eqz p1, :cond_f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TwoStateImageView;->setAlpha(F)V

    :cond_e
    :goto_e
    return-void

    :cond_f
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TwoStateImageView;->setAlpha(F)V

    goto :goto_e
.end method

.method public setPressed(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/camera/ui/TwoStateImageView;->mFilterInPressState:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/camera/ui/TwoStateImageView;->mFilterInPressState:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/camera/ui/TwoStateImageView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_11

    if-eqz p1, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_10
.end method
