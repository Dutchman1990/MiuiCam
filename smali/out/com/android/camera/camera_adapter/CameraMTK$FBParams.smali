.class public Lcom/android/camera/camera_adapter/CameraMTK$FBParams;
.super Ljava/lang/Object;
.source "CameraMTK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camera_adapter/CameraMTK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FBParams"
.end annotation


# instance fields
.field public enlargeEye:I

.field public skinColor:I

.field public slimFace:I

.field public smoothLevel:I

.field final synthetic this$0:Lcom/android/camera/camera_adapter/CameraMTK;


# direct methods
.method public constructor <init>(Lcom/android/camera/camera_adapter/CameraMTK;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget v0, p1, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->skinColor:I

    iput v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->skinColor:I

    iget v0, p1, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->smoothLevel:I

    iput v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->smoothLevel:I

    iget v0, p1, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->slimFace:I

    iput v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->slimFace:I

    iget v0, p1, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->enlargeEye:I

    iput v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->enlargeEye:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_5

    return v4

    :cond_5
    instance-of v1, p1, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    if-nez v1, :cond_a

    return v3

    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    iget v1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->enlargeEye:I

    iget v2, v0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->enlargeEye:I

    if-eq v1, v2, :cond_14

    return v3

    :cond_14
    iget v1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->skinColor:I

    iget v2, v0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->skinColor:I

    if-eq v1, v2, :cond_1b

    return v3

    :cond_1b
    iget v1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->slimFace:I

    iget v2, v0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->slimFace:I

    if-eq v1, v2, :cond_22

    return v3

    :cond_22
    iget v1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->smoothLevel:I

    iget v2, v0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->smoothLevel:I

    if-eq v1, v2, :cond_29

    return v3

    :cond_29
    return v4
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->skinColor:I

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->smoothLevel:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->slimFace:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->enlargeEye:I

    add-int v0, v1, v2

    return v0
.end method
