.class Lcom/android/camera/SensorStateManager$3;
.super Ljava/lang/Object;
.source "SensorStateManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SensorStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private finalFilter:[F

.field private firstFilter:[F

.field final synthetic this$0:Lcom/android/camera/SensorStateManager;


# direct methods
.method constructor <init>(Lcom/android/camera/SensorStateManager;)V
    .registers 4

    const/4 v1, 0x3

    iput-object p1, p0, Lcom/android/camera/SensorStateManager$3;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/camera/SensorStateManager$3;->firstFilter:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/camera/SensorStateManager$3;->finalFilter:[F

    return-void
.end method

.method private clearFilter()V
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/camera/SensorStateManager$3;->firstFilter:[F

    array-length v1, v1

    if-ge v0, v1, :cond_12

    iget-object v1, p0, Lcom/android/camera/SensorStateManager$3;->firstFilter:[F

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/camera/SensorStateManager$3;->finalFilter:[F

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_12
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 6

    const-string/jumbo v0, "SensorStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAccuracyChanged accuracy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 16

    const v13, 0x3e99999a    # 0.3f

    const v12, 0x3e4ccccc    # 0.19999999f

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/camera/SensorStateManager$3;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v6}, Lcom/android/camera/SensorStateManager;->-get9(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object v6

    if-nez v6, :cond_12

    return-void

    :cond_12
    iget-object v6, p0, Lcom/android/camera/SensorStateManager$3;->firstFilter:[F

    iget-object v7, p0, Lcom/android/camera/SensorStateManager$3;->firstFilter:[F

    aget v7, v7, v9

    const v8, 0x3f4ccccd    # 0.8f

    mul-float/2addr v7, v8

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v8, v9

    mul-float/2addr v8, v12

    add-float/2addr v7, v8

    aput v7, v6, v9

    iget-object v6, p0, Lcom/android/camera/SensorStateManager$3;->firstFilter:[F

    iget-object v7, p0, Lcom/android/camera/SensorStateManager$3;->firstFilter:[F

    aget v7, v7, v10

    const v8, 0x3f4ccccd    # 0.8f

    mul-float/2addr v7, v8

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v8, v10

    mul-float/2addr v8, v12

    add-float/2addr v7, v8

    aput v7, v6, v10

    iget-object v6, p0, Lcom/android/camera/SensorStateManager$3;->firstFilter:[F

    iget-object v7, p0, Lcom/android/camera/SensorStateManager$3;->firstFilter:[F

    aget v7, v7, v11

    const v8, 0x3f4ccccd    # 0.8f

    mul-float/2addr v7, v8

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v8, v11

    mul-float/2addr v8, v12

    add-float/2addr v7, v8

    aput v7, v6, v11

    iget-object v6, p0, Lcom/android/camera/SensorStateManager$3;->finalFilter:[F

    iget-object v7, p0, Lcom/android/camera/SensorStateManager$3;->finalFilter:[F

    aget v7, v7, v9

    const v8, 0x3f333333    # 0.7f

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/android/camera/SensorStateManager$3;->firstFilter:[F

    aget v8, v8, v9

    mul-float/2addr v8, v13

    add-float/2addr v7, v8

    aput v7, v6, v9

    iget-object v6, p0, Lcom/android/camera/SensorStateManager$3;->finalFilter:[F

    iget-object v7, p0, Lcom/android/camera/SensorStateManager$3;->finalFilter:[F

    aget v7, v7, v10

    const v8, 0x3f333333    # 0.7f

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/android/camera/SensorStateManager$3;->firstFilter:[F

    aget v8, v8, v10

    mul-float/2addr v8, v13

    add-float/2addr v7, v8

    aput v7, v6, v10

    iget-object v6, p0, Lcom/android/camera/SensorStateManager$3;->finalFilter:[F

    iget-object v7, p0, Lcom/android/camera/SensorStateManager$3;->finalFilter:[F

    aget v7, v7, v11

    const v8, 0x3f333333    # 0.7f

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/android/camera/SensorStateManager$3;->firstFilter:[F

    aget v8, v8, v11

    mul-float/2addr v8, v13

    add-float/2addr v7, v8

    aput v7, v6, v11

    const-string/jumbo v6, "SensorStateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "finalFilter="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/SensorStateManager$3;->finalFilter:[F

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/SensorStateManager$3;->finalFilter:[F

    aget v8, v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/SensorStateManager$3;->finalFilter:[F

    aget v8, v8, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " event.values="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v8, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v5, -0x40800000    # -1.0f

    iget-object v6, p0, Lcom/android/camera/SensorStateManager$3;->finalFilter:[F

    aget v6, v6, v9

    neg-float v0, v6

    iget-object v6, p0, Lcom/android/camera/SensorStateManager$3;->finalFilter:[F

    aget v6, v6, v10

    neg-float v1, v6

    iget-object v6, p0, Lcom/android/camera/SensorStateManager$3;->finalFilter:[F

    aget v6, v6, v11

    neg-float v2, v6

    mul-float v6, v0, v0

    mul-float v7, v1, v1

    add-float v4, v6, v7

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v6, v4

    mul-float v7, v2, v2

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_11e

    neg-float v6, v1

    float-to-double v6, v6

    float-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v6, v6

    const v7, 0x42652ee1

    mul-float v3, v6, v7

    const/high16 v6, 0x42b40000    # 90.0f

    sub-float v5, v6, v3

    iget-object v6, p0, Lcom/android/camera/SensorStateManager$3;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v6, v5}, Lcom/android/camera/SensorStateManager;->-wrap0(Lcom/android/camera/SensorStateManager;F)F

    move-result v5

    :cond_11e
    iget-object v6, p0, Lcom/android/camera/SensorStateManager$3;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v6}, Lcom/android/camera/SensorStateManager;->-get8(Lcom/android/camera/SensorStateManager;)F

    move-result v6

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_187

    iget-object v6, p0, Lcom/android/camera/SensorStateManager$3;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v6}, Lcom/android/camera/SensorStateManager;->-get8(Lcom/android/camera/SensorStateManager;)F

    move-result v6

    sub-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x40400000    # 3.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_13c

    invoke-direct {p0}, Lcom/android/camera/SensorStateManager$3;->clearFilter()V

    :cond_13c
    iget-object v6, p0, Lcom/android/camera/SensorStateManager$3;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v6, v5}, Lcom/android/camera/SensorStateManager;->-set5(Lcom/android/camera/SensorStateManager;F)F

    const-string/jumbo v6, "SensorStateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SensorEventListenerImpl TYPE_ACCELEROMETER mOrientation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/SensorStateManager$3;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v8}, Lcom/android/camera/SensorStateManager;->-get8(Lcom/android/camera/SensorStateManager;)F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " mIsLying="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/SensorStateManager$3;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v8}, Lcom/android/camera/SensorStateManager;->-get7(Lcom/android/camera/SensorStateManager;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/camera/SensorStateManager$3;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v6}, Lcom/android/camera/SensorStateManager;->-get9(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/SensorStateManager$3;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v7}, Lcom/android/camera/SensorStateManager;->-get8(Lcom/android/camera/SensorStateManager;)F

    move-result v7

    iget-object v8, p0, Lcom/android/camera/SensorStateManager$3;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v8}, Lcom/android/camera/SensorStateManager;->-get7(Lcom/android/camera/SensorStateManager;)Z

    move-result v8

    invoke-interface {v6, v7, v8}, Lcom/android/camera/SensorStateManager$SensorStateListener;->onDeviceOrientationChanged(FZ)V

    :cond_187
    return-void
.end method
