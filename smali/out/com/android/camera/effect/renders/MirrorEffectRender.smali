.class public Lcom/android/camera/effect/renders/MirrorEffectRender;
.super Lcom/android/camera/effect/renders/ConvolutionEffectRender;
.source "MirrorEffectRender.java"


# instance fields
.field private mUniformDirectionH:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    return-void
.end method

.method private getDirection(Z)I
    .registers 5

    if-eqz p1, :cond_15

    iget v1, p0, Lcom/android/camera/effect/renders/MirrorEffectRender;->mJpegOrientation:I

    :goto_4
    const/4 v0, 0x0

    if-eqz p1, :cond_f

    iget-boolean v2, p0, Lcom/android/camera/effect/renders/MirrorEffectRender;->mMirror:Z

    if-eqz v2, :cond_f

    add-int/lit16 v2, v1, 0xb4

    rem-int/lit16 v1, v2, 0x168

    :cond_f
    const/16 v2, 0x10e

    if-ne v1, v2, :cond_1e

    const/4 v0, 0x3

    :goto_14
    return v0

    :cond_15
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getOrientation()I

    move-result v1

    goto :goto_4

    :cond_1e
    const/16 v2, 0xb4

    if-ne v1, v2, :cond_24

    const/4 v0, 0x2

    goto :goto_14

    :cond_24
    const/16 v2, 0x5a

    if-ne v1, v2, :cond_2a

    const/4 v0, 0x1

    goto :goto_14

    :cond_2a
    const/4 v0, 0x0

    goto :goto_14
.end method


# virtual methods
.method public getFragShaderString()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "precision mediump float;  \nvarying vec2 vTexCoord;  \nuniform sampler2D sTexture;  \nuniform int uDir; \nuniform float uAlpha; \nuniform vec2 uStep;  \nvoid main()               \n{                         \n    if (uDir == 0)    \n    { \n          gl_FragColor=texture2D(sTexture, vec2(vTexCoord.s>0.5 ? (1.0-vTexCoord.s) : vTexCoord.s, vTexCoord.t));\n    } \n    else if (uDir == 1)   \n    { \n          gl_FragColor=texture2D(sTexture, vec2(vTexCoord.s, vTexCoord.t<0.5 ? (1.0-vTexCoord.t) : vTexCoord.t));\n    } \n    else if (uDir == 2)   \n    { \n          gl_FragColor=texture2D(sTexture, vec2(vTexCoord.s<0.5 ? (1.0-vTexCoord.s) : vTexCoord.s, vTexCoord.t));\n    } \n    else if (uDir == 3)   \n    { \n          gl_FragColor=texture2D(sTexture, vec2(vTexCoord.s, vTexCoord.t>0.5 ? (1.0-vTexCoord.t) : vTexCoord.t));\n    } \n    gl_FragColor = gl_FragColor*uAlpha; \n}"

    return-object v0
.end method

.method protected initShader()V
    .registers 3

    invoke-super {p0}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->initShader()V

    iget v0, p0, Lcom/android/camera/effect/renders/MirrorEffectRender;->mProgram:I

    const-string/jumbo v1, "uDir"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/MirrorEffectRender;->mUniformDirectionH:I

    return-void
.end method

.method protected initShaderValue(Z)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->initShaderValue(Z)V

    iget v0, p0, Lcom/android/camera/effect/renders/MirrorEffectRender;->mUniformDirectionH:I

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/MirrorEffectRender;->getDirection(Z)I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method
