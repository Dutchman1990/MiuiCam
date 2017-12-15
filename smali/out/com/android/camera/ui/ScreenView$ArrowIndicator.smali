.class public Lcom/android/camera/ui/ScreenView$ArrowIndicator;
.super Landroid/widget/ImageView;
.source "ScreenView.java"

# interfaces
.implements Lcom/android/camera/ui/ScreenView$Indicator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ArrowIndicator"
.end annotation


# virtual methods
.method public fastOffset(I)Z
    .registers 4

    iget v0, p0, Lcom/android/camera/ui/ScreenView$ArrowIndicator;->mLeft:I

    if-eq v0, p1, :cond_10

    iget v0, p0, Lcom/android/camera/ui/ScreenView$ArrowIndicator;->mRight:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/camera/ui/ScreenView$ArrowIndicator;->mLeft:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView$ArrowIndicator;->mRight:I

    iput p1, p0, Lcom/android/camera/ui/ScreenView$ArrowIndicator;->mLeft:I

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method
