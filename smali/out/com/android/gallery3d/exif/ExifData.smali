.class Lcom/android/gallery3d/exif/ExifData;
.super Ljava/lang/Object;
.source "ExifData.java"


# static fields
.field private static final USER_COMMENT_ASCII:[B

.field private static final USER_COMMENT_JIS:[B

.field private static final USER_COMMENT_UNICODE:[B


# instance fields
.field private final mByteOrder:Ljava/nio/ByteOrder;

.field private final mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

.field private mStripBytes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mThumbnail:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v1, 0x8

    new-array v0, v1, [B

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/gallery3d/exif/ExifData;->USER_COMMENT_ASCII:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_20

    sput-object v0, Lcom/android/gallery3d/exif/ExifData;->USER_COMMENT_JIS:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_28

    sput-object v0, Lcom/android/gallery3d/exif/ExifData;->USER_COMMENT_UNICODE:[B

    return-void

    :array_18
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_20
    .array-data 1
        0x4at
        0x49t
        0x53t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_28
    .array-data 1
        0x55t
        0x4et
        0x49t
        0x43t
        0x4ft
        0x44t
        0x45t
        0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/nio/ByteOrder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/gallery3d/exif/IfdData;

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    return-void
.end method


# virtual methods
.method protected addIfdData(Lcom/android/gallery3d/exif/IfdData;)V
    .registers 4

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    invoke-virtual {p1}, Lcom/android/gallery3d/exif/IfdData;->getId()I

    move-result v1

    aput-object p1, v0, v1

    return-void
.end method

.method protected addTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;
    .registers 4

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getIfd()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/exif/ExifData;->addTag(Lcom/android/gallery3d/exif/ExifTag;I)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v1

    return-object v1

    :cond_c
    return-object v1
.end method

.method protected addTag(Lcom/android/gallery3d/exif/ExifTag;I)Lcom/android/gallery3d/exif/ExifTag;
    .registers 6

    const/4 v2, 0x0

    if-eqz p1, :cond_12

    invoke-static {p2}, Lcom/android/gallery3d/exif/ExifTag;->isValidIfd(I)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0, p2}, Lcom/android/gallery3d/exif/ExifData;->getOrCreateIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/exif/IfdData;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v1

    return-object v1

    :cond_12
    return-object v2
.end method

.method protected clearThumbnailAndStrips()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mThumbnail:[B

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-ne p0, p1, :cond_5

    return v7

    :cond_5
    if-nez p1, :cond_8

    return v6

    :cond_8
    instance-of v4, p1, Lcom/android/gallery3d/exif/ExifData;

    if-eqz v4, :cond_6c

    move-object v0, p1

    check-cast v0, Lcom/android/gallery3d/exif/ExifData;

    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    iget-object v5, p0, Lcom/android/gallery3d/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_23

    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_24

    :cond_23
    return v6

    :cond_24
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifData;->mThumbnail:[B

    iget-object v5, p0, Lcom/android/gallery3d/exif/ExifData;->mThumbnail:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_23

    const/4 v1, 0x0

    :goto_2f
    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_51

    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    iget-object v5, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_4e

    return v6

    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_51
    const/4 v1, 0x0

    :goto_52
    const/4 v4, 0x5

    if-ge v1, v4, :cond_6b

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/exif/ExifData;->getIfdData(I)Lcom/android/gallery3d/exif/IfdData;

    move-result-object v3

    if-eq v2, v3, :cond_67

    if-eqz v2, :cond_67

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/exif/IfdData;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    :cond_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    :cond_6a
    return v6

    :cond_6b
    return v7

    :cond_6c
    return v6
.end method

.method protected getAllTags()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v5, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    array-length v8, v7

    move v6, v5

    :goto_b
    if-ge v6, v8, :cond_27

    aget-object v0, v7, v6

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/IfdData;->getAllTags()[Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v3

    if-eqz v3, :cond_23

    array-length v9, v3

    move v4, v5

    :goto_19
    if-ge v4, v9, :cond_23

    aget-object v2, v3, v4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_23
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_b

    :cond_27
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2e

    return-object v10

    :cond_2e
    return-object v1
.end method

.method protected getByteOrder()Ljava/nio/ByteOrder;
    .registers 2

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method protected getCompressedThumbnail()[B
    .registers 2

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mThumbnail:[B

    return-object v0
.end method

.method protected getIfdData(I)Lcom/android/gallery3d/exif/IfdData;
    .registers 3

    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    aget-object v0, v0, p1

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getOrCreateIfdData(I)Lcom/android/gallery3d/exif/IfdData;
    .registers 4

    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    aget-object v0, v1, p1

    if-nez v0, :cond_f

    new-instance v0, Lcom/android/gallery3d/exif/IfdData;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/exif/IfdData;-><init>(I)V

    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    aput-object v0, v1, p1

    :cond_f
    return-object v0
.end method

.method protected getStrip(I)[B
    .registers 3

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method protected getStripCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getTag(SI)Lcom/android/gallery3d/exif/ExifTag;
    .registers 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    aget-object v0, v2, p2

    if-nez v0, :cond_8

    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/exif/IfdData;->getTag(S)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v1

    goto :goto_7
.end method

.method protected getXiaomiComment()Ljava/lang/String;
    .registers 10

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    const/4 v5, 0x2

    aget-object v2, v4, v5

    if-nez v2, :cond_9

    return-object v8

    :cond_9
    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_XIAOMI_COMMENT:I

    invoke-static {v4}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/exif/IfdData;->getTag(S)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v3

    if-nez v3, :cond_16

    return-object v8

    :cond_16
    invoke-virtual {v3}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1e

    return-object v8

    :cond_1e
    invoke-virtual {v3}, Lcom/android/gallery3d/exif/ExifTag;->getStringByte()[B

    move-result-object v0

    :try_start_22
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v0, v4

    if-nez v4, :cond_36

    new-instance v4, Ljava/lang/String;

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    const-string/jumbo v6, "US-ASCII"

    const/4 v7, 0x0

    invoke-direct {v4, v0, v7, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v4

    :cond_36
    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "US-ASCII"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_22 .. :try_end_3e} :catch_3f

    return-object v4

    :catch_3f
    move-exception v1

    const-string/jumbo v4, "ExifData"

    const-string/jumbo v5, "Failed to decode the xiaomicomment"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8
.end method

.method protected hasCompressedThumbnail()Z
    .registers 2

    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifData;->mThumbnail:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected hasUncompressedStrip()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method protected removeTag(SI)V
    .registers 5

    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifData;->mIfdDatas:[Lcom/android/gallery3d/exif/IfdData;

    aget-object v0, v1, p2

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/exif/IfdData;->removeTag(S)V

    return-void
.end method

.method protected setCompressedThumbnail([B)V
    .registers 2

    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifData;->mThumbnail:[B

    return-void
.end method

.method protected setStripBytes(I[B)V
    .registers 6

    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_e

    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_d
    return-void

    :cond_e
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_14
    if-ge v0, p1, :cond_1f

    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_1f
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d
.end method
