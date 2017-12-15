.class Lcom/android/camera/ui/V6EdgeShutterView$ReverseInterpolator;
.super Ljava/lang/Object;
.source "V6EdgeShutterView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6EdgeShutterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReverseInterpolator"
.end annotation


# instance fields
.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field final synthetic this$0:Lcom/android/camera/ui/V6EdgeShutterView;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/V6EdgeShutterView;)V
    .registers 3

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/V6EdgeShutterView$ReverseInterpolator;-><init>(Lcom/android/camera/ui/V6EdgeShutterView;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/camera/ui/V6EdgeShutterView;Landroid/view/animation/Interpolator;)V
    .registers 3

    iput-object p1, p0, Lcom/android/camera/ui/V6EdgeShutterView$ReverseInterpolator;->this$0:Lcom/android/camera/ui/V6EdgeShutterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_a

    :goto_7
    iput-object p2, p0, Lcom/android/camera/ui/V6EdgeShutterView$ReverseInterpolator;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void

    :cond_a
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_7
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/V6EdgeShutterView;Lcom/android/camera/ui/V6EdgeShutterView$ReverseInterpolator;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6EdgeShutterView$ReverseInterpolator;-><init>(Lcom/android/camera/ui/V6EdgeShutterView;)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 7

    const/high16 v4, 0x40000000    # 2.0f

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_12

    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView$ReverseInterpolator;->mInterpolator:Landroid/view/animation/Interpolator;

    mul-float v1, p1, v4

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0

    :cond_12
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView$ReverseInterpolator;->mInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v1, v4

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method
