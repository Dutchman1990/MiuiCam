.class public Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;
.super Ljava/lang/Object;
.source "RefCountedAutoCloseable.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/AutoCloseable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation


# instance fields
.field private mObject:Ljava/lang/AutoCloseable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mRefCount:J


# direct methods
.method public constructor <init>(Ljava/lang/AutoCloseable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->mRefCount:J

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_f
    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->mObject:Ljava/lang/AutoCloseable;

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 9

    const-wide/16 v6, 0x0

    monitor-enter p0

    :try_start_3
    iget-wide v2, p0, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->mRefCount:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_1e

    iget-wide v2, p0, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->mRefCount:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->mRefCount:J

    iget-wide v2, p0, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->mRefCount:J
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_2c

    cmp-long v1, v2, v6

    if-gez v1, :cond_1e

    :try_start_16
    iget-object v1, p0, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->mObject:Ljava/lang/AutoCloseable;

    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_20
    .catchall {:try_start_16 .. :try_end_1b} :catchall_27

    const/4 v1, 0x0

    :try_start_1c
    iput-object v1, p0, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->mObject:Ljava/lang/AutoCloseable;
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_2c

    :cond_1e
    monitor-exit p0

    return-void

    :catch_20
    move-exception v0

    :try_start_21
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception v1

    const/4 v2, 0x0

    :try_start_29
    iput-object v2, p0, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->mObject:Ljava/lang/AutoCloseable;

    throw v1
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized get()Ljava/lang/AutoCloseable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->mObject:Ljava/lang/AutoCloseable;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAndRetain()Ljava/lang/AutoCloseable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->mRefCount:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_c
    :try_start_c
    iget-wide v0, p0, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->mRefCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->mRefCount:J

    iget-object v0, p0, Lcom/android/camera/camera_adapter/camera2/RefCountedAutoCloseable;->mObject:Ljava/lang/AutoCloseable;
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_17

    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method
