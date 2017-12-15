.class public Lcom/android/camera/stereo/StereoDataGroup;
.super Ljava/lang/Object;
.source "StereoDataGroup.java"


# instance fields
.field private mClearImage:[B

.field private mDepthMap:[B

.field private mJpsData:[B

.field private mLdcData:[B

.field private mMaskAndConfigData:[B

.field private mOriginalJpegData:[B

.field private mPictureName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B[B[B[B[B[B)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/stereo/StereoDataGroup;->mPictureName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/camera/stereo/StereoDataGroup;->mOriginalJpegData:[B

    iput-object p3, p0, Lcom/android/camera/stereo/StereoDataGroup;->mJpsData:[B

    iput-object p4, p0, Lcom/android/camera/stereo/StereoDataGroup;->mMaskAndConfigData:[B

    iput-object p5, p0, Lcom/android/camera/stereo/StereoDataGroup;->mDepthMap:[B

    iput-object p6, p0, Lcom/android/camera/stereo/StereoDataGroup;->mClearImage:[B

    iput-object p7, p0, Lcom/android/camera/stereo/StereoDataGroup;->mLdcData:[B

    return-void
.end method


# virtual methods
.method public getClearImage()[B
    .registers 2

    iget-object v0, p0, Lcom/android/camera/stereo/StereoDataGroup;->mClearImage:[B

    return-object v0
.end method

.method public getDepthMap()[B
    .registers 2

    iget-object v0, p0, Lcom/android/camera/stereo/StereoDataGroup;->mDepthMap:[B

    return-object v0
.end method

.method public getJpsData()[B
    .registers 2

    iget-object v0, p0, Lcom/android/camera/stereo/StereoDataGroup;->mJpsData:[B

    return-object v0
.end method

.method public getLdcData()[B
    .registers 2

    iget-object v0, p0, Lcom/android/camera/stereo/StereoDataGroup;->mLdcData:[B

    return-object v0
.end method

.method public getMaskAndConfigData()[B
    .registers 2

    iget-object v0, p0, Lcom/android/camera/stereo/StereoDataGroup;->mMaskAndConfigData:[B

    return-object v0
.end method

.method public getOriginalJpegData()[B
    .registers 2

    iget-object v0, p0, Lcom/android/camera/stereo/StereoDataGroup;->mOriginalJpegData:[B

    return-object v0
.end method

.method public getPictureName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/stereo/StereoDataGroup;->mPictureName:Ljava/lang/String;

    return-object v0
.end method
