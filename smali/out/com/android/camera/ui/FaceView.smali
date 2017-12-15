.class public Lcom/android/camera/ui/FaceView;
.super Lcom/android/camera/ui/FrameView;
.source "FaceView.java"


# static fields
.field private static configuration:Landroid/content/res/Configuration;


# instance fields
.field private final LOGV:Z

.field private mAgeFemaleHonPadding:I

.field private mAgeMaleHonPadding:I

.field private mAgeOnlyRangeAlias:[Ljava/lang/String;

.field private mAgeRangeAlias:[Ljava/lang/String;

.field private mAgeVerPadding:I

.field private mBeautyScoreIc:Landroid/graphics/drawable/Drawable;

.field private mBeautyScoreSurmounted:Landroid/graphics/drawable/Drawable;

.field private mBeautyScoreWinner:Landroid/graphics/drawable/Drawable;

.field private mDetectedFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

.field private mDisplayOrientation:I

.field private mFaceIndicator:Landroid/graphics/drawable/Drawable;

.field private mFaceInfoFormat:Ljava/lang/String;

.field private mFaceInfoPop:Landroid/graphics/drawable/Drawable;

.field private mFacePopupBottom:I

.field private mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

.field private mGap:I

.field private mGenderFemale:Ljava/lang/String;

.field private mGenderMale:Ljava/lang/String;

.field private mLatestFaceIndex:I

.field private mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

.field private mMagicPaint:Landroid/graphics/Paint;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMirror:Z

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPopBottomMargin:I

.field private mRect:Landroid/graphics/RectF;

.field private mRectPaint:Landroid/graphics/Paint;

.field private mSBeautyScoreSurmounted:Landroid/graphics/drawable/Drawable;

.field private mScoreHonPadding:I

.field private mScoreVerPadding:I

.field private mSexFemailIc:Landroid/graphics/drawable/Drawable;

.field private mSexMailIc:Landroid/graphics/drawable/Drawable;

.field private mShowAgeandAge:Ljava/lang/String;

.field private mSingleDrawableMargin:I

.field private mSkipDraw:Z

.field private mTextBounds:Landroid/graphics/Rect;

.field private mWinnerIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/FaceView;->configuration:Landroid/content/res/Configuration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const/4 v3, -0x1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->LOGV:Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    iput v3, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e014d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mGenderMale:Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e014e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mGenderFemale:Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e014c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoFormat:Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mAgeRangeAlias:[Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mAgeOnlyRangeAlias:[Ljava/lang/String;

    iput v3, p0, Lcom/android/camera/ui/FaceView;->mWinnerIndex:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mTextBounds:Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/camera/Device;->isSupportedMagicMirror()Z

    move-result v0

    if-eqz v0, :cond_1d8

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mMagicPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMagicPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMagicPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMagicPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->getMiuiTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoPop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mSexMailIc:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mSexFemailIc:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mBeautyScoreIc:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mBeautyScoreWinner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mBeautyScoreSurmounted:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mSBeautyScoreSurmounted:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mAgeVerPadding:I

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mGap:I

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mPopBottomMargin:I

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mScoreHonPadding:I

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mScoreVerPadding:I

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mAgeMaleHonPadding:I

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mAgeFemaleHonPadding:I

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mSingleDrawableMargin:I

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoPop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mFacePopupBottom:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mRectPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mRectPaint:Landroid/graphics/Paint;

    const/16 v1, -0x47c9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mRectPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mRectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_1d8
    return-void
.end method

.method private drawFacePopInfo(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;IIII)V
    .registers 17

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b3

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mMagicPaint:Landroid/graphics/Paint;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/FaceView;->mTextBounds:Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-virtual {v3, p4, v6, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    :goto_12
    mul-int/lit8 v4, p5, 0x2

    if-eqz p2, :cond_be

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    :goto_1a
    add-int/2addr v4, v3

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-eqz v3, :cond_c1

    iget v3, p0, Lcom/android/camera/ui/FaceView;->mGap:I

    :goto_25
    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int v1, v3, v4

    mul-int/lit8 v4, p6, 0x2

    if-eqz p2, :cond_c4

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    :goto_36
    add-int v0, v4, v3

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    float-to-int v3, v3

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    sub-int/2addr v4, v0

    sub-int v4, v4, p8

    sub-int/2addr v4, p7

    iget-object v5, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    float-to-int v5, v5

    div-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    sub-int v6, v6, p8

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p3, :cond_69

    invoke-virtual {p3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_69
    if-eqz p2, :cond_87

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p5

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p6

    iget v5, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, p5

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, p6

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_87
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-eqz v3, :cond_b2

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int v4, v3, p5

    if-eqz p2, :cond_c7

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget v5, p0, Lcom/android/camera/ui/FaceView;->mGap:I

    add-int/2addr v3, v5

    :goto_9c
    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/camera/ui/FaceView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/ui/FaceView;->mMagicPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_b2
    return-void

    :cond_b3
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mTextBounds:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_12

    :cond_be
    const/4 v3, 0x0

    goto/16 :goto_1a

    :cond_c1
    const/4 v3, 0x0

    goto/16 :goto_25

    :cond_c4
    const/4 v3, 0x0

    goto/16 :goto_36

    :cond_c7
    const/4 v3, 0x0

    goto :goto_9c
.end method

.method private drawFaceRect(Landroid/graphics/Canvas;)V
    .registers 7

    invoke-static {}, Lcom/android/camera/Device;->isSupportedMagicMirror()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string/jumbo v0, "pref_camera_magic_mirror_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_16
.end method

.method private drawGenderAge(Landroid/graphics/Canvas;Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V
    .registers 14

    invoke-direct {p0, p2}, Lcom/android/camera/ui/FaceView;->isValidAGInfo(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-static {}, Lcom/android/camera/Device;->isSupportedMagicMirror()Z

    move-result v0

    if-eqz v0, :cond_67

    const-string/jumbo v0, "pref_camera_magic_mirror_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    iget v0, p2, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->gender:F

    const v1, 0x3ecccccd    # 0.4f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4c

    const/4 v10, 0x1

    :goto_1f
    const-string/jumbo v4, ""

    const-string/jumbo v0, "on"

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mShowAgeandAge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    if-eqz v10, :cond_4e

    iget v0, p2, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->ageFemale:F

    :goto_31
    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    :cond_36
    :goto_36
    if-eqz v10, :cond_61

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mSexFemailIc:Landroid/graphics/drawable/Drawable;

    :goto_3a
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoPop:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_64

    iget v5, p0, Lcom/android/camera/ui/FaceView;->mAgeFemaleHonPadding:I

    :goto_40
    iget v6, p0, Lcom/android/camera/ui/FaceView;->mAgeVerPadding:I

    iget v7, p0, Lcom/android/camera/ui/FaceView;->mFacePopupBottom:I

    iget v8, p0, Lcom/android/camera/ui/FaceView;->mPopBottomMargin:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/ui/FaceView;->drawFacePopInfo(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;IIII)V

    :cond_4b
    :goto_4b
    return-void

    :cond_4c
    const/4 v10, 0x0

    goto :goto_1f

    :cond_4e
    iget v0, p2, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->ageMale:F

    goto :goto_31

    :cond_51
    iget v0, p2, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->ageMale:F

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FaceView;->getAgeIndex(F)I

    move-result v9

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mAgeOnlyRangeAlias:[Ljava/lang/String;

    array-length v0, v0

    if-ge v9, v0, :cond_36

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mAgeOnlyRangeAlias:[Ljava/lang/String;

    aget-object v4, v0, v9

    goto :goto_36

    :cond_61
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mSexMailIc:Landroid/graphics/drawable/Drawable;

    goto :goto_3a

    :cond_64
    iget v5, p0, Lcom/android/camera/ui/FaceView;->mAgeMaleHonPadding:I

    goto :goto_40

    :cond_67
    invoke-direct {p0, p2}, Lcom/android/camera/ui/FaceView;->getShowInfo(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mTextBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v0, v4, v3, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mTextBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mTextBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4b
.end method

.method private getAgeIndex(F)I
    .registers 3

    const/high16 v0, 0x40e00000    # 7.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    const/high16 v0, 0x41880000    # 17.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/high16 v0, 0x41f00000    # 30.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_18

    const/4 v0, 0x2

    return v0

    :cond_18
    const/high16 v0, 0x42300000    # 44.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_20

    const/4 v0, 0x3

    return v0

    :cond_20
    const/high16 v0, 0x42700000    # 60.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_28

    const/4 v0, 0x4

    return v0

    :cond_28
    const/4 v0, 0x5

    return v0
.end method

.method private getScoreDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 4

    const/4 v1, 0x0

    if-ltz p1, :cond_7

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    if-nez v0, :cond_8

    :cond_7
    return-object v1

    :cond_8
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    array-length v0, v0

    if-gt p1, v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->beautyscore:F

    const/high16 v1, 0x42c40000    # 98.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1c

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mSBeautyScoreSurmounted:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_1c
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->beautyscore:F

    const/high16 v1, 0x42b40000    # 90.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2b

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mBeautyScoreSurmounted:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_2b
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mWinnerIndex:I

    if-ne p1, v0, :cond_32

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mBeautyScoreWinner:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_32
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mBeautyScoreIc:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getShowInfo(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Ljava/lang/String;
    .registers 9

    const v5, 0x3ecccccd    # 0.4f

    const-string/jumbo v3, "on"

    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mShowAgeandAge:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mGenderMale:Ljava/lang/String;

    iget v3, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->ageMale:F

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget v3, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->gender:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_26

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mGenderFemale:Ljava/lang/String;

    iget v3, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->ageFemale:F

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :cond_26
    sget-object v3, Lcom/android/camera/ui/FaceView;->configuration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoFormat:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_3a
    iget v3, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->ageMale:F

    invoke-direct {p0, v3}, Lcom/android/camera/ui/FaceView;->getAgeIndex(F)I

    move-result v2

    iget v3, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->gender:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_4e

    iget v3, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->ageFemale:F

    invoke-direct {p0, v3}, Lcom/android/camera/ui/FaceView;->getAgeIndex(F)I

    move-result v3

    add-int/lit8 v2, v3, 0x6

    :cond_4e
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mAgeRangeAlias:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_58

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mAgeRangeAlias:[Ljava/lang/String;

    aget-object v3, v3, v2

    return-object v3

    :cond_58
    const/4 v3, 0x0

    return-object v3
.end method

.method private getShowType([Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)I
    .registers 9

    const/4 v6, -0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_43

    array-length v4, p1

    if-lez v4, :cond_43

    invoke-static {}, Lcom/android/camera/Device;->isSupportedMagicMirror()Z

    move-result v4

    if-eqz v4, :cond_48

    const-string/jumbo v4, "pref_camera_magic_mirror_key"

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_48

    const/4 v2, 0x0

    iput v6, p0, Lcom/android/camera/ui/FaceView;->mWinnerIndex:I

    const/4 v1, 0x0

    :goto_1a
    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    array-length v4, v4

    if-ge v1, v4, :cond_3f

    aget-object v0, p1, v1

    iget v4, v0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->beautyscore:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3c

    add-int/lit8 v2, v2, 0x1

    iget v4, p0, Lcom/android/camera/ui/FaceView;->mWinnerIndex:I

    if-eq v4, v6, :cond_3a

    iget v4, v0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->beautyscore:F

    iget v5, p0, Lcom/android/camera/ui/FaceView;->mWinnerIndex:I

    aget-object v5, p1, v5

    iget v5, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->beautyscore:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3c

    :cond_3a
    iput v1, p0, Lcom/android/camera/ui/FaceView;->mWinnerIndex:I

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_3f
    const/4 v4, 0x1

    if-le v2, v4, :cond_44

    const/4 v3, 0x2

    :cond_43
    :goto_43
    return v3

    :cond_44
    if-lez v2, :cond_43

    const/4 v3, 0x4

    goto :goto_43

    :cond_48
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->showFaceInfo()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-static {}, Lcom/android/camera/Device;->isSupportedIntelligentBeautify()Z

    move-result v4

    if-eqz v4, :cond_43

    const/4 v3, 0x1

    goto :goto_43
.end method

.method private isValidAGInfo(Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->prob:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_1f

    iget v2, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->gender:F

    const v3, 0x3ecccccd    # 0.4f

    cmpg-float v2, v2, v3

    if-lez v2, :cond_1c

    iget v2, p1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->gender:F

    const v3, 0x3f19999a    # 0.6f

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_1d

    :cond_1c
    :goto_1c
    return v0

    :cond_1d
    move v0, v1

    goto :goto_1c

    :cond_1f
    move v0, v1

    goto :goto_1c
.end method

.method private setToVisible()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method private showFaceInfo()Z
    .registers 3

    const-string/jumbo v0, "off"

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mShowAgeandAge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method

.method private updateLatestFaces()V
    .registers 6

    const/4 v4, 0x0

    iget v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_16

    iput v4, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    :goto_8
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v2

    if-nez v2, :cond_1d

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    iget v3, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    :goto_15
    return-void

    :cond_16
    iget v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    goto :goto_8

    :cond_1d
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v0, v2, v4

    const/4 v1, 0x1

    :goto_22
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    array-length v2, v2

    if-ge v1, v2, :cond_4a

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, v0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, v0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_47

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v0, v2, v1

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_4a
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    iget v3, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    aput-object v0, v2, v3

    goto :goto_15
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->clearPreviousFaces()V

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    return-void
.end method

.method public clearPreviousFaces()V
    .registers 4

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    array-length v1, v1

    if-ge v0, v1, :cond_11

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_11
    return-void
.end method

.method public faceDetected()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mDetectedFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mDetectedFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    array-length v1, v1

    if-lez v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public faceExists()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    array-length v1, v1

    if-lez v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public getFaces()[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    return-object v0
.end method

.method public getFocusRect()Landroid/graphics/RectF;
    .registers 10

    const/4 v2, 0x0

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v8

    if-eqz v8, :cond_56

    iget v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    if-ltz v0, :cond_56

    iget v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_56

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-boolean v1, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    iget v2, p0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    invoke-virtual {v8}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v3

    invoke-virtual {v8}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-static/range {v0 .. v6}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIIIII)V

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    iget v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object v7

    :cond_56
    return-object v2
.end method

.method public isFaceStable()Z
    .registers 14

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    iget-object v9, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    const/4 v8, 0x0

    array-length v10, v9

    :goto_a
    if-ge v8, v10, :cond_38

    aget-object v5, v9, v8

    if-nez v5, :cond_17

    add-int/lit8 v4, v4, 0x1

    const/4 v11, 0x3

    if-lt v4, v11, :cond_35

    const/4 v8, 0x0

    return v8

    :cond_17
    iget-object v11, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget-object v12, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    add-int/2addr v3, v11

    iget-object v11, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    iget-object v12, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    add-int/2addr v0, v11

    iget-object v11, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v11

    iget-object v11, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v11

    :cond_35
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_38
    iget-object v8, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    array-length v8, v8

    sub-int v6, v8, v4

    div-int/2addr v3, v6

    div-int/2addr v0, v6

    div-int/2addr v1, v6

    div-int/2addr v2, v6

    div-int/lit8 v8, v3, 0x3

    const/16 v9, 0x5a

    if-le v8, v9, :cond_56

    div-int/lit8 v7, v3, 0x3

    :goto_49
    iget-object v9, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    const/4 v8, 0x0

    array-length v10, v9

    :goto_4d
    if-ge v8, v10, :cond_86

    aget-object v5, v9, v8

    if-nez v5, :cond_59

    :cond_53
    add-int/lit8 v8, v8, 0x1

    goto :goto_4d

    :cond_56
    const/16 v7, 0x5a

    goto :goto_49

    :cond_59
    iget-object v11, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget-object v12, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    sub-int/2addr v11, v3

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-gt v11, v7, :cond_76

    iget-object v11, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v1

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    const/16 v12, 0x78

    if-le v11, v12, :cond_78

    :cond_76
    :goto_76
    const/4 v8, 0x0

    return v8

    :cond_78
    iget-object v11, v5, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    const/16 v12, 0x78

    if-le v11, v12, :cond_53

    goto :goto_76

    :cond_86
    const/16 v8, 0x29e

    if-gt v3, v8, :cond_8e

    const/16 v8, 0x29e

    if-le v0, v8, :cond_93

    :cond_8e
    const/4 v8, 0x1

    :goto_8f
    iput-boolean v8, p0, Lcom/android/camera/ui/FaceView;->mIsBigEnoughRect:Z

    const/4 v8, 0x1

    return v8

    :cond_93
    const/4 v8, 0x0

    goto :goto_8f
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15

    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mSkipDraw:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v10

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    array-length v0, v0

    if-lez v0, :cond_1e

    if-eqz v10, :cond_1e

    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    if-eqz v0, :cond_1f

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-boolean v1, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    iget v2, p0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    invoke-virtual {v10}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v3

    invoke-virtual {v10}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-static/range {v0 .. v6}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIIIII)V

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FaceView;->getShowType([Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)I

    move-result v12

    const-string/jumbo v0, "pref_camera_square_mode_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Ljava/lang/String;)Z

    move-result v11

    const/4 v9, 0x0

    :goto_61
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    array-length v0, v0

    if-ge v9, v0, :cond_100

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v1, v1, v9

    iget-object v1, v1, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    if-eqz v11, :cond_86

    invoke-virtual {v10}, Lcom/android/camera/CameraScreenNail;->getRenderRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-static {v0, v1}, Lcom/android/camera/Util;->isContaints(Landroid/graphics/Rect;Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_100

    :cond_86
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FaceView;->drawFaceRect(Landroid/graphics/Canvas;)V

    packed-switch v12, :pswitch_data_106

    :cond_8c
    :goto_8c
    :pswitch_8c
    add-int/lit8 v9, v9, 0x1

    goto :goto_61

    :pswitch_8f
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v0, v0, v9

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/FaceView;->drawGenderAge(Landroid/graphics/Canvas;Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V

    goto :goto_8c

    :pswitch_97
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mWinnerIndex:I

    if-ne v9, v0, :cond_8c

    invoke-direct {p0, v9}, Lcom/android/camera/ui/FaceView;->getScoreDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v8, p0, Lcom/android/camera/ui/FaceView;->mSingleDrawableMargin:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/ui/FaceView;->drawFacePopInfo(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;IIII)V

    goto :goto_8c

    :pswitch_ac
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v0, v0, v9

    iget v0, v0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->beautyscore:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v0, v0, v9

    iget v0, v0, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->beautyscore:F

    const/high16 v1, 0x42b40000    # 90.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d4

    invoke-direct {p0, v9}, Lcom/android/camera/ui/FaceView;->getScoreDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v8, p0, Lcom/android/camera/ui/FaceView;->mSingleDrawableMargin:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/ui/FaceView;->drawFacePopInfo(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;IIII)V

    goto :goto_8c

    :cond_d4
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mBeautyScoreIc:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoPop:Landroid/graphics/drawable/Drawable;

    const-string/jumbo v0, "%.1f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    aget-object v4, v4, v9

    iget v4, v4, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->beautyscore:F

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/FaceView;->mScoreHonPadding:I

    iget v6, p0, Lcom/android/camera/ui/FaceView;->mScoreVerPadding:I

    iget v7, p0, Lcom/android/camera/ui/FaceView;->mFacePopupBottom:I

    iget v8, p0, Lcom/android/camera/ui/FaceView;->mPopBottomMargin:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/ui/FaceView;->drawFacePopInfo(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;IIII)V

    goto :goto_8c

    :cond_100
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1e

    nop

    :pswitch_data_106
    .packed-switch 0x1
        :pswitch_8f
        :pswitch_97
        :pswitch_8c
        :pswitch_ac
    .end packed-switch
.end method

.method public pause()V
    .registers 2

    invoke-super {p0}, Lcom/android/camera/ui/FrameView;->pause()V

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->clearPreviousFaces()V

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mDetectedFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    return-void
.end method

.method public resume()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    return-void
.end method

.method public setDetectedFaces([Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mDetectedFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    return-void
.end method

.method public setDisplayOrientation(I)V
    .registers 5

    iput p1, p0, Lcom/android/camera/ui/FaceView;->mDisplayOrientation:I

    const-string/jumbo v0, "FaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDisplayOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setFaces([Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)Z
    .registers 7

    const/4 v4, 0x0

    const-string/jumbo v1, "FaceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Num of faces="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    if-eqz v1, :cond_21

    return v4

    :cond_21
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v1

    if-nez v1, :cond_2c

    if-eqz p1, :cond_3c

    array-length v1, p1

    if-lez v1, :cond_3c

    :cond_2c
    const/4 v0, 0x1

    :goto_2d
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;

    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->updateLatestFaces()V

    if-eqz v0, :cond_3a

    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->setToVisible()V

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    :cond_3a
    const/4 v1, 0x1

    return v1

    :cond_3c
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public setMirror(Z)V
    .registers 5

    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    const-string/jumbo v0, "FaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMirror="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOrientation(IZ)V
    .registers 4

    iput p1, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mSkipDraw:Z

    if-eqz v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    goto :goto_10
.end method

.method public setShowGenderAndAge(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mShowAgeandAge:Ljava/lang/String;

    return-void
.end method

.method public setSkipDraw(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mSkipDraw:Z

    return-void
.end method

.method public showFail()V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->setToVisible()V

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    return-void
.end method

.method public showStart()V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->setToVisible()V

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    return-void
.end method

.method public showSuccess()V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->setToVisible()V

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    return-void
.end method
