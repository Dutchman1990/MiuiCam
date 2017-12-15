.class public Lcom/android/camera/portability/Camera1Parameters;
.super Ljava/lang/Object;
.source "Camera1Parameters.java"

# interfaces
.implements Lcom/android/camera/portability/ICameraParameters;


# instance fields
.field private mParameter:Landroid/hardware/Camera$Parameters;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera$Parameters;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/portability/Camera1Parameters;->mParameter:Landroid/hardware/Camera$Parameters;

    return-void
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

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/portability/Camera1Parameters;->mParameter:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/portability/Camera1Parameters;->mParameter:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_c
    return-object v1
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

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/portability/Camera1Parameters;->mParameter:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/portability/Camera1Parameters;->mParameter:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_c
    return-object v1
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

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/portability/Camera1Parameters;->mParameter:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/portability/Camera1Parameters;->mParameter:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_c
    return-object v1
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

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/portability/Camera1Parameters;->mParameter:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/portability/Camera1Parameters;->mParameter:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_c
    return-object v1
.end method
