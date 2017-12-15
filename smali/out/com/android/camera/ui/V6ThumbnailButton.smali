.class public Lcom/android/camera/ui/V6ThumbnailButton;
.super Lcom/android/camera/ui/V6BottomAnimationViewGroup;
.source "V6ThumbnailButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BORDER:I


# instance fields
.field public mImage:Lcom/android/camera/ui/RotateImageView;

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mValideThumbnail:Z

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6ThumbnailButton;->BORDER:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public enableControls(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6ThumbnailButton;->setEnabled(Z)V

    return-void
.end method

.method public onCameraOpen()V
    .registers 1

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mValideThumbnail:Z

    if-nez v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x0

    const v2, 0x7f09000e

    const/4 v3, 0x2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->onFinishInflate()V

    const v1, 0x7f09000f

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6ThumbnailButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {p0, p0}, Lcom/android/camera/ui/V6ThumbnailButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sget v2, Lcom/android/camera/ui/V6ThumbnailButton;->BORDER:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/RotateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onPause()V
    .registers 1

    return-void
.end method

.method public onResume()V
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6ThumbnailButton;->clearAnimation()V

    iget-object v0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isVideoCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_14
    move v1, v2

    :goto_15
    iput-boolean v1, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mVisible:Z

    iget-boolean v1, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mVisible:Z

    if-eqz v1, :cond_21

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6ThumbnailButton;->setVisibility(I)V

    :goto_1e
    return-void

    :cond_1f
    const/4 v1, 0x1

    goto :goto_15

    :cond_21
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6ThumbnailButton;->setVisibility(I)V

    goto :goto_1e
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    return-void
.end method

.method public setOrientation(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mVisible:Z

    if-nez v0, :cond_6

    const/16 p1, 0x8

    :cond_6
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->setVisibility(I)V

    return-void
.end method

.method public updateThumbnail(Lcom/android/camera/Thumbnail;)V
    .registers 4

    const/4 v1, 0x0

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {p1}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mValideThumbnail:Z

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mValideThumbnail:Z

    goto :goto_f
.end method
