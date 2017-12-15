.class public Lcom/android/camera/portability/Camera2Parameters;
.super Ljava/lang/Object;
.source "Camera2Parameters.java"

# interfaces
.implements Lcom/android/camera/portability/ICameraParameters;


# instance fields
.field private mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private mSupportedEffectModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedFocusModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedSceneModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedWhiteBalances:Ljava/util/ArrayList;
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
.method public constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/portability/Camera2Parameters;->mSupportedEffectModes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/portability/Camera2Parameters;->mSupportedFocusModes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/portability/Camera2Parameters;->mSupportedSceneModes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/portability/Camera2Parameters;->mSupportedWhiteBalances:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/camera/portability/Camera2Parameters;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {p0, p1}, Lcom/android/camera/portability/Camera2Parameters;->buildFocusModes(Landroid/hardware/camera2/CameraCharacteristics;)V

    invoke-direct {p0, p1}, Lcom/android/camera/portability/Camera2Parameters;->buildSceneModes(Landroid/hardware/camera2/CameraCharacteristics;)V

    invoke-direct {p0, p1}, Lcom/android/camera/portability/Camera2Parameters;->buildWhiteBalances(Landroid/hardware/camera2/CameraCharacteristics;)V

    return-void
.end method

.method private buildFocusModes(Landroid/hardware/camera2/CameraCharacteristics;)V
    .registers 8

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-eqz v2, :cond_1e

    const/4 v3, 0x0

    array-length v4, v2

    :goto_c
    if-ge v3, v4, :cond_1e

    aget v1, v2, v3

    invoke-static {v1}, Lcom/android/camera/portability/Camera2Parameters;->mapToCamera1FocusMode(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v5, p0, Lcom/android/camera/portability/Camera2Parameters;->mSupportedFocusModes:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1e
    return-void
.end method

.method private buildSceneModes(Landroid/hardware/camera2/CameraCharacteristics;)V
    .registers 8

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-eqz v2, :cond_1e

    const/4 v3, 0x0

    array-length v4, v2

    :goto_c
    if-ge v3, v4, :cond_1e

    aget v1, v2, v3

    invoke-static {v1}, Lcom/android/camera/portability/Camera2Parameters;->mapToCamera1SceneMode(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v5, p0, Lcom/android/camera/portability/Camera2Parameters;->mSupportedSceneModes:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1e
    return-void
.end method

.method private buildWhiteBalances(Landroid/hardware/camera2/CameraCharacteristics;)V
    .registers 8

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    if-eqz v1, :cond_1e

    const/4 v3, 0x0

    array-length v4, v1

    :goto_c
    if-ge v3, v4, :cond_1e

    aget v0, v1, v3

    invoke-static {v0}, Lcom/android/camera/portability/Camera2Parameters;->mapToCamera1WhiteBalance(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b

    iget-object v5, p0, Lcom/android/camera/portability/Camera2Parameters;->mSupportedWhiteBalances:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1e
    return-void
.end method

.method public static mapToCamera1FocusMode(I)Ljava/lang/String;
    .registers 4

    packed-switch p0, :pswitch_data_38

    const-string/jumbo v0, "Camera2Parameters"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to convert from API 2 focus mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :pswitch_1f
    const-string/jumbo v0, "auto"

    return-object v0

    :pswitch_23
    const-string/jumbo v0, "continuous-picture"

    return-object v0

    :pswitch_27
    const-string/jumbo v0, "continuous-video"

    return-object v0

    :pswitch_2b
    const-string/jumbo v0, "edof"

    return-object v0

    :pswitch_2f
    const-string/jumbo v0, "fixed"

    return-object v0

    :pswitch_33
    const-string/jumbo v0, "macro"

    return-object v0

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_1f
        :pswitch_33
        :pswitch_27
        :pswitch_23
        :pswitch_2b
    .end packed-switch
.end method

.method public static mapToCamera1SceneMode(I)Ljava/lang/String;
    .registers 4

    packed-switch p0, :pswitch_data_64

    :pswitch_3
    const-string/jumbo v0, "Camera2Parameters"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to convert from API 2 scene mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :pswitch_1f
    const-string/jumbo v0, "auto"

    return-object v0

    :pswitch_23
    const-string/jumbo v0, "action"

    return-object v0

    :pswitch_27
    const-string/jumbo v0, "barcode"

    return-object v0

    :pswitch_2b
    const-string/jumbo v0, "beach"

    return-object v0

    :pswitch_2f
    const-string/jumbo v0, "candlelight"

    return-object v0

    :pswitch_33
    const-string/jumbo v0, "fireworks"

    return-object v0

    :pswitch_37
    const-string/jumbo v0, "landscape"

    return-object v0

    :pswitch_3b
    const-string/jumbo v0, "night"

    return-object v0

    :pswitch_3f
    const-string/jumbo v0, "night-portrait"

    return-object v0

    :pswitch_43
    const-string/jumbo v0, "party"

    return-object v0

    :pswitch_47
    const-string/jumbo v0, "portrait"

    return-object v0

    :pswitch_4b
    const-string/jumbo v0, "snow"

    return-object v0

    :pswitch_4f
    const-string/jumbo v0, "sports"

    return-object v0

    :pswitch_53
    const-string/jumbo v0, "steadyphoto"

    return-object v0

    :pswitch_57
    const-string/jumbo v0, "sunset"

    return-object v0

    :pswitch_5b
    const-string/jumbo v0, "theatre"

    return-object v0

    :pswitch_5f
    const-string/jumbo v0, "hdr"

    return-object v0

    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_3
        :pswitch_23
        :pswitch_47
        :pswitch_37
        :pswitch_3b
        :pswitch_3f
        :pswitch_5b
        :pswitch_2b
        :pswitch_4b
        :pswitch_57
        :pswitch_53
        :pswitch_33
        :pswitch_4f
        :pswitch_43
        :pswitch_2f
        :pswitch_27
        :pswitch_3
        :pswitch_5f
    .end packed-switch
.end method

.method public static mapToCamera1WhiteBalance(I)Ljava/lang/String;
    .registers 4

    packed-switch p0, :pswitch_data_40

    const-string/jumbo v0, "Camera2Parameters"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to convert from API 2 white balance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :pswitch_1f
    const-string/jumbo v0, "auto"

    return-object v0

    :pswitch_23
    const-string/jumbo v0, "cloudy-daylight"

    return-object v0

    :pswitch_27
    const-string/jumbo v0, "daylight"

    return-object v0

    :pswitch_2b
    const-string/jumbo v0, "fluorescent"

    return-object v0

    :pswitch_2f
    const-string/jumbo v0, "incandescent"

    return-object v0

    :pswitch_33
    const-string/jumbo v0, "shade"

    return-object v0

    :pswitch_37
    const-string/jumbo v0, "twilight"

    return-object v0

    :pswitch_3b
    const-string/jumbo v0, "warm-fluorescent"

    return-object v0

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_2f
        :pswitch_2b
        :pswitch_3b
        :pswitch_27
        :pswitch_23
        :pswitch_37
        :pswitch_33
    .end packed-switch
.end method

.method public static mapToCamera2AntiBanding(Ljava/lang/String;)I
    .registers 5

    const/4 v3, 0x3

    if-eqz p0, :cond_2e

    const-string/jumbo v0, "off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    return v0

    :cond_e
    const-string/jumbo v0, "50hz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    return v0

    :cond_19
    const-string/jumbo v0, "60hz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x2

    return v0

    :cond_24
    const-string/jumbo v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    return v3

    :cond_2e
    const-string/jumbo v0, "Camera2Parameters"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to convert from API 1 anti banding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static mapToCamera2FlashMode(Ljava/lang/String;)I
    .registers 5

    const/4 v3, 0x1

    if-eqz p0, :cond_2e

    const-string/jumbo v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x2

    return v0

    :cond_e
    const-string/jumbo v0, "off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    return v3

    :cond_18
    const-string/jumbo v0, "on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x3

    return v0

    :cond_23
    const-string/jumbo v0, "red-eye"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x4

    return v0

    :cond_2e
    const-string/jumbo v0, "Camera2Parameters"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to convert from API 1 flash mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static mapToCamera2SceneMode(Ljava/lang/String;)I
    .registers 5

    const/4 v3, 0x0

    if-eqz p0, :cond_bc

    const-string/jumbo v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return v3

    :cond_d
    const-string/jumbo v0, "action"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    return v0

    :cond_18
    const-string/jumbo v0, "barcode"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/16 v0, 0x10

    return v0

    :cond_24
    const-string/jumbo v0, "beach"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/16 v0, 0x8

    return v0

    :cond_30
    const-string/jumbo v0, "candlelight"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v0, 0xf

    return v0

    :cond_3c
    const-string/jumbo v0, "fireworks"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const/16 v0, 0xc

    return v0

    :cond_48
    const-string/jumbo v0, "landscape"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    const/4 v0, 0x4

    return v0

    :cond_53
    const-string/jumbo v0, "night"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    const/4 v0, 0x5

    return v0

    :cond_5e
    const-string/jumbo v0, "party"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    const/16 v0, 0xe

    return v0

    :cond_6a
    const-string/jumbo v0, "portrait"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    const/4 v0, 0x3

    return v0

    :cond_75
    const-string/jumbo v0, "snow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    const/16 v0, 0x9

    return v0

    :cond_81
    const-string/jumbo v0, "sports"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    const/16 v0, 0xd

    return v0

    :cond_8d
    const-string/jumbo v0, "steadyphoto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    const/16 v0, 0xb

    return v0

    :cond_99
    const-string/jumbo v0, "sunset"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    const/16 v0, 0xa

    return v0

    :cond_a5
    const-string/jumbo v0, "theatre"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    const/4 v0, 0x7

    return v0

    :cond_b0
    const-string/jumbo v0, "hdr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const/16 v0, 0x12

    return v0

    :cond_bc
    const-string/jumbo v0, "Camera2Parameters"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to convert from API 1 scene mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static mapToCamera2WhiteBalance(Ljava/lang/String;)I
    .registers 5

    const/4 v3, 0x1

    if-eqz p0, :cond_5b

    const-string/jumbo v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return v3

    :cond_d
    const-string/jumbo v0, "cloudy-daylight"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x6

    return v0

    :cond_18
    const-string/jumbo v0, "daylight"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x5

    return v0

    :cond_23
    const-string/jumbo v0, "fluorescent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x3

    return v0

    :cond_2e
    const-string/jumbo v0, "incandescent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v0, 0x2

    return v0

    :cond_39
    const-string/jumbo v0, "shade"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    const/16 v0, 0x8

    return v0

    :cond_45
    const-string/jumbo v0, "twilight"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x7

    return v0

    :cond_50
    const-string/jumbo v0, "warm-fluorescent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    const/4 v0, 0x4

    return v0

    :cond_5b
    const-string/jumbo v0, "Camera2Parameters"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to convert from API 1 white balance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method


# virtual methods
.method public getSupportedColorEffects()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/portability/Camera2Parameters;->mSupportedEffectModes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedFocusModes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/portability/Camera2Parameters;->mSupportedFocusModes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedSceneModes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/portability/Camera2Parameters;->mSupportedSceneModes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedWhiteBalance()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/portability/Camera2Parameters;->mSupportedWhiteBalances:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
