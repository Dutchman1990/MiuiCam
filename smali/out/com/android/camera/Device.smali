.class public Lcom/android/camera/Device;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field public static final IS_A1:Z

.field public static final IS_A10:Z

.field public static final IS_A12:Z

.field public static final IS_A1Pro:Z

.field public static final IS_A4:Z

.field public static final IS_A7:Z

.field public static final IS_A8:Z

.field public static final IS_A9:Z

.field public static final IS_B3:Z

.field public static final IS_B3_PRO:Z

.field public static final IS_B5:Z

.field public static final IS_B6:Z

.field public static final IS_B7:Z

.field public static final IS_C3A:Z

.field public static final IS_C5:Z

.field public static final IS_C6:Z

.field public static final IS_CM:Z

.field public static final IS_CM_TEST:Z

.field public static final IS_H2XLTE:Z

.field public static final IS_H2X_LC:Z

.field public static final IS_H3C:Z

.field public static final IS_HM:Z

.field public static final IS_HM2:Z

.field public static final IS_HM2A:Z

.field public static final IS_HM2S:Z

.field public static final IS_HM2S_LTE:Z

.field public static final IS_HM3:Z

.field public static final IS_HM3A:Z

.field public static final IS_HM3B:Z

.field public static final IS_HM3LTE:Z

.field public static final IS_HM3X:Z

.field public static final IS_HM3Y:Z

.field public static final IS_HM3Z:Z

.field public static final IS_HONGMI:Z

.field public static final IS_MI11:Z

.field public static final IS_MI2:Z

.field public static final IS_MI2A:Z

.field public static final IS_MI3:Z

.field public static final IS_MI3TD:Z

.field public static final IS_MI3W:Z

.field public static final IS_MI4:Z

.field public static final IS_MI5:Z

.field public static final IS_MI7:Z

.field public static final IS_MI9:Z

.field public static final IS_NEXUS5:Z

.field public static final IS_PAD1:Z

.field public static final IS_STABLE:Z

.field public static final IS_XIAOMI:Z

.field public static final MODULE:Ljava/lang/String;

