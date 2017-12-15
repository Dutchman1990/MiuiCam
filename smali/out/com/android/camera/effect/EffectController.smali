.class public Lcom/android/camera/effect/EffectController;
.super Ljava/lang/Object;
.source "EffectController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/EffectController$EffectRectAttribute;,
        Lcom/android/camera/effect/EffectController$SurfacePosition;
    }
.end annotation


# static fields
.field public static final COLUMN_COUNT:I

.field public static final SHOW_COUNT:I

.field public static sBackgroundBlurIndex:I

.field public static sDividerIndex:I

.field public static sFishEyeIndex:I

.field public static sGaussianIndex:I

.field public static sGradienterIndex:I

.field private static sInstance:Lcom/android/camera/effect/EffectController;

.field public static sPeakingMFIndex:I

.field public static sTiltShiftIndex:I


# instance fields
.field private mBlur:Z

.field private mBlurStep:I

.field private mDeviceRotation:F

.field public volatile mDisplayEndIndex:I

.field public volatile mDisplayShow:Z

.field public volatile mDisplayStartIndex:I

.field private mDrawPeaking:Z

.field private mEffectCount:I

.field private mEffectEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectEntryValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectGroupSize:I

.field private mEffectImageIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectIndex:I

.field private mEffectKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

.field public volatile mFillAnimationCache:Z

.field private mIsDrawMainFrame:Z

.field private mNeedRectSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedScaleDownSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:I

.field private mOverrideEffectIndex:I

.field public mSurfacePosition:Lcom/android/camera/effect/EffectController$SurfacePosition;

.field private mTiltShiftMaskAlpha:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v2, 0xc

    const/4 v1, 0x7

    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_2f

    move v0, v1

    :goto_a
    sput v0, Lcom/android/camera/effect/EffectController;->SHOW_COUNT:I

    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_31

    :goto_12
    sput v1, Lcom/android/camera/effect/EffectController;->COLUMN_COUNT:I

    const/16 v0, 0x11

    sput v0, Lcom/android/camera/effect/EffectController;->sGradienterIndex:I

    const/16 v0, 0x12

    sput v0, Lcom/android/camera/effect/EffectController;->sTiltShiftIndex:I

    const/16 v0, 0x13

    sput v0, Lcom/android/camera/effect/EffectController;->sGaussianIndex:I

    const/16 v0, 0x14

    sput v0, Lcom/android/camera/effect/EffectController;->sPeakingMFIndex:I

    sput v2, Lcom/android/camera/effect/EffectController;->sFishEyeIndex:I

    const/16 v0, 0x8

    sput v0, Lcom/android/camera/effect/EffectController;->sDividerIndex:I

    const/16 v0, 0x10

    sput v0, Lcom/android/camera/effect/EffectController;->sBackgroundBlurIndex:I

    return-void

    :cond_2f
    move v0, v2

    goto :goto_a

    :cond_31
    const/4 v1, 0x3

    goto :goto_12
.end method

.method private constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mOverrideEffectIndex:I

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    iput-boolean v1, p0, Lcom/android/camera/effect/EffectController;->mBlur:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mIsDrawMainFrame:Z

    iput v1, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    new-instance v0, Lcom/android/camera/effect/EffectController$SurfacePosition;

    invoke-direct {v0}, Lcom/android/camera/effect/EffectController$SurfacePosition;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/EffectController;->mSurfacePosition:Lcom/android/camera/effect/EffectController$SurfacePosition;

    const/16 v0, 0x15

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mEffectGroupSize:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mEffectCount:I

    iput-boolean v1, p0, Lcom/android/camera/effect/EffectController;->mDisplayShow:Z

    iput-boolean v1, p0, Lcom/android/camera/effect/EffectController;->mFillAnimationCache:Z

    iput v1, p0, Lcom/android/camera/effect/EffectController;->mDisplayStartIndex:I

    sget v0, Lcom/android/camera/effect/EffectController;->SHOW_COUNT:I

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mDisplayEndIndex:I

    new-instance v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    invoke-direct {v0, v2, v2}, Lcom/android/camera/effect/EffectController$EffectRectAttribute;-><init>(Lcom/android/camera/effect/EffectController$EffectRectAttribute;Lcom/android/camera/effect/EffectController$EffectRectAttribute;)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectController;->initialize()V

    return-void
.end method

.method private addEntryItem(II)V
    .registers 5

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectEntryValues:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/camera/effect/EffectController;
    .registers 2

    const-class v1, Lcom/android/camera/effect/EffectController;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;

    if-nez v0, :cond_e

    new-instance v0, Lcom/android/camera/effect/EffectController;

    invoke-direct {v0}, Lcom/android/camera/effect/EffectController;-><init>()V

    sput-object v0, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;

    :cond_e
    sget-object v0, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getString(I)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initEffectWeight()V
    .registers 1

    return-void
