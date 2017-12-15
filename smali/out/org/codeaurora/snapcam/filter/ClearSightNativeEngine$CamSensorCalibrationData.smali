.class public Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;
.super Ljava/lang/Object;
.source "ClearSightNativeEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CamSensorCalibrationData"
.end annotation


# instance fields
.field calibration_sensor_resolution_height:S

.field calibration_sensor_resolution_width:S

.field focal_length_ratio:F

.field native_sensor_resolution_height:S

.field native_sensor_resolution_width:S

.field normalized_focal_length:F


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromByteBuff(Ljava/nio/ByteBuffer;)Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;
    .registers 3

    new-instance v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;

    invoke-direct {v0}, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;-><init>()V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;->normalized_focal_length:F

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;->native_sensor_resolution_width:S

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;->native_sensor_resolution_height:S

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;->calibration_sensor_resolution_width:S

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;->calibration_sensor_resolution_height:S

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, v0, Lorg/codeaurora/snapcam/filter/ClearSightNativeEngine$CamSensorCalibrationData;->focal_length_ratio:F

    return-object v0
.end method
