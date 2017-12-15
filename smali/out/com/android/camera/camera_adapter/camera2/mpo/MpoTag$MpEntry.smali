.class Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;
.super Ljava/lang/Object;
.source "MpoTag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MpEntry"
.end annotation


# instance fields
.field private mDependantImage1:S

.field private mDependantImage2:S

.field private mImageAttrib:I

.field private mImageOffset:I

.field private mImageSize:I


# direct methods
.method public constructor <init>()V
    .registers 7

    const/4 v1, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;-><init>(IIISS)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 10

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;-><init>(IIISS)V

    return-void
.end method

.method public constructor <init>(IIISS)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;->mImageAttrib:I

    iput p2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;->mImageSize:I

    iput p3, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;->mImageOffset:I

    iput-short p4, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;->mDependantImage1:S

    iput-short p5, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;->mDependantImage2:S

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;->mImageAttrib:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;->mImageSize:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;->mImageOffset:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;->mDependantImage1:S

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;->mDependantImage2:S

    return-void
.end method


# virtual methods
.method public getBytes(Ljava/nio/ByteBuffer;)Z
    .registers 5

    :try_start_0
    iget v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;->mImageAttrib:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;->mImageSize:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;->mImageOffset:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-short v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;->mDependantImage1:S

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-short v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;->mDependantImage2:S

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
    :try_end_19
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_19} :catch_1b

    const/4 v1, 0x1

    return v1

    :catch_1b
    move-exception v0

    const-string/jumbo v1, "MpoTag"

    const-string/jumbo v2, "Buffer size too small"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public getImageOffset()I
    .registers 2

    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;->mImageOffset:I

    return v0
.end method

.method public setImageOffset(I)V
    .registers 2

    iput p1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;->mImageOffset:I

    return-void
.end method