.field private static sFpNavEventNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/android/camera/Device;->MODULE:Ljava/lang/String;

    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    sput-boolean v0, Lcom/android/camera/Device;->IS_MI2:Z

    sget-boolean v0, Lmiui/os/Build;->IS_MI2A:Z

    sput-boolean v0, Lcom/android/camera/Device;->IS_MI2A:Z

    const-string/jumbo v0, "pisces"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_MI3TD:Z

    const-string/jumbo v0, "cancro"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca

    sget-object v0, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v3, "MI 3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_2d
    sput-boolean v0, Lcom/android/camera/Device;->IS_MI3W:Z

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI3W:Z

    if-nez v0, :cond_1cd

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI3TD:Z

    :goto_35
    sput-boolean v0, Lcom/android/camera/Device;->IS_MI3:Z

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO:Z

    if-eqz v0, :cond_3f

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO_A:Z

    if-eqz v0, :cond_1d0

    :cond_3f
    move v0, v1

    :goto_40
    sput-boolean v0, Lcom/android/camera/Device;->IS_HM:Z

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO_S:Z

    sput-boolean v0, Lcom/android/camera/Device;->IS_HM2S:Z

    sget-boolean v0, Lcom/android/camera/Device;->IS_HM:Z

    if-nez v0, :cond_1d7

    sget-boolean v0, Lcom/android/camera/Device;->IS_HM2S:Z

    :goto_4c
    sput-boolean v0, Lcom/android/camera/Device;->IS_HM2:Z

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOS_LTE_MTK:Z

    sput-boolean v0, Lcom/android/camera/Device;->IS_HM2S_LTE:Z

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO_A:Z

    sput-boolean v0, Lcom/android/camera/Device;->IS_HM2A:Z

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREE:Z

    sput-boolean v0, Lcom/android/camera/Device;->IS_HM3:Z

    const-string/jumbo v0, "gucci"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_HM3X:Z

    const-string/jumbo v0, "hermes"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_HM3Y:Z

    const-string/jumbo v0, "hennessy"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_HM3Z:Z

    const-string/jumbo v0, "dior"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_HM3LTE:Z

    const-string/jumbo v0, "kenzo"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_HM3A:Z

    const-string/jumbo v0, "kate"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_HM3B:Z

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX:Z

    if-nez v0, :cond_a9

    const-string/jumbo v0, "HM2014816"

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_a9
    sput-boolean v2, Lcom/android/camera/Device;->IS_H2XLTE:Z

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_LC:Z

    sput-boolean v0, Lcom/android/camera/Device;->IS_H2X_LC:Z

    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR:Z

    sput-boolean v0, Lcom/android/camera/Device;->IS_MI4:Z

    sget-boolean v0, Lmiui/os/Build;->IS_MIPAD:Z

    sput-boolean v0, Lcom/android/camera/Device;->IS_PAD1:Z

    sget-boolean v0, Lmiui/os/Build;->IS_MIFIVE:Z

    sput-boolean v0, Lcom/android/camera/Device;->IS_MI5:Z

    const-string/jumbo v0, "leo"

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_MI7:Z

    const-string/jumbo v0, "ferrari"

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_MI9:Z

    const-string/jumbo v0, "ido"

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_A9:Z

    const-string/jumbo v0, "aqua"

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_A10:Z

    const-string/jumbo v0, "gemini"

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_A1:Z

    const-string/jumbo v0, "gold"

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_A1Pro:Z

    const-string/jumbo v0, "capricorn"

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_A7:Z

    const-string/jumbo v0, "natrium"

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_B7:Z

    const-string/jumbo v0, "lithium"

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_A8:Z

    const-string/jumbo v0, "scorpio"

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_A4:Z

    const-string/jumbo v0, "libra"

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_MI11:Z

    const-string/jumbo v0, "land"

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_A12:Z

    const-string/jumbo v0, "hydrogen"

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_B3:Z

    const-string/jumbo v0, "helium"

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_B3_PRO:Z

    const-string/jumbo v0, "omega"

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_H3C:Z

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v2, "nike"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_B6:Z

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v2, "mark"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_B5:Z

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v2, "prada"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_C5:Z

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v2, "mido"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_C6:Z

    const-string/jumbo v0, "rolex"

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_C3A:Z

    const-string/jumbo v0, "is_hongmi"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_HONGMI:Z

    const-string/jumbo v0, "is_xiaomi"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_XIAOMI:Z

    const-string/jumbo v0, "hammerhead"

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/Device;->IS_NEXUS5:Z

    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v0, :cond_1bf

    const-string/jumbo v0, "cmcc_strategic_phone"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_1bf
    sput-boolean v1, Lcom/android/camera/Device;->IS_CM:Z

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    sput-boolean v0, Lcom/android/camera/Device;->IS_STABLE:Z

    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    sput-boolean v0, Lcom/android/camera/Device;->IS_CM_TEST:Z

    return-void

    :cond_1ca
    move v0, v1

    goto/16 :goto_2d

    :cond_1cd
    move v0, v2

    goto/16 :goto_35

    :cond_1d0
    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO_S:Z

    if-nez v0, :cond_3f

    move v0, v2

    goto/16 :goto_40

    :cond_1d7
    move v0, v2

    goto/16 :goto_4c
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustScreenLight()Z
    .registers 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/camera/Device;->IS_CM_TEST:Z

    if-nez v1, :cond_c

    const-string/jumbo v1, "support_camera_boost_brightness"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_c
    return v0
.end method

