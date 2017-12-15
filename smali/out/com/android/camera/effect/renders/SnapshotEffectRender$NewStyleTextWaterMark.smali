.class Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;
.super Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;
.source "SnapshotEffectRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/renders/SnapshotEffectRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewStyleTextWaterMark"
.end annotation


# instance fields
.field private final TEXT_PIXEL_SIZE:F

.field private mCenterX:I

.field private mCenterY:I

.field private mCharMargin:I

.field private mHorizontalPadding:I

.field private mPadding:I

.field private mVerticalPadding:I

.field private mWaterHeight:I

.field private mWaterText:Ljava/lang/String;

.field private mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

.field private mWaterWidth:I

.field final synthetic this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;


# direct methods
.method private constructor <init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljava/lang/String;III)V
    .registers 12

    const v4, 0x41f0a2f9

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;-><init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;III)V

    iput v4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->TEXT_PIXEL_SIZE:F

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v2, v1

    const/high16 v3, 0x44870000    # 1080.0f

    div-float v0, v2, v3

    iput-object p2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterText:Ljava/lang/String;

    mul-float v3, v4, v0

    const/4 v4, -0x1

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FII)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterWidth:I

    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterHeight:I

    float-to-double v2, v0

    const-wide v4, 0x4045d7efb3f3733bL    # 43.687002653

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mPadding:I

    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterHeight:I

    int-to-float v2, v2

    const v3, 0x3e051eb8    # 0.13f

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mCharMargin:I

    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mPadding:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mHorizontalPadding:I

    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mPadding:I

    iget v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mCharMargin:I

    sub-int/2addr v2, v3

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mVerticalPadding:I

    invoke-direct {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->calcCenterAxis()V

    sget-boolean v2, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v2, :cond_65

    invoke-direct {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->print()V

    :cond_65
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljava/lang/String;IIILcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;-><init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljava/lang/String;III)V

    return-void
.end method

.method private calcCenterAxis()V
    .registers 3

    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mOrientation:I

    sparse-switch v0, :sswitch_data_5e

    :goto_5
    return-void

    :sswitch_6
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mPictureWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mHorizontalPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mCenterX:I

    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mPictureHeight:I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mVerticalPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mCenterY:I

    goto :goto_5

    :sswitch_1f
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mPictureWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mVerticalPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mCenterX:I

    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mHorizontalPadding:I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mCenterY:I

    goto :goto_5

    :sswitch_35
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mHorizontalPadding:I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mCenterX:I

    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mVerticalPadding:I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mCenterY:I

    goto :goto_5

    :sswitch_48
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mVerticalPadding:I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mCenterX:I

    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mPictureHeight:I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mHorizontalPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mCenterY:I

    goto :goto_5

    :sswitch_data_5e
    .sparse-switch
        0x0 -> :sswitch_6
        0x5a -> :sswitch_1f
        0xb4 -> :sswitch_35
        0x10e -> :sswitch_48
    .end sparse-switch
.end method

.method private print()V
    .registers 4

    const-string/jumbo v0, "SnapshotEffectProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WaterMark mPictureWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mPictureWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mPictureHeight ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mPictureHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mWaterText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mCenterX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mCenterX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mCenterY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mCenterY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mWaterWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mWaterHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mPadding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mPadding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getCenterX()I
    .registers 2

    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mCenterX:I

    return v0
.end method

.method public getCenterY()I
    .registers 2

    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mCenterY:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterHeight:I

    return v0
.end method

.method public getTexture()Lcom/android/gallery3d/ui/BasicTexture;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$NewStyleTextWaterMark;->mWaterWidth:I

    return v0
.end method
