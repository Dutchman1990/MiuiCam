.class public Lcom/android/gallery3d/ui/BitmapTexture;
.super Lcom/android/gallery3d/ui/UploadedTexture;
.source "BitmapTexture.java"


# instance fields
.field protected mContentBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Bitmap;Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/UploadedTexture;-><init>(Z)V

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_c
    :goto_c
    invoke-static {v0}, Lcom/android/gallery3d/ui/Utils;->assertTrue(Z)V

    iput-object p1, p0, Lcom/android/gallery3d/ui/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    return-void

    :cond_12
    const/4 v0, 0x1

    goto :goto_c
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .registers 14

    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int v0, v7, p5

    mul-int v1, p4, v6

    if-eq v0, v1, :cond_3b

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    mul-int v0, v7, p5

    mul-int v1, p4, v6

    if-le v0, v1, :cond_2e

    mul-int v0, p5, v7

    div-int v4, v0, v6

    move v5, p5

    sub-int v0, p4, v4

    div-int/lit8 v0, v0, 0x2

    add-int v2, p2, v0

    move v3, p3

    :goto_28
    move-object v0, p0

    move-object v1, p1

    invoke-super/range {v0 .. v5}, Lcom/android/gallery3d/ui/UploadedTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    :goto_2d
    return-void

    :cond_2e
    move v4, p4

    mul-int v0, p4, v6

    div-int v5, v0, v7

    move v2, p2

    sub-int v0, p5, v5

    div-int/lit8 v0, v0, 0x2

    add-int v3, p3, v0

    goto :goto_28

    :cond_3b
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/ui/UploadedTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_2d
.end method

.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