.method public static getBurstShootCount()I
    .registers 2

    const-string/jumbo v0, "burst_shoot_count"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getContinuousShotCallbackClass()Ljava/lang/String;
    .registers 1

    const-string/jumbo v0, "camera_continuous_shot_callback_class"

    invoke-static {v0}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContinuousShotCallbackSetter()Ljava/lang/String;
    .registers 1

    const-string/jumbo v0, "camera_continuous_shot_callback_setter"

    invoke-static {v0}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFpNavEventNameList()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v2, Lcom/android/camera/Device;->sFpNavEventNameList:Ljava/util/ArrayList;

    if-nez v2, :cond_22

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/camera/Device;->sFpNavEventNameList:Ljava/util/ArrayList;

    const-string/jumbo v2, "fp_nav_event_name_list"

    invoke-static {v2}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_22

    const/4 v2, 0x0

    array-length v3, v1

    :goto_16
    if-ge v2, v3, :cond_22

    aget-object v0, v1, v2

    sget-object v4, Lcom/android/camera/Device;->sFpNavEventNameList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_22
    sget-object v2, Lcom/android/camera/Device;->sFpNavEventNameList:Ljava/util/ArrayList;

    return-object v2
.end method

.method public static isCaptureStopFaceDetection()Z
    .registers 2

    const-string/jumbo v0, "is_capture_stop_face_detection"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isEffectWatermarkFilted()Z
    .registers 2

    const-string/jumbo v0, "is_camera_app_water_mark"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFaceDetectNeedRotation()Z
    .registers 2

    const-string/jumbo v0, "is_camera_face_detection_need_orientation"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFloatExposureTime()Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v1

    if-eqz v1, :cond_e

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-gt v2, v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public static isFrontVideoQualityShouldBe1080P()Z
    .registers 2

    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/camera/Device;->IS_HM2A:Z

    if-nez v1, :cond_37

    sget-boolean v1, Lcom/android/camera/Device;->IS_H2X_LC:Z

    if-nez v1, :cond_37

    sget-boolean v1, Lmiui/os/Build;->IS_HONGMI_TWOX:Z

    if-nez v1, :cond_37

    sget-boolean v1, Lcom/android/camera/Device;->IS_MI3W:Z

    if-nez v1, :cond_37

    sget-boolean v1, Lcom/android/camera/Device;->IS_HM3:Z

    if-nez v1, :cond_37

    sget-boolean v1, Lcom/android/camera/Device;->IS_HM:Z

    if-nez v1, :cond_37

    sget-boolean v1, Lcom/android/camera/Device;->IS_HM2S:Z

    if-nez v1, :cond_37

    sget-boolean v1, Lcom/android/camera/Device;->IS_HM2S_LTE:Z

    if-nez v1, :cond_37

    sget-boolean v1, Lcom/android/camera/Device;->IS_MI2:Z

    if-nez v1, :cond_37

    sget-boolean v1, Lcom/android/camera/Device;->IS_MI2A:Z

    if-nez v1, :cond_37

    sget-boolean v1, Lcom/android/camera/Device;->IS_MI3:Z

    if-nez v1, :cond_37

    const-string/jumbo v1, "is_front_video_quality_1080p"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_37

    :goto_36
    return v0

    :cond_37
    const/4 v0, 0x0

    goto :goto_36
.end method

.method public static isHDRFreeze()Z
    .registers 2

    const-string/jumbo v0, "is_camera_freeze_after_hdr_capture"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isHFRVideoCaptureSupported()Z
    .registers 2

    const/4 v0, 0x0

    const-string/jumbo v1, "is_hrf_video_capture_support"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public static isHFRVideoPauseSupported()Z
    .registers 2

    const-string/jumbo v0, "support_hfr_video_pause"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isHalDoesCafWhenFlashOn()Z
    .registers 2

    const-string/jumbo v0, "is_hal_does_caf_when_flash_on"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isHoldBlurBackground()Z
    .registers 2

    const-string/jumbo v0, "is_camera_hold_blur_background"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isLCPlatform()Z
    .registers 2

    const-string/jumbo v0, "leadcore"

    const-string/jumbo v1, "vendor"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLowPowerQRScan()Z
    .registers 2

    const-string/jumbo v0, "is_camera_lower_qrscan_frequency"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isLowerEffectSize()Z
    .registers 2

    const-string/jumbo v0, "is_lower_size_effect"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isMDPRender()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isMTKPlatform()Z
    .registers 2

    const-string/jumbo v0, "mediatek"

    const-string/jumbo v1, "vendor"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMonoSupported()Z
    .registers 1

    sget-boolean v0, Lcom/android/camera/Device;->IS_B7:Z

    return v0
