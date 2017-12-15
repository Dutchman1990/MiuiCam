.class public Lcom/android/camera/PictureSize;
.super Ljava/lang/Object;
.source "PictureSize.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/camera/PictureSize;",
        ">;"
    }
.end annotation


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0, v0}, Lcom/android/camera/PictureSize;->setPictureSize(II)Lcom/android/camera/PictureSize;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/PictureSize;->setPictureSize(II)Lcom/android/camera/PictureSize;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/camera/PictureSize;->setPictureSize(Ljava/lang/String;)Lcom/android/camera/PictureSize;

    return-void
.end method


# virtual methods
.method public area()I
    .registers 3

    invoke-virtual {p0}, Lcom/android/camera/PictureSize;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget v0, p0, Lcom/android/camera/PictureSize;->width:I

    iget v1, p0, Lcom/android/camera/PictureSize;->height:I

    mul-int/2addr v0, v1

    goto :goto_7
.end method

.method public compareTo(Lcom/android/camera/PictureSize;)I
    .registers 4

    iget v0, p1, Lcom/android/camera/PictureSize;->width:I

    iget v1, p0, Lcom/android/camera/PictureSize;->width:I

    if-ne v0, v1, :cond_e

    iget v0, p1, Lcom/android/camera/PictureSize;->height:I

    iget v1, p0, Lcom/android/camera/PictureSize;->height:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x0

    return v0

    :cond_e
    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/camera/PictureSize;

    invoke-virtual {p0, p1}, Lcom/android/camera/PictureSize;->compareTo(Lcom/android/camera/PictureSize;)I

    move-result v0

    return v0
.end method

.method public isAspectRatio16_9()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/camera/PictureSize;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    iget v0, p0, Lcom/android/camera/PictureSize;->width:I

    iget v1, p0, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result v0

    return v0
.end method

.method public isAspectRatio1_1()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/camera/PictureSize;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    iget v0, p0, Lcom/android/camera/PictureSize;->width:I

    iget v1, p0, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->isAspectRatio1_1(II)Z

    move-result v0

    return v0
.end method

.method public isAspectRatio4_3()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/camera/PictureSize;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    iget v0, p0, Lcom/android/camera/PictureSize;->width:I

    iget v1, p0, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/PictureSize;->width:I

    iget v2, p0, Lcom/android/camera/PictureSize;->height:I

    mul-int/2addr v1, v2

    if-gtz v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public setPictureSize(II)Lcom/android/camera/PictureSize;
    .registers 3

    iput p1, p0, Lcom/android/camera/PictureSize;->width:I

    iput p2, p0, Lcom/android/camera/PictureSize;->height:I

    return-object p0
.end method

.method public setPictureSize(Landroid/hardware/Camera$Size;)Lcom/android/camera/PictureSize;
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iput v0, p0, Lcom/android/camera/PictureSize;->width:I

    iget v0, p1, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/android/camera/PictureSize;->height:I

    :goto_b
    return-object p0

    :cond_c
    iput v0, p0, Lcom/android/camera/PictureSize;->width:I

    iput v0, p0, Lcom/android/camera/PictureSize;->height:I

    goto :goto_b
.end method

.method public setPictureSize(Ljava/lang/String;)Lcom/android/camera/PictureSize;
    .registers 6

    const/4 v1, -0x1

    const/4 v3, 0x0

    if-nez p1, :cond_c

    move v0, v1

    :goto_5
    if-ne v0, v1, :cond_13

    iput v3, p0, Lcom/android/camera/PictureSize;->width:I

    iput v3, p0, Lcom/android/camera/PictureSize;->height:I

    :goto_b
    return-object p0

    :cond_c
    const/16 v2, 0x78

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    goto :goto_5

    :cond_13
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/PictureSize;->width:I

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/PictureSize;->height:I

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/camera/PictureSize;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/PictureSize;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
