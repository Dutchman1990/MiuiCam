.class public Lcom/android/gallery3d/ui/GLId;
.super Ljava/lang/Object;
.source "GLId.java"


# static fields
.field private static sNextId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput v0, Lcom/android/gallery3d/ui/GLId;->sNextId:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static glDeleteBuffers(I[II)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    return-void
.end method

.method public static glDeleteFrameBuffers(I[II)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    return-void
.end method

.method public static glDeleteTextures(I[II)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method public static declared-synchronized glGenFrameBuffers(I[II)V
    .registers 8

    const-class v2, Lcom/android/gallery3d/ui/GLId;

    monitor-enter v2

    :goto_3
    add-int/lit8 v0, p0, -0x1

    if-lez p0, :cond_13

    add-int v1, p2, v0

    :try_start_9
    sget v3, Lcom/android/gallery3d/ui/GLId;->sNextId:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/android/gallery3d/ui/GLId;->sNextId:I

    aput v3, p1, v1
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_15

    move p0, v0

    goto :goto_3

    :cond_13
    monitor-exit v2

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized glGenTextures(I[II)V
    .registers 8

    const-class v2, Lcom/android/gallery3d/ui/GLId;

    monitor-enter v2

    :goto_3
    add-int/lit8 v0, p0, -0x1

    if-lez p0, :cond_13

    add-int v1, p2, v0

    :try_start_9
    sget v3, Lcom/android/gallery3d/ui/GLId;->sNextId:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/android/gallery3d/ui/GLId;->sNextId:I

    aput v3, p1, v1
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_15

    move p0, v0

    goto :goto_3

    :cond_13
    monitor-exit v2

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v2

    throw v1
.end method
