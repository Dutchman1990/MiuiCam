.class public Lcom/android/camera/ModuleAnimManager;
.super Ljava/lang/Object;
.source "ModuleAnimManager.java"


# instance fields
.field private mAnimDuration:F

.field private mAnimStartTime:J

.field private mAnimState:I

.field private mInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ModuleAnimManager;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public animateStartHide()V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ModuleAnimManager;->mAnimState:I

    const/high16 v0, 0x43960000    # 300.0f

    iput v0, p0, Lcom/android/camera/ModuleAnimManager;->mAnimDuration:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ModuleAnimManager;->mAnimStartTime:J

    return-void
.end method

.method public animateStartShow()V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/ModuleAnimManager;->mAnimState:I

    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Lcom/android/camera/ModuleAnimManager;->mAnimDuration:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ModuleAnimManager;->mAnimStartTime:J

    return-void
.end method

.method public clearAnimation()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ModuleAnimManager;->mAnimState:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ModuleAnimManager;->mAnimDuration:F

    return-void
.end method

.method public drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;IIII)Z
    .registers 20

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/ModuleAnimManager;->mAnimStartTime:J

    sub-long v10, v2, v4

    long-to-float v2, v10

    iget v3, p0, Lcom/android/camera/ModuleAnimManager;->mAnimDuration:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_24

    iget v2, p0, Lcom/android/camera/ModuleAnimManager;->mAnimState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1c

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/ModuleAnimManager;->mAnimState:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/ModuleAnimManager;->mAnimDuration:F

    const/4 v2, 0x0

    return v2

    :cond_1c
    iget v2, p0, Lcom/android/camera/ModuleAnimManager;->mAnimState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_24

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/camera/ModuleAnimManager;->mAnimState:I

    :cond_24
    const/4 v8, 0x0

    iget v2, p0, Lcom/android/camera/ModuleAnimManager;->mAnimDuration:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_58

    long-to-float v2, v10

    iget v3, p0, Lcom/android/camera/ModuleAnimManager;->mAnimDuration:F

    div-float v9, v2, v3

    :goto_31
    iget v2, p0, Lcom/android/camera/ModuleAnimManager;->mAnimState:I

    packed-switch v2, :pswitch_data_78

    :goto_36
    new-instance v2, Lcom/android/camera/effect/draw_mode/FillRectAttribute;

    move/from16 v0, p2

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v4, v0

    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v6, v0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v8, v7, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/effect/draw_mode/FillRectAttribute;-><init>(FFFFI)V

    invoke-interface {p1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    iget v2, p0, Lcom/android/camera/ModuleAnimManager;->mAnimState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_76

    const/4 v2, 0x1

    :goto_57
    return v2

    :cond_58
    const/4 v9, 0x0

    goto :goto_31

    :pswitch_5a
    iget-object v2, p0, Lcom/android/camera/ModuleAnimManager;->mInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v9

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    const/high16 v3, 0x43700000    # 240.0f

    mul-float/2addr v2, v3

    float-to-int v8, v2

    goto :goto_36

    :pswitch_68
    iget-object v2, p0, Lcom/android/camera/ModuleAnimManager;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    const/high16 v3, 0x43700000    # 240.0f

    mul-float/2addr v2, v3

    float-to-int v8, v2

    goto :goto_36

    :pswitch_73
    const/16 v8, 0xf0

    goto :goto_36

    :cond_76
    const/4 v2, 0x0

    goto :goto_57

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_68
        :pswitch_73
        :pswitch_5a
    .end packed-switch
.end method
