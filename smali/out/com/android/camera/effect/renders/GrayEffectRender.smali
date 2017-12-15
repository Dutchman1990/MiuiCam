.class public Lcom/android/camera/effect/renders/GrayEffectRender;
.super Lcom/android/camera/effect/renders/PixelEffectRender;
.source "GrayEffectRender.java"


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/PixelEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    return-void
.end method


# virtual methods
.method public getFragShaderString()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "precision mediump float; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nuniform float uAlpha; \nvoid main() { \n    vec3 factor = vec3(0.299, 0.587, 0.114); \n    vec3 color = texture2D(sTexture, vTexCoord).rgb; \n    float gray = 0.0; \n    gray = dot(color,factor); \n    color = vec3(gray, gray, gray); \n    gl_FragColor = vec4(color, 1)*uAlpha; \n}"

    return-object v0
.end method
