.class public Lcom/android/camera/effect/renders/GaussianMaskEffectRender;
.super Lcom/android/camera/effect/renders/RegionEffectRender;
.source "GaussianMaskEffectRender.java"


# instance fields
.field protected mUniformMaskAlphaH:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/RegionEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    return-void
.end method


# virtual methods
.method public getFragShaderString()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "precision highp float; \nuniform vec2 uStep; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nuniform float uMaskAlpha; \nuniform int uInvertRect; \nuniform vec4 uEffectRect; \nbool isInRectF(in vec2 position, vec4 rect) { \n    return !(position.x < rect.x || \n             position.x > rect.z || \n             position.y < rect.y || \n             position.y > rect.w); \n} \nfloat getDistance(vec2 position, float cx, float cy, float a, float b) { \n    float d = (position.x-cx)*(position.x-cx) / a / a + \n              (position.y-cy)*(position.y-cy) / b / b; \n    return d; \n} \nvoid main() { \n    float maxTransition = 0.4; \n    float ratio = 1.0; \n    vec4 maskColor = vec4(1.0, 1.0, 1.0, 1.0); \n    float maskRatio = 0.0; \n    float  a = (uEffectRect.z - uEffectRect.x) / 2.0; \n    float  b = (uEffectRect.w - uEffectRect.y) / 2.0; \n    float cx = (uEffectRect.z + uEffectRect.x) / 2.0; \n    float cy = (uEffectRect.w + uEffectRect.y) / 2.0; \n    float transition = min(maxTransition/a, maxTransition/b); \n    float d_clear = getDistance(vTexCoord, cx, cy, a, b); \n    if (d_clear <= 1.0) { \n        ratio = 0.0; \n    } else { \n        float d_transition = getDistance(vTexCoord, cx, cy, a*(1.0+transition), b*(1.0+transition)); \n        if (d_transition <= 1.0) { \n            float r1 = sqrt(d_clear), r2 = sqrt(d_transition); \n            ratio = (r1 - 1.0) / (r1 / r2 - 1.0); \n        } \n    } \n    if (uInvertRect == 0) { \n        if (ratio < 1.0) { \n            maskRatio = 1.0 - (1.0-ratio) * (1.0-ratio); \n        } else { \n            maskRatio = 1.0; \n        } \n    } else { \n        if (ratio < 1.0) { \n            maskRatio = 1.0 - ratio*ratio; \n        } else { \n            maskRatio = 0.0; \n        } \n    } \n    vec4 originColor = texture2D(sTexture, vTexCoord); \n    maskRatio = maskRatio * 0.9 * uMaskAlpha; \n    gl_FragColor = originColor*(1.0-maskRatio) + maskColor*maskRatio; \n} \n"

    return-object v0
.end method

.method protected initShader()V
    .registers 3

    invoke-super {p0}, Lcom/android/camera/effect/renders/RegionEffectRender;->initShader()V

    iget v0, p0, Lcom/android/camera/effect/renders/GaussianMaskEffectRender;->mProgram:I

    const-string/jumbo v1, "uMaskAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/GaussianMaskEffectRender;->mUniformMaskAlphaH:I

    return-void
.end method

.method protected initShaderValue(Z)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/RegionEffectRender;->initShaderValue(Z)V

    iget v1, p0, Lcom/android/camera/effect/renders/GaussianMaskEffectRender;->mUniformMaskAlphaH:I

    if-eqz p1, :cond_c

    const/4 v0, 0x0

    :goto_8
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void

    :cond_c
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->getTiltShiftMaskAlpha()F

    move-result v0

    goto :goto_8
.end method