.end method

.method public static declared-synchronized releaseInstance()V
    .registers 2

    const-class v0, Lcom/android/camera/effect/EffectController;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public clearEffectAttribute()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint1:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint2:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iput v1, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRangeWidth:F

    return-void
.end method

.method public copyEffectRectAttribute()Lcom/android/camera/effect/EffectController$EffectRectAttribute;
    .registers 4

    const/4 v2, 0x0

    new-instance v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    invoke-direct {v0, v1, v2, v2}, Lcom/android/camera/effect/EffectController$EffectRectAttribute;-><init>(Lcom/android/camera/effect/EffectController$EffectRectAttribute;Lcom/android/camera/effect/EffectController$EffectRectAttribute;Lcom/android/camera/effect/EffectController$EffectRectAttribute;)V

    return-object v0
.end method

.method public getAnalyticsKey()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1f

    :goto_19
    monitor-exit p0

    return-object v0

    :cond_1b
    :try_start_1b
    const-string/jumbo v0, ""
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_19

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBlurAnimationValue()I
    .registers 5

    const/4 v1, -0x1

    const/16 v3, 0x8

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-ltz v0, :cond_32

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-gt v0, v3, :cond_32

    iget v2, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mBlur:Z

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    :goto_12
    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-gt v3, v0, :cond_21

    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mBlur:Z

    if-eqz v0, :cond_21

    sget v0, Lcom/android/camera/effect/EffectController;->sBackgroundBlurIndex:I

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mOverrideEffectIndex:I

    :cond_21
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-ltz v0, :cond_32

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-gt v0, v3, :cond_32

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    mul-int/lit16 v0, v0, 0xd4

    div-int/lit8 v0, v0, 0x8

    return v0

    :cond_30
    move v0, v1

    goto :goto_12

    :cond_32
    return v1
.end method

.method public getDeviceRotation()F
    .registers 2

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mDeviceRotation:F

    return v0
.end method

.method public getDisplayEndIndex()I
    .registers 2

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mDisplayEndIndex:I

    return v0
.end method

.method public getDisplayStartIndex()I
    .registers 2

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mDisplayStartIndex:I

    return v0
.end method

.method public getEffect(Z)I
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_c

    :try_start_3
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mOverrideEffectIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mOverrideEffectIndex:I
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_10

    monitor-exit p0

    return v0

    :cond_c
    :try_start_c
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_10

    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEffectAttribute()Lcom/android/camera/effect/EffectController$EffectRectAttribute;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    return-object v0
.end method

.method public getEffectCount()I
    .registers 2

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mEffectCount:I

    return v0
.end method