.end method

.method public static isNeedCropInMovieSolid()Z
    .registers 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v1

    if-nez v1, :cond_b

    sget-boolean v1, Lcom/android/camera/Device;->IS_A7:Z

    if-eqz v1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static isNeedForceRecycleEffectPopup()Z
    .registers 2

    sget-boolean v0, Lcom/android/camera/Device;->IS_H2X_LC:Z

    if-nez v0, :cond_d

    const-string/jumbo v0, "is_need_force_recycle_effect"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public static isNewHdrParamKeyUsed()Z
    .registers 2

    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/camera/Device;->IS_MI3W:Z

    if-nez v1, :cond_1b

    sget-boolean v1, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v1, :cond_1b

    sget-boolean v1, Lmiui/os/Build;->IS_HONGMI_TWOX:Z

    if-nez v1, :cond_1b

    sget-boolean v1, Lcom/android/camera/Device;->IS_HM2A:Z

    if-nez v1, :cond_1b

    const-string/jumbo v1, "is_new_hdr_param_key_used"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1b

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public static isNvPlatform()Z
    .registers 2

    const-string/jumbo v0, "nvidia"

    const-string/jumbo v1, "vendor"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isOrientationIndicatorEnabled()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isPad()Z
    .registers 2

    const-string/jumbo v0, "is_pad"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPanoUsePreviewFrame()Z
    .registers 1

    sget-boolean v0, Lcom/android/camera/Device;->IS_A7:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static isQcomPlatform()Z
    .registers 2

    const-string/jumbo v0, "qcom"

    const-string/jumbo v1, "vendor"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isRAWSupported()Z
    .registers 1

    sget-boolean v0, Lcom/android/camera/Device;->IS_A7:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/camera/Device;->IS_B7:Z

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public static isReleaseLaterForGallery()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isResetToCCAFAfterCapture()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isSubthreadFrameListerner()Z
    .registers 2

    const-string/jumbo v0, "is_camera_preview_with_subthread_looper"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportFHDHFR()Z
    .registers 2

    const-string/jumbo v0, "is_support_fhd_fhr"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportFrontFocus()Z
    .registers 1

    sget-boolean v0, Lcom/android/camera/Device;->IS_A4:Z

    return v0
.end method

.method public static isSupportFullSizeEffect()Z
    .registers 1

    sget-boolean v0, Lcom/android/camera/Device;->IS_A7:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/android/camera/Device;->IS_B7:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/android/camera/Device;->IS_A4:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/android/camera/Device;->IS_A8:Z

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public static isSupportGradienter()Z
    .registers 2

    const-string/jumbo v0, "support_camera_gradienter"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportGroupShot()Z
    .registers 1

    sget-boolean v0, Lcom/android/camera/Device;->IS_A7:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/android/camera/Device;->IS_B7:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/android/camera/Device;->IS_A4:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/android/camera/Device;->IS_A8:Z

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public static isSupportSquare()Z
    .registers 1

    sget-boolean v0, Lcom/android/camera/Device;->IS_A1:Z

    if-nez v0, :cond_17

    sget-boolean v0, Lcom/android/camera/Device;->IS_A1Pro:Z

    if-nez v0, :cond_17

    sget-boolean v0, Lcom/android/camera/Device;->IS_A4:Z

    if-nez v0, :cond_17

    sget-boolean v0, Lcom/android/camera/Device;->IS_A7:Z

    if-nez v0, :cond_17

    sget-boolean v0, Lcom/android/camera/Device;->IS_A8:Z

    if-nez v0, :cond_17

    sget-boolean v0, Lcom/android/camera/Device;->IS_B7:Z

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x1

    goto :goto_16
