.class public Lcom/android/camera/ui/TwoStateTextView;
.super Landroid/widget/TextView;
.source "TwoStateTextView.java"


# instance fields
.field private final DISABLED_ALPHA:F

.field private mFilterEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/TwoStateTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/android/camera/ui/TwoStateTextView;->DISABLED_ALPHA:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/TwoStateTextView;->mFilterEnabled:Z

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/android/camera/ui/TwoStateTextView;->mFilterEnabled:Z

    if-eqz v0, :cond_e

    if-eqz p1, :cond_f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TwoStateTextView;->setAlpha(F)V

    :cond_e
    :goto_e
    return-void

    :cond_f
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TwoStateTextView;->setAlpha(F)V

    goto :goto_e
.end method
