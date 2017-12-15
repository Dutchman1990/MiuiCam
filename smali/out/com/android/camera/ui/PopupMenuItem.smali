.class public Lcom/android/camera/ui/PopupMenuItem;
.super Landroid/widget/RelativeLayout;
.source "PopupMenuItem.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field private final DISABLED_ALPHA:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/android/camera/ui/PopupMenuItem;->DISABLED_ALPHA:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/android/camera/ui/PopupMenuItem;->DISABLED_ALPHA:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/android/camera/ui/PopupMenuItem;->DISABLED_ALPHA:F

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    if-eqz p1, :cond_b

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PopupMenuItem;->setAlpha(F)V

    :goto_a
    return-void

    :cond_b
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/PopupMenuItem;->setAlpha(F)V

    goto :goto_a
.end method

.method public setOrientation(IZ)V
    .registers 9

    neg-int p1, p1

    if-ltz p1, :cond_1a

    rem-int/lit16 p1, p1, 0x168

    :goto_5
    invoke-virtual {p0}, Lcom/android/camera/ui/PopupMenuItem;->getRotation()F

    move-result v3

    float-to-int v2, v3

    if-ltz v2, :cond_1f

    rem-int/lit16 v1, v2, 0x168

    :goto_e
    sub-int v0, p1, v1

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lcom/android/camera/ui/PopupMenuItem;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void

    :cond_1a
    rem-int/lit16 v3, p1, 0x168

    add-int/lit16 p1, v3, 0x168

    goto :goto_5

    :cond_1f
    rem-int/lit16 v3, v2, 0x168

    add-int/lit16 v1, v3, 0x168

    goto :goto_e

    :cond_24
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0xb4

    if-le v3, v4, :cond_30

    if-ltz v0, :cond_4e

    add-int/lit16 v0, v0, -0x168

    :cond_30
    :goto_30
    if-eqz p2, :cond_51

    invoke-virtual {p0}, Lcom/android/camera/ui/PopupMenuItem;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    add-int v4, v2, v0

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    div-int/lit16 v4, v4, 0x10e

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :goto_4d
    return-void

    :cond_4e
    add-int/lit16 v0, v0, 0x168

    goto :goto_30

    :cond_51
    invoke-virtual {p0}, Lcom/android/camera/ui/PopupMenuItem;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    add-int v4, v2, v0

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_4d
.end method
