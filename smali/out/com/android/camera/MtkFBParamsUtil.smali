.class public Lcom/android/camera/MtkFBParamsUtil;
.super Ljava/lang/Object;
.source "MtkFBParamsUtil.java"


# static fields
.field private static final ADJUSTMENTS:Ljava/lang/StringBuilder;

.field private static final BASE_VALUES:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/camera/MtkFBParamsUtil;->ADJUSTMENTS:Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/camera/MtkFBParamsUtil;->ADJUSTMENTS:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "1200,1200,1201,1201,1200,1210,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "2301,2411,2412,2412,2311,2421,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "3411,3522,3623,3623,3512,3622,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "1200,1211,1311,1311,1211,1311,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "2301,2512,2522,2522,2412,2522,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "3511,3723,3734,3734,3623,3733,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_3c

    sput-object v0, Lcom/android/camera/MtkFBParamsUtil;->BASE_VALUES:[I

    return-void

    :array_3c
    .array-data 4
        -0xa
        -0xb
        -0x7
        -0xc
        -0x8
        -0x8
        -0x2
        -0xc
        -0x4
        0x0
        0x0
        -0x9
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustValue(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V
    .registers 11

    const/4 v6, 0x0

    if-eqz p0, :cond_5

    if-nez p2, :cond_6

    :cond_5
    return-void

    :cond_6
    iget v7, p2, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->gender:F

    invoke-static {v7}, Lcom/android/camera/MtkFBParamsUtil;->getGenderIndex(F)I

    move-result v1

    const/4 v7, 0x2

    if-ne v1, v7, :cond_10

    return-void

    :cond_10
    if-nez v1, :cond_97

    iget v0, p2, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->ageMale:F

    :goto_14
    if-nez v1, :cond_9b

    :goto_16
    mul-int/lit8 v6, v6, 0x5

    mul-int/lit8 v6, v6, 0x6

    mul-int/lit8 v4, v6, 0x3

    invoke-virtual {p1}, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->ordinal()I

    move-result v6

    mul-int/lit8 v6, v6, 0x5

    mul-int/lit8 v6, v6, 0x6

    add-int/2addr v4, v6

    add-int/lit8 v2, v4, 0xa

    invoke-static {v0}, Lcom/android/camera/MtkFBParamsUtil;->getAgeIndex(F)I

    move-result v6

    mul-int/lit8 v6, v6, 0x5

    add-int/2addr v4, v6

    sget-object v6, Lcom/android/camera/MtkFBParamsUtil;->ADJUSTMENTS:Ljava/lang/StringBuilder;

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    sget-object v7, Lcom/android/camera/MtkFBParamsUtil;->ADJUSTMENTS:Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->skinColor:I

    add-int/2addr v6, v7

    invoke-static {v6}, Lcom/android/camera/MtkFBParamsUtil;->trimValue(I)I

    move-result v6

    iput v6, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->skinColor:I

    sget-object v6, Lcom/android/camera/MtkFBParamsUtil;->ADJUSTMENTS:Ljava/lang/StringBuilder;

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    sget-object v7, Lcom/android/camera/MtkFBParamsUtil;->ADJUSTMENTS:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->smoothLevel:I

    add-int/2addr v6, v7

    invoke-static {v6}, Lcom/android/camera/MtkFBParamsUtil;->trimValue(I)I

    move-result v6

    iput v6, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->smoothLevel:I

    sget-object v6, Lcom/android/camera/MtkFBParamsUtil;->ADJUSTMENTS:Ljava/lang/StringBuilder;

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    sget-object v7, Lcom/android/camera/MtkFBParamsUtil;->ADJUSTMENTS:Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->slimFace:I

    add-int/2addr v6, v7

    invoke-static {v6}, Lcom/android/camera/MtkFBParamsUtil;->trimValue(I)I

    move-result v6

    iput v6, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->slimFace:I

    sget-object v6, Lcom/android/camera/MtkFBParamsUtil;->ADJUSTMENTS:Ljava/lang/StringBuilder;

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    sget-object v7, Lcom/android/camera/MtkFBParamsUtil;->ADJUSTMENTS:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->enlargeEye:I

    add-int/2addr v6, v7

    invoke-static {v6}, Lcom/android/camera/MtkFBParamsUtil;->trimValue(I)I

    move-result v6

    iput v6, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->enlargeEye:I

    return-void

    :cond_97
    iget v0, p2, Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;->ageFemale:F

    goto/16 :goto_14

    :cond_9b
    const/4 v6, 0x1

    goto/16 :goto_16
.end method

.method private static getAgeIndex(F)I
    .registers 2

    const/high16 v0, 0x40e00000    # 7.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    const/high16 v0, 0x41880000    # 17.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/high16 v0, 0x41f00000    # 30.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_18

    const/4 v0, 0x2

    return v0

    :cond_18
    const/high16 v0, 0x42300000    # 44.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_20

    const/4 v0, 0x3

    return v0

    :cond_20
    const/high16 v0, 0x42700000    # 60.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_28

    const/4 v0, 0x4

    return v0

    :cond_28
    const/4 v0, 0x5

    return v0
.end method

.method private static getBaseValue(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;->ordinal()I

    move-result v1

    mul-int/lit8 v0, v1, 0x4

    sget-object v1, Lcom/android/camera/MtkFBParamsUtil;->BASE_VALUES:[I

    aget v1, v1, v0

    iput v1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->skinColor:I

    sget-object v1, Lcom/android/camera/MtkFBParamsUtil;->BASE_VALUES:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    iput v1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->smoothLevel:I

    sget-object v1, Lcom/android/camera/MtkFBParamsUtil;->BASE_VALUES:[I

    add-int/lit8 v2, v0, 0x2

    aget v1, v1, v2

    iput v1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->slimFace:I

    sget-object v1, Lcom/android/camera/MtkFBParamsUtil;->BASE_VALUES:[I

    add-int/lit8 v2, v0, 0x3

    aget v1, v1, v2

    iput v1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->enlargeEye:I

    return-void
.end method

.method private static getGenderIndex(F)I
    .registers 2

    const v0, 0x3ecccccd    # 0.4f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const v0, 0x3f19999a    # 0.6f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_12

    const/4 v0, 0x0

    return v0

    :cond_12
    const/4 v0, 0x2

    return v0
.end method

.method public static getIntelligentValue(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V
    .registers 3

    invoke-static {p0, p1}, Lcom/android/camera/MtkFBParamsUtil;->getBaseValue(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;)V

    invoke-static {p0, p1, p2}, Lcom/android/camera/MtkFBParamsUtil;->adjustValue(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;Lcom/android/camera/camera_adapter/CameraMTK$FBLevel;Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;)V

    return-void
.end method

.method private static trimValue(I)I
    .registers 3

    const/16 v1, 0xc

    const/16 v0, -0xc

    if-ge p0, v0, :cond_7

    return v0

    :cond_7
    if-le p0, v1, :cond_a

    return v1

    :cond_a
    return p0
.end method