.end method

.method public static isSupportStillMore()Z
    .registers 2

    sget-boolean v0, Lcom/android/camera/Device;->IS_A1:Z

    if-nez v0, :cond_18

    sget-boolean v0, Lcom/android/camera/Device;->IS_A1Pro:Z

    if-nez v0, :cond_18

    sget-boolean v0, Lcom/android/camera/Device;->IS_A4:Z

    if-nez v0, :cond_18

    sget-boolean v0, Lcom/android/camera/Device;->IS_A7:Z

    if-nez v0, :cond_18

    sget-boolean v0, Lcom/android/camera/Device;->IS_A8:Z

    if-nez v0, :cond_18

    sget-boolean v0, Lcom/android/camera/Device;->IS_B7:Z

    if-eqz v0, :cond_29

    :cond_18
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "blurbuster"

    invoke-static {v1}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public static isSupportedASD()Z
    .registers 3

    const/4 v1, 0x0

    const-string/jumbo v2, "camera_supported_asd"

    invoke-static {v2, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v2, v0, 0xf

    if-eqz v2, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1
.end method

.method public static isSupportedAoHDR()Z
    .registers 2

    const-string/jumbo v0, "support_camera_aohdr"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedAsdFlash()Z
    .registers 3

    const/4 v1, 0x0

    const-string/jumbo v2, "camera_supported_asd"

    invoke-static {v2, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1
.end method

.method public static isSupportedAsdHdr()Z
    .registers 3

    const/4 v1, 0x0

    const-string/jumbo v2, "camera_supported_asd"

    invoke-static {v2, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1
.end method

.method public static isSupportedAsdMotion()Z
    .registers 3

    const/4 v1, 0x0

    const-string/jumbo v2, "camera_supported_asd"

    invoke-static {v2, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1
.end method

.method public static isSupportedAsdNight()Z
    .registers 3

    const/4 v1, 0x0

    const-string/jumbo v2, "camera_supported_asd"

    invoke-static {v2, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1
.end method

.method public static isSupportedAudioFocus()Z
    .registers 2

    const-string/jumbo v0, "support_camera_audio_focus"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedChromaFlash()Z
    .registers 2

    const-string/jumbo v0, "support_chroma_flash"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedDynamicEffectPopup()Z
    .registers 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/camera/Device;->IS_MI7:Z

    if-nez v1, :cond_9

    sget-boolean v1, Lcom/android/camera/Device;->IS_MI9:Z

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    sget-boolean v1, Lcom/android/camera/Device;->IS_MI11:Z

    if-nez v1, :cond_9

    sget-boolean v1, Lcom/android/camera/Device;->IS_A10:Z

    if-nez v1, :cond_9

    sget-boolean v1, Lcom/android/camera/Device;->IS_HM2A:Z

    if-nez v1, :cond_9

    sget-boolean v1, Lcom/android/camera/Device;->IS_H2XLTE:Z

    if-nez v1, :cond_9

    sget-boolean v1, Lcom/android/camera/Device;->IS_HM3LTE:Z

    if-nez v1, :cond_9

    sget-boolean v1, Lcom/android/camera/Device;->IS_HM3X:Z

    if-nez v1, :cond_9

    sget-boolean v1, Lcom/android/camera/Device;->IS_MI2:Z

    if-nez v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static isSupportedEdgeTouch()Z
    .registers 2

    const-string/jumbo v0, "support_edge_handgrip"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedFaceInfoWaterMark()Z
    .registers 1

    sget-boolean v0, Lcom/android/camera/Device;->IS_A1:Z

    if-nez v0, :cond_1f

    sget-boolean v0, Lcom/android/camera/Device;->IS_A1Pro:Z

    if-nez v0, :cond_1f

    sget-boolean v0, Lcom/android/camera/Device;->IS_A4:Z

    if-nez v0, :cond_1f

    sget-boolean v0, Lcom/android/camera/Device;->IS_A7:Z

    if-nez v0, :cond_1f

    sget-boolean v0, Lcom/android/camera/Device;->IS_A8:Z

    if-nez v0, :cond_1f

    sget-boolean v0, Lcom/android/camera/Device;->IS_B7:Z

    if-nez v0, :cond_1f

    sget-boolean v0, Lcom/android/camera/Device;->IS_B3:Z

    if-nez v0, :cond_1f

    sget-boolean v0, Lcom/android/camera/Device;->IS_B3_PRO:Z

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x1

    goto :goto_1e
.end method

.method public static isSupportedFastCapture()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportedGPS()Z
    .registers 2

    const-string/jumbo v0, "support_camera_record_location"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedHFR()Z
    .registers 2

    const-string/jumbo v0, "support_camera_hfr"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedIntelligentBeautify()Z
    .registers 2

    const-string/jumbo v0, "support_camera_age_detection"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedLongPressBurst()Z
    .registers 2

    const-string/jumbo v0, "support_camera_burst_shoot"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedMagicMirror()Z
    .registers 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_2d

    sget-boolean v0, Lcom/android/camera/Device;->IS_B3:Z

    if-nez v0, :cond_2b

    sget-boolean v0, Lcom/android/camera/Device;->IS_B3_PRO:Z

    if-nez v0, :cond_2b

    sget-boolean v0, Lcom/android/camera/Device;->IS_A1:Z

    if-nez v0, :cond_2b

    sget-boolean v0, Lcom/android/camera/Device;->IS_A1Pro:Z

    if-nez v0, :cond_2b

    sget-boolean v0, Lcom/android/camera/Device;->IS_A4:Z

    if-nez v0, :cond_2b

    sget-boolean v0, Lcom/android/camera/Device;->IS_A7:Z

    if-nez v0, :cond_2b

    sget-boolean v0, Lcom/android/camera/Device;->IS_A8:Z

    if-nez v0, :cond_2b

    sget-boolean v0, Lcom/android/camera/Device;->IS_B7:Z

    if-nez v0, :cond_2b

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v0, :cond_2b

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI3W:Z

    :goto_2a
    return v0

    :cond_2b
    const/4 v0, 0x1

    goto :goto_2a

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public static isSupportedManualFunction()Z
    .registers 2

    const-string/jumbo v0, "support_camera_manual_function"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedMovieSolid()Z
    .registers 2

    const-string/jumbo v0, "support_camera_movie_solid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedMuteCameraSound()Z
    .registers 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/camera/Device;->IS_CM:Z

    if-nez v1, :cond_19

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_1a

    sget-object v1, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_19
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public static isSupportedNewStyleTimeWaterMark()Z
    .registers 2

    const-string/jumbo v0, "support_camera_new_style_time_water_mark"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedObjectTrack()Z
    .registers 2

    const-string/jumbo v0, "support_object_track"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedPeakingMF()Z
    .registers 2

    const-string/jumbo v0, "support_camera_peaking_mf"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedQuickSnap()Z
    .registers 2

    const-string/jumbo v0, "support_camera_quick_snap"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedSecondaryStorage()Z
    .registers 2

    const-string/jumbo v0, "support_dual_sd_card"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedShaderEffect()Z
    .registers 2

    const-string/jumbo v0, "support_camera_shader_effect"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedSkinBeautify()Z
    .registers 2

    const-string/jumbo v0, "support_camera_skin_beauty"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedStereo()Z
    .registers 2

    const-string/jumbo v0, "is_support_stereo"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedStereoAperture()Z
    .registers 1

    sget-boolean v0, Lcom/android/camera/Device;->IS_H3C:Z

    return v0
.end method

.method public static isSupportedStereoVideo()Z
    .registers 1

    sget-boolean v0, Lcom/android/camera/Device;->IS_H3C:Z

    return v0
.end method

.method public static isSupportedTiltShift()Z
    .registers 2

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI3W:Z

    if-nez v0, :cond_19

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v0, :cond_19

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI5:Z

    if-nez v0, :cond_19

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI7:Z

    if-nez v0, :cond_19

    const-string/jumbo v0, "support_camera_tilt_shift"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x1

    goto :goto_18
.end method

.method public static isSupportedTorchCapture()Z
    .registers 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/camera/Device;->IS_HM3A:Z

    if-nez v1, :cond_c

    const-string/jumbo v1, "support_camera_torch_capture"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_c
    return v0
.end method

.method public static isSupportedUbiFocus()Z
    .registers 2

    const-string/jumbo v0, "support_camera_ubifocus"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedVideoPause()Z
    .registers 2

    const-string/jumbo v0, "support_camera_video_pause"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedVideoQuality4kUHD()Z
    .registers 2

    const-string/jumbo v0, "support_camera_4k_quality"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedWaterMark()Z
    .registers 2

    const-string/jumbo v0, "support_camera_water_mark"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSurfaceSizeLimited()Z
    .registers 2

    const-string/jumbo v0, "is_surface_size_limit"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isThirdDevice()Z
    .registers 1

    sget-boolean v0, Lcom/android/camera/Device;->IS_XIAOMI:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/camera/Device;->IS_HONGMI:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static isUsedMorphoLib()Z
    .registers 2

    const-string/jumbo v0, "is_camera_use_morpho_lib"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isVideoSnapshotSizeLimited()Z
    .registers 2

    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/camera/Device;->IS_HM2A:Z

    if-nez v1, :cond_3b

    sget-boolean v1, Lcom/android/camera/Device;->IS_H2X_LC:Z

    if-nez v1, :cond_3b

    sget-boolean v1, Lmiui/os/Build;->IS_HONGMI_TWOX:Z

    if-nez v1, :cond_3b

    sget-boolean v1, Lcom/android/camera/Device;->IS_MI3W:Z

    if-nez v1, :cond_3b

    sget-boolean v1, Lcom/android/camera/Device;->IS_HM3:Z

    if-nez v1, :cond_3b

    sget-boolean v1, Lcom/android/camera/Device;->IS_HM:Z

    if-nez v1, :cond_3b

    sget-boolean v1, Lcom/android/camera/Device;->IS_HM2S:Z

    if-nez v1, :cond_3b

    sget-boolean v1, Lcom/android/camera/Device;->IS_HM2S_LTE:Z

    if-nez v1, :cond_3b

    sget-boolean v1, Lcom/android/camera/Device;->IS_MI2:Z

    if-nez v1, :cond_3b

    sget-boolean v1, Lcom/android/camera/Device;->IS_MI2A:Z

    if-nez v1, :cond_3b

    sget-boolean v1, Lcom/android/camera/Device;->IS_MI3:Z

    if-nez v1, :cond_3b

    sget-boolean v1, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v1, :cond_3b

    const-string/jumbo v1, "is_video_snapshot_size_limit"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3b

    :goto_3a
    return v0

    :cond_3b
    const/4 v0, 0x0

    goto :goto_3a
.end method

.method public static shouldRestartPreviewAfterZslSwitch()Z
    .registers 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/camera/Device;->IS_MI2:Z

    if-eqz v1, :cond_9

    sget-boolean v1, Lcom/android/camera/Device;->IS_MI2A:Z

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method
