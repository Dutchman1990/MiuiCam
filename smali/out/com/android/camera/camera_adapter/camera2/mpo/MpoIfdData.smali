.class public Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;
.super Ljava/lang/Object;
.source "MpoIfdData.java"


# static fields
.field public static final MP_FORMAT_VER_VALUE:[B


# instance fields
.field private final mIfdId:I

.field private mOffsetToNextIfd:I

.field private final mTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Short;",
            "Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->MP_FORMAT_VER_VALUE:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x30t
        0x31t
        0x30t
        0x30t
    .end array-data
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->mTags:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->mOffsetToNextIfd:I

    iput p1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->mIfdId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 12

    const/4 v9, 0x1

    const/4 v5, 0x0

    if-ne p0, p1, :cond_5

    return v9

    :cond_5
    if-nez p1, :cond_8

    return v5

    :cond_8
    instance-of v4, p1, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    if-eqz v4, :cond_3e

    move-object v0, p1

    check-cast v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->getTagCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->getTagCount()I

    move-result v6

    if-ne v4, v6, :cond_3e

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->getAllTags()[Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    move-result-object v3

    array-length v6, v3

    move v4, v5

    :goto_1f
    if-ge v4, v6, :cond_3d

    aget-object v1, v3, v4

    iget-object v7, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->mTags:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getTagId()S

    move-result v8

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    invoke-virtual {v1, v2}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3a

    return v5

    :cond_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_3d
    return v9

    :cond_3e
    return v5
.end method

.method protected getAllTags()[Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    .registers 3

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->mTags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->mTags:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    return-object v0
.end method

.method protected getOffsetToNextIfd()I
    .registers 2

    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->mOffsetToNextIfd:I

    return v0
.end method

.method protected getTag(S)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    .registers 4

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->mTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    return-object v0
.end method

.method protected getTagCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->mTags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method protected setOffsetToNextIfd(I)V
    .registers 2

    iput p1, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->mOffsetToNextIfd:I

    return-void
.end method

.method protected setTag(Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;)Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
    .registers 4

    iget v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->mIfdId:I

    invoke-virtual {p1, v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->setIfd(I)V

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoIfdData;->mTags:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getTagId()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;

    return-object v0
.end method
