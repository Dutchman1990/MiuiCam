.class public Lcom/android/camera/module/Base2Module$DecodeTask;
.super Landroid/os/AsyncTask;
.source "Base2Module.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/Base2Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DecodeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mData:[B

.field private mMirror:Z

.field private mOrientation:I

.field final synthetic this$0:Lcom/android/camera/module/Base2Module;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Base2Module;[BIZ)V
    .registers 7

    iput-object p1, p0, Lcom/android/camera/module/Base2Module$DecodeTask;->this$0:Lcom/android/camera/module/Base2Module;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/camera/module/Base2Module$DecodeTask;->mData:[B

    iput p3, p0, Lcom/android/camera/module/Base2Module$DecodeTask;->mOrientation:I

    iput-boolean p4, p0, Lcom/android/camera/module/Base2Module$DecodeTask;->mMirror:Z

    iget v1, p0, Lcom/android/camera/module/Base2Module$DecodeTask;->mOrientation:I

    if-gez v1, :cond_1b

    iget-object v1, p0, Lcom/android/camera/module/Base2Module$DecodeTask;->mData:[B

    invoke-static {v1}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/gallery3d/exif/ExifInterface;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/Base2Module$DecodeTask;->mOrientation:I

    :cond_1b
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .registers 9

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/module/Base2Module$DecodeTask;->mData:[B

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/android/camera/Util;->downSample([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/module/Base2Module$DecodeTask;->mOrientation:I

    if-nez v2, :cond_10

    iget-boolean v2, p0, Lcom/android/camera/module/Base2Module$DecodeTask;->mMirror:Z

    if-eqz v2, :cond_37

    :cond_10
    if-eqz v0, :cond_37

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget-boolean v2, p0, Lcom/android/camera/module/Base2Module$DecodeTask;->mMirror:Z

    if-eqz v2, :cond_22

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    :cond_22
    iget v2, p0, Lcom/android/camera/module/Base2Module$DecodeTask;->mOrientation:I

    int-to-float v2, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    :cond_37
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/Base2Module$DecodeTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 2

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/Base2Module$DecodeTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
