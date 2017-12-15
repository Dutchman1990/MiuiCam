.class public Lcom/android/camera/effect/renders/Gaussian2DEffectRender;
.super Lcom/android/camera/effect/renders/ConvolutionEffectRender;
.source "Gaussian2DEffectRender.java"


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    return-void
.end method


# virtual methods
.method public getFragShaderString()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "precision mediump float; \nuniform vec2 uStep; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nvoid main() { \n    vec2 step = uStep; \n    vec3 a = vec3(0.0113,0.0838,0.6193); \n    vec3 sum; \n    sum = texture2D(sTexture,  vTexCoord - step).rgb * a.x; \n    sum += texture2D(sTexture, vTexCoord + vec2(0.0, -step.y)).rgb * a.y; \n    sum += texture2D(sTexture, vTexCoord + vec2(step.x, -step.y)).rgb * a.x; \n    sum += texture2D(sTexture, vTexCoord + vec2(step.x, 0.0)).rgb * a.y; \n    sum += texture2D(sTexture, vTexCoord).rgb * a.z; \n    sum += texture2D(sTexture, vTexCoord + vec2(-step.x, 0.0)).rgb * a.y; \n    sum += texture2D(sTexture, vTexCoord + vec2(-step.x, step.y)).rgb * a.x; \n    sum += texture2D(sTexture, vTexCoord + vec2(0.0, step.y)).rgb * a.y; \n    sum += texture2D(sTexture, vTexCoord + step).rgb * a.x; \n    gl_FragColor.rgb = sum; \n    gl_FragColor.a = 1.0; \n } "

    return-object v0
.end method
