.class public Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;
.super Ljava/lang/Object;
.source "MpoInterface.java"


# static fields
.field public static final TAG_AXIS_DISTANCE_X:I

.field public static final TAG_AXIS_DISTANCE_Y:I

.field public static final TAG_AXIS_DISTANCE_Z:I

.field public static final TAG_BASELINE_LEN:I

.field public static final TAG_BASE_VIEWPOINT_NUM:I

.field public static final TAG_CONVERGE_ANGLE:I

.field public static final TAG_DIVERGE_ANGLE:I

.field public static final TAG_IMAGE_NUMBER:I

.field public static final TAG_IMAGE_UNIQUE_ID_LIST:I

.field public static final TAG_MP_ENTRY:I

.field public static final TAG_MP_FORMAT_VERSION:I

.field public static final TAG_NUM_CAPTURED_FRAMES:I

.field public static final TAG_NUM_IMAGES:I

.field public static final TAG_PAN_ORIENTATION:I

.field public static final TAG_PAN_OVERLAP_H:I

.field public static final TAG_PAN_OVERLAP_V:I

.field public static final TAG_PITCH_ANGLE:I

.field public static final TAG_ROLL_ANGLE:I

.field public static final TAG_YAW_ANGLE:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v0, 0x3

    const/16 v1, -0x5000

    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_MP_FORMAT_VERSION:I

    const/16 v0, -0x4fff

    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_NUM_IMAGES:I

    const/16 v0, -0x4ffe

    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_MP_ENTRY:I

    const/16 v0, -0x4ffd

    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_IMAGE_UNIQUE_ID_LIST:I

    const/16 v0, -0x4ffc

    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_NUM_CAPTURED_FRAMES:I

    const/16 v0, -0x4eff

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_IMAGE_NUMBER:I

    const/16 v0, -0x4dff

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_PAN_ORIENTATION:I

    const/16 v0, -0x4dfe

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_PAN_OVERLAP_H:I

    const/16 v0, -0x4dfd

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_PAN_OVERLAP_V:I

    const/16 v0, -0x4dfc

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_BASE_VIEWPOINT_NUM:I

    const/16 v0, -0x4dfb

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_CONVERGE_ANGLE:I

    const/16 v0, -0x4dfa

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_BASELINE_LEN:I

    const/16 v0, -0x4df9

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_DIVERGE_ANGLE:I

    const/16 v0, -0x4df8

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_AXIS_DISTANCE_X:I

    const/16 v0, -0x4df7

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_AXIS_DISTANCE_Y:I

    const/16 v0, -0x4df6

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_AXIS_DISTANCE_Z:I

    const/16 v0, -0x4df5

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_YAW_ANGLE:I

    const/16 v0, -0x4df4

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_PITCH_ANGLE:I

    const/16 v0, -0x4df3

    invoke-static {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->TAG_ROLL_ANGLE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFileWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 6

    if-nez p0, :cond_b

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Argument is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b
    const/4 v1, 0x0

    :try_start_c
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_11} :catch_13

    move-object v1, v2

    :goto_12
    return-object v1

    :catch_13
    move-exception v0

    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    const-string/jumbo v3, "MpoInterface"

    const-string/jumbo v4, "File not found"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method private static getMpoWriterStream(Ljava/io/OutputStream;)Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;
    .registers 4

    if-nez p0, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Argument is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    new-instance v0, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;

    invoke-direct {v0, p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static writeMpo(Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;Ljava/io/OutputStream;)I
    .registers 6

    if-eqz p0, :cond_4

    if-nez p1, :cond_d

    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Argument is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    invoke-static {p1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->getMpoWriterStream(Ljava/io/OutputStream;)Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->setMpoData(Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;)V

    :try_start_14
    invoke-virtual {v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->writeMpoFile()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_1f

    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {v1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoOutputStream;->size()I

    move-result v2

    return v2

    :catch_1f
    move-exception v0

    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    const-string/jumbo v2, "MpoInterface"

    const-string/jumbo v3, "IO Exception when writing mpo image"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    return v2
.end method

.method public static writeMpo(Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;Ljava/lang/String;)I
    .registers 4

    if-eqz p0, :cond_4

    if-nez p1, :cond_d

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-static {p1}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->getFileWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->writeMpo(Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;Ljava/io/OutputStream;)I

    move-result v0

    return v0
.end method

.method public static writeMpo(Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;)[B
    .registers 5

    const/4 v3, 0x0

    if-nez p0, :cond_c

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Argument is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/high16 v2, 0x100000

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {p0, v0}, Lcom/android/camera/camera_adapter/camera2/mpo/MpoInterface;->writeMpo(Lcom/android/camera/camera_adapter/camera2/mpo/MpoData;Ljava/io/OutputStream;)I

    move-result v1

    if-lez v1, :cond_1e

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    :cond_1e
    return-object v3
.end method
