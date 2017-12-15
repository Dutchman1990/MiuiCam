.class Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;
.super Ljava/lang/Object;
.source "GLCanvasState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/GLCanvasState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CanvasStateConfig"
.end annotation


# instance fields
.field mAlpha:F

.field mBlendAlpha:F

.field mModelMatrix:[F

.field mTexMatrix:[F

.field final synthetic this$0:Lcom/android/camera/effect/GLCanvasState;


# direct methods
.method public constructor <init>(Lcom/android/camera/effect/GLCanvasState;[F[FFF)V
    .registers 10

    const/16 v3, 0x10

    iput-object p1, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->this$0:Lcom/android/camera/effect/GLCanvasState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v3, [F

    iput-object v1, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mModelMatrix:[F

    new-array v1, v3, [F

    iput-object v1, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mTexMatrix:[F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mAlpha:F

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mBlendAlpha:F

    const/4 v0, 0x0

    :goto_18
    if-ge v0, v3, :cond_23

    iget-object v1, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mModelMatrix:[F

    aget v2, p2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_23
    const/4 v0, 0x0

    :goto_24
    if-ge v0, v3, :cond_2f

    iget-object v1, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mTexMatrix:[F

    aget v2, p3, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_2f
    iput p4, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mAlpha:F

    iput p5, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mBlendAlpha:F

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .registers 2

    iget v0, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mAlpha:F

    return v0
.end method

.method public getBlendAlpha()F
    .registers 2

    iget v0, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mBlendAlpha:F

    return v0
.end method

.method public getModelMatrix()[F
    .registers 2

    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mModelMatrix:[F

    return-object v0
.end method

.method public getTexMatrix()[F
    .registers 2

    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mTexMatrix:[F

    return-object v0
.end method
