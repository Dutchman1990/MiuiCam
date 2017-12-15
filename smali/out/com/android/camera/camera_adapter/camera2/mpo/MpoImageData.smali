.class public Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;
.super Ljava/lang/Object;
.source "MpoImageData.java"


# instance fields
.field private final mByteOrder:Ljava/nio/ByteOrder;

.field private final mJpegData:[B

.field private final mMpAttribIfdData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

.field private final mMpIndexIfdData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;


# direct methods
.method public constructor <init>([BLjava/nio/ByteOrder;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->mMpIndexIfdData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    new-instance v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->mMpAttribIfdData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->mJpegData:[B

    iput-object p2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->mByteOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method private calculateOffsetOfIfd(Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;I)I
    .registers 9

    invoke-virtual {p1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->getTagCount()I

    move-result v2

    mul-int/lit8 v2, v2, 0xc

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x4

    add-int/2addr p2, v2

    invoke-virtual {p1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->getAllTags()[Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    :goto_11
    if-ge v2, v3, :cond_27

    aget-object v0, v1, v2

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getDataSize()I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_24

    invoke-virtual {v0, p2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->setOffset(I)V

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getDataSize()I

    move-result v4

    add-int/2addr p2, v4

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_27
    return p2
.end method


# virtual methods
.method protected addTag(Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    .registers 4

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getIfd()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->addTag(Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;I)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    move-result-object v1

    return-object v1

    :cond_c
    return-object v1
.end method

.method protected addTag(Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;I)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    .registers 5

    const/4 v1, 0x0

    if-eqz p1, :cond_12

    invoke-static {p2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0, p2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getMpIfdData(I)Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->setTag(Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    move-result-object v0

    return-object v0

    :cond_12
    return-object v1
.end method

.method public calculateAllIfdOffsets()I
    .registers 5

    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getIndexIfdData()Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->getTagCount()I

    move-result v3

    if-lez v3, :cond_10

    invoke-direct {p0, v1, v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->calculateOffsetOfIfd(Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;I)I

    move-result v2

    :cond_10
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getAttribIfdData()Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->getTagCount()I

    move-result v3

    if-lez v3, :cond_21

    invoke-virtual {v1, v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->setOffsetToNextIfd(I)V

    invoke-direct {p0, v0, v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->calculateOffsetOfIfd(Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;I)I

    move-result v2

    :cond_21
    return v2
.end method

.method public calculateImageSize()I
    .registers 3

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->calculateAllIfdOffsets()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->mJpegData:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 12

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-ne p0, p1, :cond_6

    return v8

    :cond_6
    if-nez p1, :cond_9

    return v7

    :cond_9
    instance-of v5, p1, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    if-eqz v5, :cond_3e

    move-object v2, p1

    check-cast v2, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    iget-object v5, v2, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->mByteOrder:Ljava/nio/ByteOrder;

    iget-object v6, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->mByteOrder:Ljava/nio/ByteOrder;

    if-eq v5, v6, :cond_17

    return v7

    :cond_17
    invoke-virtual {v2, v8}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getMpIfdData(I)Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    move-result-object v3

    invoke-virtual {p0, v8}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getMpIfdData(I)Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    move-result-object v4

    if-eq v3, v4, :cond_29

    if-eqz v3, :cond_29

    invoke-virtual {v3, v4}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    :cond_29
    invoke-virtual {v2, v9}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getMpIfdData(I)Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    move-result-object v0

    invoke-virtual {p0, v9}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getMpIfdData(I)Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    move-result-object v1

    if-eq v0, v1, :cond_3b

    if-eqz v0, :cond_3b

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    :cond_3b
    return v8

    :cond_3c
    return v7

    :cond_3d
    return v7

    :cond_3e
    return v7
.end method

.method protected getAttribIfdData()Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->mMpAttribIfdData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    return-object v0
.end method

.method protected getByteOrder()Ljava/nio/ByteOrder;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->mByteOrder:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method protected getIndexIfdData()Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->mMpIndexIfdData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    return-object v0
.end method

.method protected getJpegData()[B
    .registers 2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->mJpegData:[B

    return-object v0
.end method

.method protected getMpIfdData(I)Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->mMpIndexIfdData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->mMpAttribIfdData:Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    goto :goto_5
.end method

.method protected getTag(SI)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    .registers 5

    invoke-virtual {p0, p2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getMpIfdData(I)Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->getTag(S)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    move-result-object v1

    return-object v1
.end method
