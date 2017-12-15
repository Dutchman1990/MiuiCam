.class public Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;
.super Ljava/lang/Object;
.source "MpoData.java"


# instance fields
.field private mAuxiliaryImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mAuxiliaryImages:Ljava/util/ArrayList;

    return-void
.end method

.method private updateAttribIfdTags()V
    .registers 13

    const/4 v2, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    if-nez v1, :cond_11

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Primary Mpo Image has not been set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v1

    if-nez v1, :cond_20

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "No auxiliary images have been added"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    const/4 v8, 0x1

    const/4 v0, 0x0

    new-instance v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    sget v1, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_IMAGE_NUMBER:I

    int-to-short v1, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;-><init>(SSIIZ)V

    const-wide v10, 0xffffffffL

    invoke-virtual {v0, v10, v11}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->setValue(J)Z

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    invoke-virtual {v1, v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->addTag(Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->getAuxiliaryMpoImages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    new-instance v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    sget v1, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_IMAGE_NUMBER:I

    int-to-short v1, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;-><init>(SSIIZ)V

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v0, v8}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->setValue(I)Z

    invoke-virtual {v6, v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->addTag(Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    move v8, v9

    goto :goto_3f

    :cond_5d
    return-void
.end method

.method private updateIndexIfdTags()V
    .registers 14

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    if-nez v2, :cond_d

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Primary Mpo Image has not been set"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v2

    if-nez v2, :cond_1c

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "No auxiliary images have been added"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1c
    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    sget v3, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_NUM_IMAGES:I

    int-to-short v3, v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getTag(SI)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    move-result-object v0

    if-nez v0, :cond_34

    new-instance v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    sget v2, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_NUM_IMAGES:I

    int-to-short v1, v2

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;-><init>(SSIIZ)V

    :cond_34
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->setValue(I)Z

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    invoke-virtual {v2, v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->addTag(Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    new-instance v1, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    sget v2, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_MP_ENTRY:I

    int-to-short v2, v2

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;-><init>(SSIIZ)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v11, 0x0

    new-instance v7, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->calculateImageSize()I

    move-result v2

    const/high16 v3, 0x20000000

    invoke-direct {v7, v3, v2, v11}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;-><init>(III)V

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->calculateImageSize()I

    move-result v2

    add-int/lit8 v11, v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->getAuxiliaryMpoImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_97

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    invoke-virtual {v8}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->calculateImageSize()I

    move-result v10

    new-instance v7, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;

    const v2, 0x20002

    invoke-direct {v7, v2, v10, v11}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;-><init>(III)V

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v11, v10

    goto :goto_7a

    :cond_97
    invoke-virtual {v1, v12}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->setValue(Ljava/util/List;)Z

    iget-object v2, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    invoke-virtual {v2, v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->addTag(Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    return-void
.end method


# virtual methods
.method public addAuxiliaryMpoImage(Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;)V
    .registers 5

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mAuxiliaryImages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v2

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    if-nez v1, :cond_14

    const/4 v1, 0x0

    :goto_e
    add-int v0, v2, v1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->addDefaultAttribIfdTags(Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;I)V

    return-void

    :cond_14
    const/4 v1, 0x1

    goto :goto_e
.end method

.method public addDefaultAttribIfdTags(Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;I)V
    .registers 15

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    new-instance v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    sget v1, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_MP_FORMAT_VERSION:I

    int-to-short v1, v1

    const/4 v2, 0x7

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;-><init>(SSIIZ)V

    sget-object v1, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->MP_FORMAT_VER_VALUE:[B

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->setValue([B)Z

    invoke-virtual {p1, v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->addTag(Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    new-instance v6, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    sget v1, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_IMAGE_NUMBER:I

    int-to-short v7, v1

    const/4 v11, 0x0

    move v8, v3

    move v9, v5

    move v10, v4

    invoke-direct/range {v6 .. v11}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;-><init>(SSIIZ)V

    invoke-virtual {v6, p2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->setValue(I)Z

    invoke-virtual {p1, v6}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->addTag(Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    return-void
.end method

.method public addDefaultIndexIfdTags()V
    .registers 16

    const/4 v2, 0x7

    const/4 v3, 0x4

    const/4 v10, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    if-nez v1, :cond_11

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Primary Mpo Image has not been set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v1

    if-nez v1, :cond_20

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "No auxiliary images have been added"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    sget v6, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_MP_FORMAT_VERSION:I

    int-to-short v6, v6

    invoke-virtual {v1, v6, v4}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getTag(SI)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    move-result-object v0

    if-nez v0, :cond_3e

    new-instance v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    sget v1, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_MP_FORMAT_VERSION:I

    int-to-short v1, v1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;-><init>(SSIIZ)V

    sget-object v1, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->MP_FORMAT_VER_VALUE:[B

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->setValue([B)Z

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    invoke-virtual {v1, v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->addTag(Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    :cond_3e
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    sget v6, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_NUM_IMAGES:I

    int-to-short v6, v6

    invoke-virtual {v1, v6, v4}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->getTag(SI)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    move-result-object v5

    if-nez v5, :cond_54

    new-instance v5, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    sget v1, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_NUM_IMAGES:I

    int-to-short v6, v1

    move v7, v3

    move v8, v4

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;-><init>(SSIIZ)V

    :cond_54
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v5, v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->setValue(I)Z

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    invoke-virtual {v1, v5}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->addTag(Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    new-instance v7, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    sget v1, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_MP_ENTRY:I

    int-to-short v8, v1

    move v9, v2

    move v11, v4

    move v12, v10

    invoke-direct/range {v7 .. v12}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;-><init>(SSIIZ)V

    new-instance v14, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;

    invoke-direct {v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;-><init>()V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    :goto_81
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v1

    if-ge v13, v1, :cond_92

    new-instance v1, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;

    invoke-direct {v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;-><init>()V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_81

    :cond_92
    invoke-virtual {v7, v14}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->setValue(Ljava/util/List;)Z

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    invoke-virtual {v1, v7}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;->addTag(Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    return-void
.end method

.method public getAuxiliaryImageCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mAuxiliaryImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getAuxiliaryMpoImages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mAuxiliaryImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPrimaryMpoImage()Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    return-object v0
.end method

.method public setPrimaryMpoImage(Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;)V
    .registers 4

    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->mPrimaryMpoImage:Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->addDefaultAttribIfdTags(Lcom/android/camera/camera_adapter/camera2/mpo/MpoImageData;I)V

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->addDefaultIndexIfdTags()V

    return-void
.end method

.method public updateAllTags()V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->updateAttribIfdTags()V

    invoke-direct {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;->updateIndexIfdTags()V

    return-void
.end method
