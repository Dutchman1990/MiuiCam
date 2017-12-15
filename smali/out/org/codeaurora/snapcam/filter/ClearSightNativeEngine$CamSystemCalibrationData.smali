.class public Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;
.super Ljava/lang/Object;
.source "ClearSightNativeEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CamSystemCalibrationData"
.end annotation


# static fields
.field private static final CALIB_FMT_STRINGS:[Ljava/lang/String;


# instance fields
.field aux_cam_specific_calibration:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

.field aux_sensor_mirror_and_flip_setting:S

.field calibration_format_version:I

.field main_cam_specific_calibration:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

.field main_sensor_mirror_and_flip_setting:S

.field module_orientation_during_calibration:S

.field relative_baseline_distance:F

.field relative_geometric_surface_parameters:[F

.field relative_position_flag:S

.field relative_principle_point_x_offset:F

.field relative_principle_point_y_offset:F

.field relative_rotation_matrix:[F

.field rotation_flag:S


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Calibration OTP format version = %x\n"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "Main Native Sensor Resolution width = %dpx\n"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "Main Native Sensor Resolution height = %dpx\n"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "Main Calibration Resolution width = %dpx\n"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "Main Calibration Resolution height = %dpx\n"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "Main Focal length ratio = %f\n"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "Aux Native Sensor Resolution width = %dpx\n"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "Aux Native Sensor Resolution height = %dpx\n"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "Aux Calibration Resolution width = %dpx\n"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "Aux Calibration Resolution height = %dpx\n"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "Aux Focal length ratio = %f\n"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "Relative Rotation matrix [0] through [8] = %s\n"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "Relative Geometric surface parameters [0] through [31] = %s\n"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "Relative Principal point X axis offset (ox) = %fpx\n"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "Relative Principal point Y axis offset (oy) = %fpx\n"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "Relative position flag = %d\n"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "Baseline distance = %fmm\n"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "Main sensor mirror and flip setting = %d\n"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "Aux sensor mirror and flip setting = %d\n"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "Module orientation during calibration = %d\n"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "Rotation flag = %d\n"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "Main Normalized Focal length = %fpx\n"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "Aux Normalized Focal length = %fpx"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sput-object v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->relative_rotation_matrix:[F

    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->relative_geometric_surface_parameters:[F

    return-void
.end method

.method private buildCommaSeparatedString([F)Ljava/lang/String;
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "%f"

    new-array v3, v6, [Ljava/lang/Object;

    aget v4, p1, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_1c
    array-length v2, p1

    if-ge v0, v2, :cond_36

    const-string/jumbo v2, ",%f"

    new-array v3, v6, [Ljava/lang/Object;

    aget v4, p1, v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static createFromByteBuff(Ljava/nio/ByteBuffer;)Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;
    .registers 5

    new-instance v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;

    invoke-direct {v0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;-><init>()V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->calibration_format_version:I

    invoke-static {p0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;->createFromByteBuff(Ljava/nio/ByteBuffer;)Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

    move-result-object v2

    iput-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->main_cam_specific_calibration:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

    invoke-static {p0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;->createFromByteBuff(Ljava/nio/ByteBuffer;)Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

    move-result-object v2

    iput-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->aux_cam_specific_calibration:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

    const/4 v1, 0x0

    :goto_18
    const/16 v2, 0x9

    if-ge v1, v2, :cond_27

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->relative_rotation_matrix:[F

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_27
    const/4 v1, 0x0

    :goto_28
    const/16 v2, 0x20

    if-ge v1, v2, :cond_37

    iget-object v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->relative_geometric_surface_parameters:[F

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_37
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    iput v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->relative_principle_point_x_offset:F

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    iput v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->relative_principle_point_y_offset:F

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    iput-short v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->relative_position_flag:S

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    iput v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->relative_baseline_distance:F

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    iput-short v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->main_sensor_mirror_and_flip_setting:S

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    iput-short v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->aux_sensor_mirror_and_flip_setting:S

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    iput-short v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->module_orientation_during_calibration:S

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    iput-short v2, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->rotation_flag:S

    return-object v0
.end method

.method public static createFromBytes([B)Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;
    .registers 9

    const/4 v4, 0x0

    const/4 v7, 0x0

    if-nez p0, :cond_5

    return-object v4

    :cond_5
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->createFromByteBuff(Ljava/nio/ByteBuffer;)Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;

    move-result-object v1

    sget-boolean v4, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v4, :cond_6f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OTP Calib Data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_22
    array-length v4, p0

    if-ge v2, v4, :cond_47

    rem-int/lit8 v4, v2, 0x10

    if-nez v4, :cond_2f

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2f
    const-string/jumbo v4, "%02X "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aget-byte v6, p0, v2

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_47
    const-string/jumbo v4, "ClearSightNativeEngine"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "ClearSightNativeEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Parsed OTP DATA:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6f
    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    aget-object v1, v1, v4

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->calibration_format_version:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    aget-object v1, v1, v5

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->main_cam_specific_calibration:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

    iget-short v3, v3, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;->native_sensor_resolution_width:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->main_cam_specific_calibration:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

    iget-short v3, v3, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;->native_sensor_resolution_height:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->main_cam_specific_calibration:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

    iget-short v3, v3, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;->calibration_sensor_resolution_width:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->main_cam_specific_calibration:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

    iget-short v3, v3, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;->calibration_sensor_resolution_height:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->main_cam_specific_calibration:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

    iget v3, v3, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;->focal_length_ratio:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->aux_cam_specific_calibration:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

    iget-short v3, v3, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;->native_sensor_resolution_width:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->aux_cam_specific_calibration:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

    iget-short v3, v3, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;->native_sensor_resolution_height:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->aux_cam_specific_calibration:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

    iget-short v3, v3, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;->calibration_sensor_resolution_width:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->aux_cam_specific_calibration:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

    iget-short v3, v3, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;->calibration_sensor_resolution_height:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->aux_cam_specific_calibration:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

    iget v3, v3, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;->focal_length_ratio:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->relative_rotation_matrix:[F

    invoke-direct {p0, v3}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->buildCommaSeparatedString([F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->relative_geometric_surface_parameters:[F

    invoke-direct {p0, v3}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->buildCommaSeparatedString([F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->relative_principle_point_x_offset:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->relative_principle_point_y_offset:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-short v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->relative_position_flag:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->relative_baseline_distance:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-short v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->main_sensor_mirror_and_flip_setting:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-short v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->aux_sensor_mirror_and_flip_setting:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-short v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->module_orientation_during_calibration:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-short v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->rotation_flag:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->main_cam_specific_calibration:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

    iget v3, v3, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;->normalized_focal_length:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->CALIB_FMT_STRINGS:[Ljava/lang/String;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSystemCalibrationData;->aux_cam_specific_calibration:Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

    iget v3, v3, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;->normalized_focal_length:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