.method public getEffectGroup(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;
    .registers 16

    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v5

    if-nez v5, :cond_8

    const/4 v5, 0x0

    return-object v5

    :cond_8
    if-nez p1, :cond_2b3

    const/4 v0, 0x1

    :goto_b
    const/4 v2, 0x0

    if-nez p1, :cond_2b6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectEntryValues:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/camera/effect/EffectController;->mNeedRectSet:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/camera/effect/EffectController;->mNeedScaleDownSet:Ljava/util/ArrayList;

    const/4 v0, 0x1

    :cond_39
    const/4 v1, 0x0

    if-eqz v0, :cond_2cb

    const v5, 0x7f0e009a

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f02002e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_56
    :goto_56
    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_2e1

    const v5, 0x7f0e0094

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020028

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, "effect_instagram_rise_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_74
    :goto_74
    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_303

    const v5, 0x7f0e008f

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020025

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, "effect_instagram_clarendon_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_92
    :goto_92
    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_325

    const v5, 0x7f0e0090

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020026

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, "effect_instagram_crema_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b0
    :goto_b0
    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_347

    const v5, 0x7f0e0095

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020027

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, "effect_instagram_hudson_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ce
    :goto_ce
    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_369

    const v5, 0x7f0e009c

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020031

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, "effect_vivid_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ec
    :goto_ec
    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_38c

    const v5, 0x7f0e0092

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020032

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, "effect_vsco_a4_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10a
    :goto_10a
    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_3ae

    const v5, 0x7f0e0091

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020033

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, "effect_vsco_f2_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_128
    :goto_128
    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_3d1

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mNeedScaleDownSet:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, 0x7f0e009b

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f02002c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, "effect_gray_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14f
    :goto_14f
    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_3f4

    const v5, 0x7f0e0093

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020023

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, "effect_blackwhite_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16d
    :goto_16d
    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_417

    const v5, 0x7f0e009d

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f02002f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, "effect_sketch_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18b
    :goto_18b
    if-eqz v0, :cond_18f

    sput v1, Lcom/android/camera/effect/EffectController;->sDividerIndex:I

    :cond_18f
    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_48d

    const v5, 0x7f0e0096

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020022

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, "effect_big_face_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1ad
    :goto_1ad
    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_4b0

    const v5, 0x7f0e0097

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020030

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, "effect_small_face_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1cb
    :goto_1cb
    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_4d3

    const v5, 0x7f0e0098

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f02002a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, "effect_long_face_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e9
    :goto_1e9
    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_4f6

    sput v1, Lcom/android/camera/effect/EffectController;->sFishEyeIndex:I

    const v5, 0x7f0e009e

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020024

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, "effect_fisheye_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_209
    :goto_209
    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_519

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mNeedRectSet:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v5, 0x7f0e009f

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f02002d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, "effect_mosaic_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_230
    :goto_230
    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_53c

    const v5, 0x7f0e00a0

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f02002b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, "effect_mirror_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24e
    :goto_24e
    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_55f

    const v5, 0x7f0e0099

    invoke-direct {p0, v5, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    const v6, 0x7f020029

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mEffectKeys:Ljava/util/ArrayList;

    const-string/jumbo v6, "effect_light_tunnel_picture_taken_key"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26c
    :goto_26c
    if-eqz v0, :cond_272

    const/16 v5, 0x12

    iput v5, p0, Lcom/android/camera/effect/EffectController;->mEffectCount:I

    :cond_272
    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_582

    sput v1, Lcom/android/camera/effect/EffectController;->sBackgroundBlurIndex:I

    :cond_278
    :goto_278
    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_61a

    sput v1, Lcom/android/camera/effect/EffectController;->sGradienterIndex:I

    :cond_27e
    :goto_27e
    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_645

    sput v1, Lcom/android/camera/effect/EffectController;->sTiltShiftIndex:I

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mNeedRectSet:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28d
    :goto_28d
    const-string/jumbo v5, "is_camera_replace_higher_cost_effect"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_2a6

    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_6e1

    sput v1, Lcom/android/camera/effect/EffectController;->sGaussianIndex:I

    iget-object v5, p0, Lcom/android/camera/effect/EffectController;->mNeedRectSet:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a6
    :goto_2a6
    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_77f

    sput v1, Lcom/android/camera/effect/EffectController;->sPeakingMFIndex:I

    :cond_2ac
    :goto_2ac
    if-eqz v0, :cond_2b2

    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Lcom/android/camera/effect/EffectController;->mEffectGroupSize:I

    :cond_2b2
    return-object p2

    :cond_2b3
    const/4 v0, 0x0

    goto/16 :goto_b

    :cond_2b6
    if-nez p2, :cond_2c4

    new-instance p2, Lcom/android/camera/effect/renders/RenderGroup;

    iget v5, p0, Lcom/android/camera/effect/EffectController;->mEffectGroupSize:I

    invoke-direct {p2, p1, v5}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    if-nez p3, :cond_39

    if-gez p5, :cond_39

    return-object p2

    :cond_2c4
    invoke-virtual {p2, p5}, Lcom/android/camera/effect/renders/RenderGroup;->isNeedInit(I)Z

    move-result v5

    if-nez v5, :cond_39

    return-object p2

    :cond_2cb
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_56

    if-nez p3, :cond_2d5

    if-nez p5, :cond_2db

    :cond_2d5
    const/4 v5, 0x0

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    goto/16 :goto_56

    :cond_2db
    if-gez p5, :cond_56

    if-eqz v2, :cond_2d5

    goto/16 :goto_56

    :cond_2e1
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_74

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_2ef

    if-eqz p4, :cond_74

    :cond_2ef
    if-nez p3, :cond_2f3

    if-ne p5, v1, :cond_2fd

    :cond_2f3
    invoke-static {p1, v1}, Lcom/android/camera/effect/renders/InstagramRiseEffectRender;->create(Lcom/android/gallery3d/ui/GLCanvas;I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    const/4 v2, 0x1

    goto/16 :goto_74

    :cond_2fd
    if-gez p5, :cond_74

    if-eqz v2, :cond_2f3

    goto/16 :goto_74

    :cond_303
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_92

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_311

    if-eqz p4, :cond_92

    :cond_311
    if-nez p3, :cond_315

    if-ne p5, v1, :cond_31f

    :cond_315
    invoke-static {p1, v1}, Lcom/android/camera/effect/renders/InstagramClarendonEffectRender;->create(Lcom/android/gallery3d/ui/GLCanvas;I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    const/4 v2, 0x1

    goto/16 :goto_92

    :cond_31f
    if-gez p5, :cond_92

    if-eqz v2, :cond_315

    goto/16 :goto_92

    :cond_325
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_b0

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_333

    if-eqz p4, :cond_b0

    :cond_333
    if-nez p3, :cond_337

    if-ne p5, v1, :cond_341

    :cond_337
    invoke-static {p1, v1}, Lcom/android/camera/effect/renders/InstagramCremaEffectRender;->create(Lcom/android/gallery3d/ui/GLCanvas;I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    const/4 v2, 0x1

    goto/16 :goto_b0

    :cond_341
    if-gez p5, :cond_b0

    if-eqz v2, :cond_337

    goto/16 :goto_b0

    :cond_347
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_ce

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_355

    if-eqz p4, :cond_ce

    :cond_355
    if-nez p3, :cond_359

    if-ne p5, v1, :cond_363

    :cond_359
    invoke-static {p1, v1}, Lcom/android/camera/effect/renders/InstagramHudsonEffectRender;->create(Lcom/android/gallery3d/ui/GLCanvas;I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    const/4 v2, 0x1

    goto/16 :goto_ce

    :cond_363
    if-gez p5, :cond_ce

    if-eqz v2, :cond_359

    goto/16 :goto_ce

    :cond_369
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_ec

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_377

    if-eqz p4, :cond_ec

    :cond_377
    if-nez p3, :cond_37b

    if-ne p5, v1, :cond_386

    :cond_37b
    new-instance v5, Lcom/android/camera/effect/renders/VividEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/VividEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    const/4 v2, 0x1

    goto/16 :goto_ec

    :cond_386
    if-gez p5, :cond_ec

    if-eqz v2, :cond_37b

    goto/16 :goto_ec

    :cond_38c
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_10a

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_39a

    if-eqz p4, :cond_10a

    :cond_39a
    if-nez p3, :cond_39e

    if-ne p5, v1, :cond_3a8

    :cond_39e
    invoke-static {p1, v1}, Lcom/android/camera/effect/renders/VscoA4EffectRender;->create(Lcom/android/gallery3d/ui/GLCanvas;I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    const/4 v2, 0x1

    goto/16 :goto_10a

    :cond_3a8
    if-gez p5, :cond_10a

    if-eqz v2, :cond_39e

    goto/16 :goto_10a

    :cond_3ae
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_128

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_3bc

    if-eqz p4, :cond_128

    :cond_3bc
    if-nez p3, :cond_3c0

    if-ne p5, v1, :cond_3cb

    :cond_3c0
    new-instance v5, Lcom/android/camera/effect/renders/VscoF2EffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/VscoF2EffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    const/4 v2, 0x1

    goto/16 :goto_128

    :cond_3cb
    if-gez p5, :cond_128

    if-eqz v2, :cond_3c0

    goto/16 :goto_128

    :cond_3d1
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_14f

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_3df

    if-eqz p4, :cond_14f

    :cond_3df
    if-nez p3, :cond_3e3

    if-ne p5, v1, :cond_3ee

    :cond_3e3
    new-instance v5, Lcom/android/camera/effect/renders/GrayEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/GrayEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    const/4 v2, 0x1

    goto/16 :goto_14f

    :cond_3ee
    if-gez p5, :cond_14f

    if-eqz v2, :cond_3e3

    goto/16 :goto_14f

    :cond_3f4
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_16d

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_402

    if-eqz p4, :cond_16d

    :cond_402
    if-nez p3, :cond_406

    if-ne p5, v1, :cond_411

    :cond_406
    new-instance v5, Lcom/android/camera/effect/renders/BlackWhiteEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/BlackWhiteEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    const/4 v2, 0x1

    goto/16 :goto_16d

    :cond_411
    if-gez p5, :cond_16d

    if-eqz v2, :cond_406

    goto/16 :goto_16d

    :cond_417
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_18b

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_425

    if-eqz p4, :cond_18b

    :cond_425
    if-nez p3, :cond_429

    if-ne p5, v1, :cond_454

    :cond_429
    if-nez p3, :cond_42d

    if-ne p5, v1, :cond_45a

    :cond_42d
    new-instance v7, Lcom/android/camera/effect/renders/PipeRenderPair;

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-eqz v5, :cond_471

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    :goto_43b
    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v6

    if-eqz v6, :cond_477

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v6

    :goto_447
    const/4 v8, 0x0

    invoke-direct {v7, p1, v5, v6, v8}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    invoke-virtual {p2, v7, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    invoke-virtual {p2}, Lcom/android/camera/effect/renders/RenderGroup;->clearPartRenders()V

    :cond_451
    :goto_451
    const/4 v2, 0x1

    goto/16 :goto_18b

    :cond_454
    if-gez p5, :cond_18b

    if-eqz v2, :cond_429

    goto/16 :goto_18b

    :cond_45a
    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->isPartComplete(I)Z

    move-result v5

    if-nez v5, :cond_42d

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_47d

    new-instance v5, Lcom/android/camera/effect/renders/Gaussian2DEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/Gaussian2DEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_451

    :cond_471
    new-instance v5, Lcom/android/camera/effect/renders/Gaussian2DEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/Gaussian2DEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_43b

    :cond_477
    new-instance v6, Lcom/android/camera/effect/renders/SketchEffectRender;

    invoke-direct {v6, p1, v1}, Lcom/android/camera/effect/renders/SketchEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_447

    :cond_47d
    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_451

    new-instance v5, Lcom/android/camera/effect/renders/SketchEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/SketchEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_451

    :cond_48d
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_1ad

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_49b

    if-eqz p4, :cond_1ad

    :cond_49b
    if-nez p3, :cond_49f

    if-ne p5, v1, :cond_4aa

    :cond_49f
    new-instance v5, Lcom/android/camera/effect/renders/BigFaceEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/BigFaceEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    const/4 v2, 0x1

    goto/16 :goto_1ad

    :cond_4aa
    if-gez p5, :cond_1ad

    if-eqz v2, :cond_49f

    goto/16 :goto_1ad

    :cond_4b0
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_1cb

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_4be

    if-eqz p4, :cond_1cb

    :cond_4be
    if-nez p3, :cond_4c2

    if-ne p5, v1, :cond_4cd

    :cond_4c2
    new-instance v5, Lcom/android/camera/effect/renders/SmallFaceEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/SmallFaceEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    const/4 v2, 0x1

    goto/16 :goto_1cb

    :cond_4cd
    if-gez p5, :cond_1cb

    if-eqz v2, :cond_4c2

    goto/16 :goto_1cb

    :cond_4d3
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_1e9

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_4e1

    if-eqz p4, :cond_1e9

    :cond_4e1
    if-nez p3, :cond_4e5

    if-ne p5, v1, :cond_4f0

    :cond_4e5
    new-instance v5, Lcom/android/camera/effect/renders/LongFaceEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/LongFaceEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    const/4 v2, 0x1

    goto/16 :goto_1e9

    :cond_4f0
    if-gez p5, :cond_1e9

    if-eqz v2, :cond_4e5

    goto/16 :goto_1e9

    :cond_4f6
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_209

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_504

    if-eqz p4, :cond_209

    :cond_504
    if-nez p3, :cond_508

    if-ne p5, v1, :cond_513

    :cond_508
    new-instance v5, Lcom/android/camera/effect/renders/FishEyeEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/FishEyeEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    const/4 v2, 0x1

    goto/16 :goto_209

    :cond_513
    if-gez p5, :cond_209

    if-eqz v2, :cond_508

    goto/16 :goto_209

    :cond_519
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_230

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_527

    if-eqz p4, :cond_230

    :cond_527
    if-nez p3, :cond_52b

    if-ne p5, v1, :cond_536

    :cond_52b
    new-instance v5, Lcom/android/camera/effect/renders/MosaicEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/MosaicEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    const/4 v2, 0x1

    goto/16 :goto_230

    :cond_536
    if-gez p5, :cond_230

    if-eqz v2, :cond_52b

    goto/16 :goto_230

    :cond_53c
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_24e

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_54a

    if-eqz p4, :cond_24e

    :cond_54a
    if-nez p3, :cond_54e

    if-ne p5, v1, :cond_559

    :cond_54e
    new-instance v5, Lcom/android/camera/effect/renders/MirrorEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/MirrorEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    const/4 v2, 0x1

    goto/16 :goto_24e

    :cond_559
    if-gez p5, :cond_24e

    if-eqz v2, :cond_54e

    goto/16 :goto_24e

    :cond_55f
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_26c

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_56d

    if-eqz p4, :cond_26c

    :cond_56d
    if-nez p3, :cond_571

    if-ne p5, v1, :cond_57c

    :cond_571
    new-instance v5, Lcom/android/camera/effect/renders/LightTunnelEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/LightTunnelEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    const/4 v2, 0x1

    goto/16 :goto_26c

    :cond_57c
    if-gez p5, :cond_26c

    if-eqz v2, :cond_571

    goto/16 :goto_26c

    :cond_582
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_278

    if-nez p3, :cond_58c

    if-ne p5, v1, :cond_5d8

    :cond_58c
    if-nez p3, :cond_590

    if-ne p5, v1, :cond_5de

    :cond_590
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-eqz v5, :cond_5f7

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/effect/renders/Render;->getId()I

    move-result v5

    if-ne v5, v1, :cond_5f5

    const/4 v3, 0x1

    :goto_5a3
    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-eqz v5, :cond_5fb

    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/effect/renders/Render;->getId()I

    move-result v5

    if-ne v5, v1, :cond_5f9

    const/4 v4, 0x1

    :goto_5b6
    new-instance v7, Lcom/android/camera/effect/renders/PipeRenderPair;

    if-eqz v3, :cond_5fd

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    move-object v6, v5

    :goto_5c0
    if-eqz v4, :cond_604

    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    :goto_5c7
    const/4 v8, 0x0

    invoke-direct {v7, p1, v6, v5, v8}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    invoke-virtual {p2, v7, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    if-nez v3, :cond_5d2

    if-eqz v4, :cond_5d5

    :cond_5d2
    invoke-virtual {p2}, Lcom/android/camera/effect/renders/RenderGroup;->clearPartRenders()V

    :cond_5d5
    :goto_5d5
    const/4 v2, 0x1

    goto/16 :goto_278

    :cond_5d8
    if-gez p5, :cond_278

    if-eqz v2, :cond_58c

    goto/16 :goto_278

    :cond_5de
    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->isPartComplete(I)Z

    move-result v5

    if-nez v5, :cond_590

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_60a

    new-instance v5, Lcom/android/camera/effect/renders/XBlurEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/XBlurEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_5d5

    :cond_5f5
    const/4 v3, 0x0

    goto :goto_5a3

    :cond_5f7
    const/4 v3, 0x0

    goto :goto_5a3

    :cond_5f9
    const/4 v4, 0x0

    goto :goto_5b6

    :cond_5fb
    const/4 v4, 0x0

    goto :goto_5b6

    :cond_5fd
    new-instance v5, Lcom/android/camera/effect/renders/XBlurEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/XBlurEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    move-object v6, v5

    goto :goto_5c0

    :cond_604
    new-instance v5, Lcom/android/camera/effect/renders/YBlurEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/YBlurEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_5c7

    :cond_60a
    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_5d5

    new-instance v5, Lcom/android/camera/effect/renders/YBlurEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/YBlurEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_5d5

    :cond_61a
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_27e

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_628

    if-eqz p4, :cond_27e

    :cond_628
    if-nez p3, :cond_62c

    if-ne p5, v1, :cond_639

    :cond_62c
    if-eqz p4, :cond_63f

    new-instance v5, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/GradienterSnapshotEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    :goto_633
    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    const/4 v2, 0x1

    goto/16 :goto_27e

    :cond_639
    if-gez p5, :cond_27e

    if-eqz v2, :cond_62c

    goto/16 :goto_27e

    :cond_63f
    new-instance v5, Lcom/android/camera/effect/renders/GradienterEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/GradienterEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_633

    :cond_645
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_28d

    invoke-static {}, Lcom/android/camera/Device;->isSupportedTiltShift()Z

    move-result v5

    if-eqz v5, :cond_28d

    if-nez p3, :cond_655

    if-ne p5, v1, :cond_692

    :cond_655
    if-nez p3, :cond_659

    if-ne p5, v1, :cond_698

    :cond_659
    new-instance v7, Lcom/android/camera/effect/renders/PipeRenderPair;

    new-instance v8, Lcom/android/camera/effect/renders/PipeRenderPair;

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-eqz v5, :cond_6af

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    :goto_669
    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v6

    if-eqz v6, :cond_6b5

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v6

    :goto_675
    const/4 v9, 0x0

    invoke-direct {v8, p1, v5, v6, v9}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-eqz v5, :cond_6bb

    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    :goto_685
    const/4 v6, 0x0

    invoke-direct {v7, p1, v8, v5, v6}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    invoke-virtual {p2, v7, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    invoke-virtual {p2}, Lcom/android/camera/effect/renders/RenderGroup;->clearPartRenders()V

    :cond_68f
    :goto_68f
    const/4 v2, 0x1

    goto/16 :goto_28d

    :cond_692
    if-gez p5, :cond_28d

    if-eqz v2, :cond_655

    goto/16 :goto_28d

    :cond_698
    const/4 v5, 0x3

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->isPartComplete(I)Z

    move-result v5

    if-nez v5, :cond_659

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_6c1

    new-instance v5, Lcom/android/camera/effect/renders/XTiltShiftEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/XTiltShiftEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_68f

    :cond_6af
    new-instance v5, Lcom/android/camera/effect/renders/XTiltShiftEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/XTiltShiftEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_669

    :cond_6b5
    new-instance v6, Lcom/android/camera/effect/renders/YTiltShiftEffectRender;

    invoke-direct {v6, p1, v1}, Lcom/android/camera/effect/renders/YTiltShiftEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_675

    :cond_6bb
    new-instance v5, Lcom/android/camera/effect/renders/TiltShiftMaskEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/TiltShiftMaskEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_685

    :cond_6c1
    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_6d1

    new-instance v5, Lcom/android/camera/effect/renders/YTiltShiftEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/YTiltShiftEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_68f

    :cond_6d1
    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_68f

    new-instance v5, Lcom/android/camera/effect/renders/TiltShiftMaskEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/TiltShiftMaskEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_68f

    :cond_6e1
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_2a6

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_6ef

    if-eqz p4, :cond_2a6

    :cond_6ef
    if-nez p3, :cond_6f3

    if-ne p5, v1, :cond_730

    :cond_6f3
    if-nez p3, :cond_6f7

    if-ne p5, v1, :cond_736

    :cond_6f7
    new-instance v7, Lcom/android/camera/effect/renders/PipeRenderPair;

    new-instance v8, Lcom/android/camera/effect/renders/PipeRenderPair;

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-eqz v5, :cond_74d

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    :goto_707
    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v6

    if-eqz v6, :cond_753

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v6

    :goto_713
    const/4 v9, 0x0

    invoke-direct {v8, p1, v5, v6, v9}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-eqz v5, :cond_759

    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    :goto_723
    const/4 v6, 0x0

    invoke-direct {v7, p1, v8, v5, v6}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    invoke-virtual {p2, v7, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    invoke-virtual {p2}, Lcom/android/camera/effect/renders/RenderGroup;->clearPartRenders()V

    :cond_72d
    :goto_72d
    const/4 v2, 0x1

    goto/16 :goto_2a6

    :cond_730
    if-gez p5, :cond_2a6

    if-eqz v2, :cond_6f3

    goto/16 :goto_2a6

    :cond_736
    const/4 v5, 0x3

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->isPartComplete(I)Z

    move-result v5

    if-nez v5, :cond_6f7

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_75f

    new-instance v5, Lcom/android/camera/effect/renders/XGaussianEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/XGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_72d

    :cond_74d
    new-instance v5, Lcom/android/camera/effect/renders/XGaussianEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/XGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_707

    :cond_753
    new-instance v6, Lcom/android/camera/effect/renders/YGaussianEffectRender;

    invoke-direct {v6, p1, v1}, Lcom/android/camera/effect/renders/YGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_713

    :cond_759
    new-instance v5, Lcom/android/camera/effect/renders/GaussianMaskEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/GaussianMaskEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    goto :goto_723

    :cond_75f
    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_76f

    new-instance v5, Lcom/android/camera/effect/renders/YGaussianEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/YGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_72d

    :cond_76f
    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->getPartRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_72d

    new-instance v5, Lcom/android/camera/effect/renders/GaussianMaskEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/GaussianMaskEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5}, Lcom/android/camera/effect/renders/RenderGroup;->addPartRender(Lcom/android/camera/effect/renders/Render;)V

    goto :goto_72d

    :cond_77f
    invoke-virtual {p2, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v5

    if-nez v5, :cond_2ac

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v5

    if-nez v5, :cond_78d

    if-eqz p4, :cond_2ac

    :cond_78d
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPeakingMF()Z

    move-result v5

    if-eqz v5, :cond_2ac

    if-nez p4, :cond_2ac

    if-nez p3, :cond_799

    if-ne p5, v1, :cond_7a4

    :cond_799
    new-instance v5, Lcom/android/camera/effect/renders/FocusPeakingRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/FocusPeakingRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {p2, v5, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setRender(Lcom/android/camera/effect/renders/Render;I)V

    const/4 v2, 0x1

    goto/16 :goto_2ac

    :cond_7a4
    if-gez p5, :cond_2ac

    if-eqz v2, :cond_799

    goto/16 :goto_2ac
.end method

.method public getEffectIndexByEntryName(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    return v0

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    const/4 v1, 0x0

    return v1
.end method

.method public getEffectRectF()Landroid/graphics/RectF;
    .registers 3

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v1, v1, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRectF:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public getEntries()[Ljava/lang/String;
    .registers 3

    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/String;
    .registers 3

    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getImageIds()[I
    .registers 4

    iget-object v2, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [I

    const/4 v0, 0x0

    :goto_9
    iget-object v2, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_22

    iget-object v2, p0, Lcom/android/camera/effect/EffectController;->mEffectImageIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_22
    return-object v1
.end method

.method public getInvertFlag()I
    .registers 2

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mInvertFlag:I

    return v0
.end method

.method public getOrientation()I
    .registers 2

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mOrientation:I

    return v0
.end method

.method public getSurfacePosition()Lcom/android/camera/effect/EffectController$SurfacePosition;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mSurfacePosition:Lcom/android/camera/effect/EffectController$SurfacePosition;

    return-object v0
.end method

.method public getTiltShiftMaskAlpha()F
    .registers 2

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mTiltShiftMaskAlpha:F

    return v0
.end method

.method public hasEffect()Z
    .registers 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v1

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_f

    if-eqz v1, :cond_d

    const/4 v0, 0x1

    :cond_d
    monitor-exit p0

    return v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initialize()V
    .registers 7

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/camera/effect/EffectController;->initEffectWeight()V

    const/4 v5, -0x1

    move-object v0, p0

    move-object v2, v1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/effect/EffectController;->getEffectGroup(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;

    return-void
.end method

.method public isBackGroundBlur()Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/EffectController;->getEffect(Z)I

    move-result v1

    sget v2, Lcom/android/camera/effect/EffectController;->sBackgroundBlurIndex:I

    if-ne v1, v2, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isDisplayShow()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mDisplayShow:Z

    return v0
.end method

.method public isEffectPageSelected()Z
    .registers 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget v1, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    iget v2, p0, Lcom/android/camera/effect/EffectController;->mEffectCount:I
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_f

    if-ge v1, v2, :cond_d

    const/4 v0, 0x1

    :cond_d
    monitor-exit p0

    return v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isFishEye()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    sget v1, Lcom/android/camera/effect/EffectController;->sFishEyeIndex:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_c

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isMainFrameDisplay()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mIsDrawMainFrame:Z

    return v0
.end method

.method public isNeedDrawPeaking()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mDrawPeaking:Z

    return v0
.end method

.method public isNeedRect(I)Z
    .registers 5

    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/camera/effect/EffectController;->mNeedRectSet:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_c

    const/4 v2, 0x1

    return v2

    :cond_20
    const/4 v2, 0x0

    return v2
.end method

.method public needDownScale(I)Z
    .registers 5

    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/camera/effect/EffectController;->mNeedScaleDownSet:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_c

    const/4 v2, 0x1

    return v2

    :cond_20
    const/4 v2, 0x0

    return v2
.end method

.method public setBlurEffect(Z)V
    .registers 5

    const/16 v1, 0x8

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/android/camera/effect/EffectController;->mBlur:Z

    if-eq p1, v2, :cond_1b

    if-nez p1, :cond_c

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/effect/EffectController;->mOverrideEffectIndex:I

    :cond_c
    iget v2, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-ltz v2, :cond_14

    iget v2, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    if-ge v1, v2, :cond_18

    :cond_14
    if-eqz p1, :cond_1e

    :goto_16
    iput v0, p0, Lcom/android/camera/effect/EffectController;->mBlurStep:I

    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mIsDrawMainFrame:Z

    :cond_1b
    iput-boolean p1, p0, Lcom/android/camera/effect/EffectController;->mBlur:Z

    return-void

    :cond_1e
    move v0, v1

    goto :goto_16
.end method

.method public setDeviceRotation(ZF)V
    .registers 3

    if-eqz p1, :cond_4

    const/high16 p2, -0x40800000    # -1.0f

    :cond_4
    iput p2, p0, Lcom/android/camera/effect/EffectController;->mDeviceRotation:F

    return-void
.end method

.method public setDrawPeaking(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/camera/effect/EffectController;->mDrawPeaking:Z

    return-void
.end method

.method public setEffect(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEffectAttribute(Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)V
    .registers 6

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint1:Landroid/graphics/PointF;

    invoke-virtual {v0, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint2:Landroid/graphics/PointF;

    invoke-virtual {v0, p3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iput p4, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRangeWidth:F

    return-void
.end method

.method public setInvertFlag(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iput p1, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mInvertFlag:I

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    iput p1, p0, Lcom/android/camera/effect/EffectController;->mOrientation:I

    return-void
.end method

.method public setTiltShiftMaskAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/android/camera/effect/EffectController;->mTiltShiftMaskAlpha:F

    return-void
.end method
