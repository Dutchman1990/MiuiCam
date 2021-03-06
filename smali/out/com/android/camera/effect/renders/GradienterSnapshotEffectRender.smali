.class public Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;
.super Lcom/android/camera/effect/renders/PixelEffectRender;
.source "GradienterSnapshotEffectRender.java"


# instance fields
.field private mUniformAngle:I

.field private mUniformTexSize:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/PixelEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    return-void
.end method

.method private getRotation()F
    .registers 4

    iget v1, p0, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;->mShootRotation:F

    iget v2, p0, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;->mOrientation:I

    int-to-float v2, v2

    sub-float v0, v1, v2

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_10

    const/high16 v1, 0x43b40000    # 360.0f

    sub-float/2addr v0, v1

    :cond_10
    return v0
.end method


# virtual methods
.method public getFragShaderString()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "precision highp float; \nvarying vec2 vTexCoord; \nuniform sampler2D sTexture; \nuniform float sAngle; \nuniform vec2 vTexSize; \nvoid main() \n{ \n  float pf = min(vTexSize.s,vTexSize.t) / max(vTexSize.s,vTexSize.t);\n  float mOrigin = atan(pf); \n  float rorate_angle = sAngle; \n  float fangle = radians(abs(rorate_angle)) + mOrigin;\n  float s = sin(mOrigin) / sin(fangle);\n  float center_x = 0.5 * vTexSize.s; \n  float center_y = 0.5 * vTexSize.t; \n  float tx = center_x - 0.5 * vTexSize.s * s; \n  float ty = center_y - 0.5 * vTexSize.t * s; \n  float cosangle = cos(radians(rorate_angle)); \n  float sinangle = sin(radians(rorate_angle)); \n  float x = s * (vTexCoord.s * vTexSize.s) + tx; \n  float y = s * (vTexCoord.t * vTexSize.t) + ty; \n  float  x1 = x - center_x; \n  float  y1 = y - center_y; \n  x = cosangle * x1 + sinangle * y1 + center_x; \n  y = -1.0 * sinangle * x1 + cosangle * y1 + center_y; \n  x = x / vTexSize.s; \n  y = y / vTexSize.t; \n  x = clamp(x,0.0,1.0); \n  y = clamp(y,0.0,1.0); \n  gl_FragColor = texture2D(sTexture, vec2(x,y)); \n} \n"

    return-object v0
.end method

.method protected initShader()V
    .registers 3

    invoke-super {p0}, Lcom/android/camera/effect/renders/PixelEffectRender;->initShader()V

    iget v0, p0, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;->mProgram:I

    const-string/jumbo v1, "sAngle"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;->mUniformAngle:I

    iget v0, p0, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;->mProgram:I

    const-string/jumbo v1, "vTexSize"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;->mUniformTexSize:I

    return-void
.end method

.method protected initShaderValue(Z)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/PixelEffectRender;->initShaderValue(Z)V

    iget v0, p0, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;->mSnapshotOriginWidth:I

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;->mSnapshotOriginHeight:I

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;->mUniformTexSize:I

    iget v1, p0, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;->mSnapshotOriginWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;->mSnapshotOriginHeight:I

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v0, p0, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;->mUniformAngle:I

    invoke-direct {p0}, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;->getRotation()F

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :cond_1f
    return-void
.end method
