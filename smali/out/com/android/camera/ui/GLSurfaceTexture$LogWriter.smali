.class Lcom/android/camera/ui/GLSurfaceTexture$LogWriter;
.super Ljava/io/Writer;
.source "GLSurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GLSurfaceTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogWriter"
.end annotation


# instance fields
.field private mBuilder:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method private flushBuilder()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_20

    const-string/jumbo v0, "GLSurfaceTexture"

    iget-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_20
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/ui/GLSurfaceTexture$LogWriter;->flushBuilder()V

    return-void
.end method

.method public flush()V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/ui/GLSurfaceTexture$LogWriter;->flushBuilder()V

    return-void
.end method

.method public write([CII)V
    .registers 7

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p3, :cond_17

    add-int v2, p2, v1

    aget-char v0, p1, v2

    const/16 v2, 0xa

    if-ne v0, v2, :cond_11

    invoke-direct {p0}, Lcom/android/camera/ui/GLSurfaceTexture$LogWriter;->flushBuilder()V

    :goto_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_11
    iget-object v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_17
    return-void
.end method