.class public Lcom/android/camera/camera_adapter/camera2/NamedImages;
.super Ljava/lang/Object;
.source "NamedImages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;
    }
.end annotation


# instance fields
.field private mQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/camera/camera_adapter/camera2/NamedImages;->mQueue:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public getNextNameEntity()Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;
    .registers 4

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/NamedImages;->mQueue:Ljava/util/Vector;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/NamedImages;->mQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/NamedImages;->mQueue:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_19

    monitor-exit v1

    return-object v0

    :cond_16
    monitor-exit v1

    const/4 v0, 0x0

    return-object v0

    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public nameNewImage(J)V
    .registers 6

    new-instance v0, Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;-><init>()V

    invoke-static {p1, p2}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;->title:Ljava/lang/String;

    iput-wide p1, v0, Lcom/android/camera/camera_adapter/camera2/NamedImages$NamedEntity;->date:J

    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/NamedImages;->mQueue:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method
