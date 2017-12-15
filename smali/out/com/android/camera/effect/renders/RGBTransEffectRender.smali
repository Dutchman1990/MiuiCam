.class public abstract Lcom/android/camera/effect/renders/RGBTransEffectRender;
.super Lcom/android/camera/effect/renders/PixelEffectRender;
.source "RGBTransEffectRender.java"


# static fields
.field private static final sTextureIds:[I


# instance fields
.field protected mRGBLutId:I

.field protected mRGBLutLoaded:Z

.field protected mUniformRGBLutH:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/effect/renders/RGBTransEffectRender;->sTextureIds:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/PixelEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    return-void
.end method


# virtual methods
.method protected bindExtraTexture()V
    .registers 3

    invoke-super {p0}, Lcom/android/camera/effect/renders/PixelEffectRender;->bindExtraTexture()V

    iget v0, p0, Lcom/android/camera/effect/renders/RGBTransEffectRender;->mRGBLutId:I

    const v1, 0x84c1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/effect/renders/RGBTransEffectRender;->bindTexture(II)Z

    return-void
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/effect/renders/RGBTransEffectRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/camera/effect/renders/RGBTransEffectRender;->mRGBLutLoaded:Z

    if-eqz v0, :cond_2b

    const-string/jumbo v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "delete RGBTransEffectRender texture = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/effect/renders/RGBTransEffectRender;->mRGBLutId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/effect/renders/RGBTransEffectRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    iget v1, p0, Lcom/android/camera/effect/renders/RGBTransEffectRender;->mRGBLutId:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->deleteTexture(I)Z

    :cond_2b
    invoke-super {p0}, Lcom/android/camera/effect/renders/PixelEffectRender;->finalize()V

    return-void
.end method

.method protected initShader()V
    .registers 3

    invoke-super {p0}, Lcom/android/camera/effect/renders/PixelEffectRender;->initShader()V

    iget v0, p0, Lcom/android/camera/effect/renders/RGBTransEffectRender;->mProgram:I

    const-string/jumbo v1, "sRGBLut"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/RGBTransEffectRender;->mUniformRGBLutH:I

    return-void
.end method

.method protected initShaderValue(Z)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/PixelEffectRender;->initShaderValue(Z)V

    iget v0, p0, Lcom/android/camera/effect/renders/RGBTransEffectRender;->mUniformRGBLutH:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method

.method public setRGBTransLutBuffer(Ljava/nio/IntBuffer;)V
    .registers 11

    const/16 v2, 0x1908

    const/high16 v6, 0x46180000    # 9728.0f

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xde1

    sget-object v3, Lcom/android/camera/effect/renders/RGBTransEffectRender;->sTextureIds:[I

    invoke-static {v4, v3, v1}, Lcom/android/gallery3d/ui/GLId;->glGenTextures(I[II)V

    sget-object v3, Lcom/android/camera/effect/renders/RGBTransEffectRender;->sTextureIds:[I

    aget v3, v3, v1

    iput v3, p0, Lcom/android/camera/effect/renders/RGBTransEffectRender;->mRGBLutId:I

    iget v3, p0, Lcom/android/camera/effect/renders/RGBTransEffectRender;->mRGBLutId:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0x2802

    const v5, 0x812f

    invoke-static {v0, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2803

    const v5, 0x812f

    invoke-static {v0, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2801

    invoke-static {v0, v3, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2800

    invoke-static {v0, v3, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->capacity()I

    move-result v3

    const/16 v7, 0x1401

    move v5, v1

    move v6, v2

    move-object v8, p1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    iput-boolean v4, p0, Lcom/android/camera/effect/renders/RGBTransEffectRender;->mRGBLutLoaded:Z

    return-void
.end method
