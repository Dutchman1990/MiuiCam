.class public Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;
.super Lcom/android/gallery3d/exif/ExifTag;
.source "MpoTag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;
    }
.end annotation


# direct methods
.method constructor <init>(SSIIZ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/gallery3d/exif/ExifTag;-><init>(SSIIZ)V

    return-void
.end method


# virtual methods
.method public getMpEntryValue()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getTagId()S

    move-result v3

    sget v4, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_MP_ENTRY:I

    int-to-short v4, v4

    if-eq v3, v4, :cond_b

    const/4 v3, 0x0

    return-object v3

    :cond_b
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getValueAsBytes()[B

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v3, v0

    div-int/lit8 v3, v3, 0x10

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_18
    array-length v3, v0

    if-ge v2, v3, :cond_2c

    new-instance v3, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;

    const/16 v4, 0x10

    invoke-static {v0, v2, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x10

    goto :goto_18

    :cond_2c
    return-object v1
.end method

.method public setValue(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->getTagId()S

    move-result v3

    sget v4, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_MP_ENTRY:I

    int-to-short v4, v4

    if-eq v3, v4, :cond_b

    const/4 v3, 0x0

    return v3

    :cond_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    new-array v0, v3, [B

    const/4 v2, 0x0

    :goto_14
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2e

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;

    mul-int/lit8 v3, v2, 0x10

    const/16 v4, 0x10

    invoke-static {v0, v3, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag$MpEntry;->getBytes(Ljava/nio/ByteBuffer;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_2e
    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoTag;->setValue([B)Z

    move-result v3

    return v3
.end method
