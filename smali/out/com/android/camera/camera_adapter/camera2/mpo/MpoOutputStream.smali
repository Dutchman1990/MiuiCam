.class Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;
.super Ljava/io/FilterOutputStream;
.source "MpoOutputStream.java"


# static fields
.field private static final DC_CROP_INFO_BYTE_SIZE:I


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mByteToCopy:I

.field private mByteToSkip:I

.field private mCropInfo:Ljava/nio/ByteBuffer;

.field private mCurrentImageData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

.field private mMpoData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;

.field private mMpoOffsetStart:I

.field private mSingleByteArray:[B

.field private mSize:I

.field private mSkipCropData:Z

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "Qualcomm Dual Camera Attributes"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->DC_CROP_INFO_BYTE_SIZE:I

    return-void
.end method

.method protected constructor <init>(Ljava/io/OutputStream;)V
    .registers 5

    const/4 v2, 0x0

    new-instance v0, Ljava/io/BufferedOutputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mState:I

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSingleByteArray:[B

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    sget v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->DC_CROP_INFO_BYTE_SIZE:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mMpoOffsetStart:I

    iput v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    iput-boolean v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSkipCropData:Z

    return-void
.end method

.method private isDualCamCropInfo()Z
    .registers 6

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sget v3, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->DC_CROP_INFO_BYTE_SIZE:I

    if-eq v2, v3, :cond_c

    return v4

    :cond_c
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v1, 0x0

    :goto_12
    const-string/jumbo v2, "Qualcomm Dual Camera Attributes"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2f

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-char v0, v2

    const-string/jumbo v2, "Qualcomm Dual Camera Attributes"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v0, :cond_2c

    return v4

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_2f
    const/4 v2, 0x1

    return v2
.end method

.method private requestByteToBuffer(Ljava/nio/ByteBuffer;I[BII)I
    .registers 9

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int v0, p2, v2

    if-le p5, v0, :cond_d

    move v1, v0

    :goto_9
    invoke-virtual {p1, p3, p4, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return v1

    :cond_d
    move v1, p5

    goto :goto_9
.end method

.method private resetStates()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mState:I

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mByteToSkip:I

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mByteToCopy:I

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-void
.end method

.method private updateIndexIfdOffsets(Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;I)V
    .registers 10

    iget-object v4, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mMpoData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;

    invoke-virtual {v4}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->getPrimaryMpoImage()Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    move-result-object v4

    sget v5, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_MP_ENTRY:I

    int-to-short v5, v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getTag(SI)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getMpEntryValue()Ljava/util/List;

    move-result-object v2

    const/4 v1, 0x1

    :goto_13
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2a

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;->getImageOffset()I

    move-result v4

    sub-int/2addr v4, p2

    invoke-virtual {v0, v4}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;->setImageOffset(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_2a
    invoke-virtual {v3, v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->setValue(Ljava/util/List;)Z

    return-void
.end method

.method private writeAllTags(Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getIndexIfdData()Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->getTagCount()I

    move-result v2

    if-lez v2, :cond_14

    iget v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mMpoOffsetStart:I

    invoke-direct {p0, v1, v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->updateIndexIfdOffsets(Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;I)V

    invoke-direct {p0, v1, p1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->writeIfd(Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V

    :cond_14
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getAttribIfdData()Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->getTagCount()I

    move-result v2

    if-lez v2, :cond_23

    invoke-direct {p0, v0, p1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->writeIfd(Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V

    :cond_23
    return-void
.end method

.method private writeIfd(Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x4

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->getAllTags()[Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    move-result-object v3

    array-length v5, v3

    int-to-short v5, v5

    invoke-virtual {p2, v5}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    array-length v6, v3

    move v5, v4

    :goto_d
    if-ge v5, v6, :cond_66

    aget-object v2, v3, v5

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getTagId()S

    move-result v7

    invoke-virtual {p2, v7}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getDataType()S

    move-result v7

    invoke-virtual {p2, v7}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getComponentCount()I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    const-string/jumbo v7, "MpoOutputStream"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getDataSize()I

    move-result v7

    if-le v7, v10, :cond_54

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getOffset()I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    :cond_51
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_54
    invoke-static {v2, p2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->writeTagValue(Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V

    const/4 v0, 0x0

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getDataSize()I

    move-result v7

    rsub-int/lit8 v1, v7, 0x4

    :goto_5e
    if-ge v0, v1, :cond_51

    invoke-virtual {p2, v4}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    :cond_66
    invoke-virtual {p1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->getOffsetToNextIfd()I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    array-length v5, v3

    :goto_6e
    if-ge v4, v5, :cond_7e

    aget-object v2, v3, v4

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getDataSize()I

    move-result v6

    if-le v6, v10, :cond_7b

    invoke-static {v2, p2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->writeTagValue(Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V

    :cond_7b
    add-int/lit8 v4, v4, 0x1

    goto :goto_6e

    :cond_7e
    return-void
.end method

.method private writeMpoData()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mMpoData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;

    if-nez v2, :cond_5

    return-void

    :cond_5
    const-string/jumbo v2, "MpoOutputStream"

    const-string/jumbo v3, "Writing mpo data..."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->calculateAllIfdOffsets()I

    move-result v2

    add-int/lit8 v1, v2, 0x6

    const v2, 0xffff

    if-le v1, v2, :cond_24

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Exif header is too large (>64Kb)"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_24
    new-instance v0, Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {v0, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    const/16 v2, -0x1e

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    int-to-short v2, v1

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    const v2, 0x4d504600    # 2.18390528E8f

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    iget v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mMpoOffsetStart:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4d

    iget v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mMpoOffsetStart:I

    :cond_4d
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_80

    const/16 v2, 0x4d4d

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    :goto_5c
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    const/16 v2, 0x2a

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    const/16 v2, 0xe

    if-le v1, v2, :cond_86

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->writeAllTags(Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V

    :goto_76
    iget v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    return-void

    :cond_80
    const/16 v2, 0x4949

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    goto :goto_5c

    :cond_86
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    goto :goto_76
.end method

.method static writeTagValue(Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;Lcom/android/gallery3d/exif/OrderedDataOutputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getDataType()S

    move-result v3

    packed-switch v3, :pswitch_data_68

    :cond_8
    :goto_8
    :pswitch_8
    return-void

    :pswitch_9
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getStringByte()[B

    move-result-object v0

    array-length v3, v0

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getComponentCount()I

    move-result v4

    if-ne v3, v4, :cond_1d

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aput-byte v5, v0, v3

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->write([B)V

    goto :goto_8

    :cond_1d
    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->write([B)V

    invoke-virtual {p1, v5}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->write(I)V

    goto :goto_8

    :pswitch_24
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getComponentCount()I

    move-result v2

    :goto_29
    if-ge v1, v2, :cond_8

    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getValueAt(I)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {p1, v3}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :pswitch_36
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getComponentCount()I

    move-result v2

    :goto_3b
    if-ge v1, v2, :cond_8

    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getRational(I)Lcom/android/gallery3d/exif/Rational;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeRational(Lcom/android/gallery3d/exif/Rational;)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :pswitch_47
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getComponentCount()I

    move-result v3

    new-array v0, v3, [B

    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getBytes([B)V

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->write([B)V

    goto :goto_8

    :pswitch_54
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getComponentCount()I

    move-result v2

    :goto_59
    if-ge v1, v2, :cond_8

    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getValueAt(I)J

    move-result-wide v4

    long-to-int v3, v4

    int-to-short v3, v3

    invoke-virtual {p1, v3}, Lcom/android/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/gallery3d/exif/OrderedDataOutputStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_47
        :pswitch_9
        :pswitch_54
        :pswitch_24
        :pswitch_36
        :pswitch_8
        :pswitch_47
        :pswitch_8
        :pswitch_24
        :pswitch_36
    .end packed-switch
.end method


# virtual methods
.method protected setMpoData(Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;)V
    .registers 3

    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mMpoData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mMpoData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->updateAllTags()V

    return-void
.end method

.method size()I
    .registers 2

    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    return v0
.end method

.method public write(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSingleByteArray:[B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSingleByteArray:[B

    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->write([B)V

    return-void
.end method

.method public write([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mByteToSkip:I

    if-gtz v0, :cond_8

    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mByteToCopy:I

    if-lez v0, :cond_39

    :cond_8
    if-lez p3, :cond_3e

    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mByteToSkip:I

    if-lez v0, :cond_1b

    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mByteToSkip:I

    if-le p3, v0, :cond_4b

    iget v7, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mByteToSkip:I

    :goto_14
    sub-int/2addr p3, v7

    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mByteToSkip:I

    sub-int/2addr v0, v7

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mByteToSkip:I

    add-int/2addr p2, v7

    :cond_1b
    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mByteToCopy:I

    if-lez v0, :cond_36

    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mByteToCopy:I

    if-le p3, v0, :cond_4d

    iget v7, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mByteToCopy:I

    :goto_25
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, v7}, Ljava/io/OutputStream;->write([BII)V

    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    sub-int/2addr p3, v7

    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mByteToCopy:I

    sub-int/2addr v0, v7

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mByteToCopy:I

    add-int/2addr p2, v7

    :cond_36
    if-nez p3, :cond_4f

    return-void

    :cond_39
    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    :cond_3e
    if-lez p3, :cond_4a

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    :cond_4a
    return-void

    :cond_4b
    move v7, p3

    goto :goto_14

    :cond_4d
    move v7, p3

    goto :goto_25

    :cond_4f
    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mState:I

    packed-switch v0, :pswitch_data_20c

    goto :goto_0

    :pswitch_55
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x2

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->requestByteToBuffer(Ljava/nio/ByteBuffer;I[BII)I

    move-result v6

    add-int/2addr p2, v6

    sub-int/2addr p3, v6

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_6c

    return-void

    :cond_6c
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const/16 v1, -0x28

    if-eq v0, v1, :cond_84

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Not a valid jpeg image, cannot write exif"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_84
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mState:I

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_0

    :pswitch_a1
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->requestByteToBuffer(Ljava/nio/ByteBuffer;I[BII)I

    move-result v6

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d7

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v10

    const/16 v0, -0x27

    if-ne v10, v0, :cond_d7

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :cond_d7
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_e1

    return-void

    :cond_e1
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    const/16 v0, -0x1f

    if-eq v8, v0, :cond_f4

    const/16 v0, -0x20

    if-ne v8, v0, :cond_11e

    :cond_f4
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mByteToCopy:I

    add-int/2addr p2, v6

    sub-int/2addr p3, v6

    :goto_117
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_0

    :cond_11e
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->writeMpoData()V

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSkipCropData:Z

    if-eqz v0, :cond_129

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mState:I

    goto :goto_117

    :cond_129
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mState:I

    goto :goto_117

    :pswitch_12d
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->requestByteToBuffer(Ljava/nio/ByteBuffer;I[BII)I

    move-result v6

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_163

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v10

    const/16 v0, -0x27

    if-ne v10, v0, :cond_163

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :cond_163
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_16d

    return-void

    :cond_16d
    add-int/2addr p2, v6

    sub-int/2addr p3, v6

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    invoke-static {v8}, Lcom/android/gallery3d/exif/JpegHeader;->isSofMarker(S)Z

    move-result v0

    if-nez v0, :cond_1f5

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    sget v2, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->DC_CROP_INFO_BYTE_SIZE:I

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->requestByteToBuffer(Ljava/nio/ByteBuffer;I[BII)I

    move-result v6

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->isDualCamCropInfo()Z

    move-result v0

    if-eqz v0, :cond_1d3

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    add-int/lit8 v9, v0, -0x2

    iput v9, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mByteToSkip:I

    :goto_1b3
    if-lez v9, :cond_1c4

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    add-int/lit8 v9, v9, -0x1

    goto :goto_1b3

    :cond_1c4
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mState:I

    :goto_1c7
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mCropInfo:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :goto_1cc
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_0

    :cond_1d3
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mByteToCopy:I

    goto :goto_1c7

    :cond_1f5
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSize:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mState:I

    goto :goto_1cc

    :pswitch_data_20c
    .packed-switch 0x0
        :pswitch_55
        :pswitch_a1
        :pswitch_12d
    .end packed-switch
.end method

.method writeMpoFile()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mMpoData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->getPrimaryMpoImage()Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mMpoData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v2

    if-le v2, v3, :cond_13

    iput-boolean v3, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSkipCropData:Z

    :cond_13
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getJpegData()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->write([B)V

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->flush()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mSkipCropData:Z

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mMpoData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->getAuxiliaryMpoImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->resetStates()V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->mCurrentImageData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getJpegData()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->write([B)V

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->flush()V

    goto :goto_2c

    :cond_4a
    return-void
.end method
