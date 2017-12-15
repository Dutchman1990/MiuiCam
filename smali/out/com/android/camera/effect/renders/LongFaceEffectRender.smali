.class public Lcom/android/camera/effect/renders/LongFaceEffectRender;
.super Lcom/android/camera/effect/renders/PixelEffectRender;
.source "LongFaceEffectRender.java"


# instance fields
.field private mUniformDirectionH:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/PixelEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    return-void
.end method

.method private getDirection(Z)I
    .registers 6

    if-eqz p1, :cond_23

    iget v2, p0, Lcom/android/camera/effect/renders/LongFaceEffectRender;->mJpegOrientation:I

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/EffectController;->getOrientation()I

    move-result v3

    sub-int v1, v2, v3

    :goto_e
    add-int/lit16 v2, v1, 0x168

    rem-int/lit16 v1, v2, 0x168

    const/4 v0, 0x0

    if-eqz p1, :cond_1d

    iget-boolean v2, p0, Lcom/android/camera/effect/renders/LongFaceEffectRender;->mMirror:Z

    if-eqz v2, :cond_1d

    add-int/lit16 v2, v1, 0xb4

    rem-int/lit16 v1, v2, 0x168

    :cond_1d
    const/16 v2, 0x10e

    if-ne v1, v2, :cond_25

    const/4 v0, 0x3

    :goto_22
    return v0

    :cond_23
    const/4 v1, 0x0

    goto :goto_e

    :cond_25
    const/16 v2, 0xb4

    if-ne v1, v2, :cond_2b

    const/4 v0, 0x2

    goto :goto_22

    :cond_2b
    const/16 v2, 0x5a

    if-ne v1, v2, :cond_31

    const/4 v0, 0x1

    goto :goto_22

    :cond_31
    const/4 v0, 0x0

    goto :goto_22
.end method


# virtual methods
.method public getFragShaderString()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "precision mediump float; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nuniform int uDir; \nuniform float uAlpha; \nvec4 longface() { \n    float sgnv; \n    vec2 coord; \n    if (uDir == 0 || uDir == 2) { \n        coord = vec2(vTexCoord[0], vTexCoord[1]); \n    } else { \n        coord = vec2(vTexCoord[1], vTexCoord[0]); \n    } \n    if(coord[1]>0.5) { \n        sgnv = 1.0;  \n    } else { \n        sgnv = -1.0; \n    } \n    float new_radius = sgnv * pow(abs(coord[1]-0.5)*2.0, 1.5)/2.0; \n    vec2 newCoord; \n    if (uDir == 0 || uDir == 2) { \n       newCoord = vec2(coord[0], 0.5 + new_radius); \n    } else { \n       newCoord = vec2(0.5 + new_radius, coord[0]); \n    } \n    if (newCoord.x > 1.0 || newCoord.x < 0.0 || newCoord.y > 1.0 || newCoord.y < 0.0) { \n        return vec4(0.0, 0.0, 0.0, 1.0); \n    } else { \n        return texture2D(sTexture, newCoord); \n    } \n} \nvoid main() { \n    gl_FragColor = vec4(longface().rgb, 1.0) * uAlpha; \n}"

    return-object v0
.end method

.method protected initShader()V
    .registers 3

    invoke-super {p0}, Lcom/android/camera/effect/renders/PixelEffectRender;->initShader()V

    iget v0, p0, Lcom/android/camera/effect/renders/LongFaceEffectRender;->mProgram:I

    const-string/jumbo v1, "uDir"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/LongFaceEffectRender;->mUniformDirectionH:I

    return-void
.end method

.method protected initShaderValue(Z)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/PixelEffectRender;->initShaderValue(Z)V

    iget v0, p0, Lcom/android/camera/effect/renders/LongFaceEffectRender;->mUniformDirectionH:I

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/LongFaceEffectRender;->getDirection(Z)I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method
