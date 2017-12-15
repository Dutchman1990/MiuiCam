.class public Lcom/android/camera/effect/draw_mode/DrawBlurTexAttribute;
.super Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;
.source "DrawBlurTexAttribute.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/camera/effect/draw_mode/DrawBlurTexAttribute;->mTarget:I

    return-void
.end method


# virtual methods
.method public bridge synthetic init(Lcom/android/gallery3d/ui/BasicTexture;IIII)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;
    .registers 7

    invoke-virtual/range {p0 .. p5}, Lcom/android/camera/effect/draw_mode/DrawBlurTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;IIII)Lcom/android/camera/effect/draw_mode/DrawBlurTexAttribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic init(Lcom/android/gallery3d/ui/BasicTexture;IIIIZ)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;
    .registers 8

    invoke-virtual/range {p0 .. p6}, Lcom/android/camera/effect/draw_mode/DrawBlurTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;IIIIZ)Lcom/android/camera/effect/draw_mode/DrawBlurTexAttribute;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/android/gallery3d/ui/BasicTexture;IIII)Lcom/android/camera/effect/draw_mode/DrawBlurTexAttribute;
    .registers 7

    invoke-super/range {p0 .. p5}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;IIII)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/camera/effect/draw_mode/DrawBlurTexAttribute;->mTarget:I

    return-object p0
.end method

.method public init(Lcom/android/gallery3d/ui/BasicTexture;IIIIZ)Lcom/android/camera/effect/draw_mode/DrawBlurTexAttribute;
    .registers 8

    invoke-super/range {p0 .. p6}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;IIIIZ)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/camera/effect/draw_mode/DrawBlurTexAttribute;->mTarget:I

    return-object p0
.end method
