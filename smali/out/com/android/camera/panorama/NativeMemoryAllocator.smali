.class public Lcom/android/camera/panorama/NativeMemoryAllocator;
.super Ljava/lang/Object;
.source "NativeMemoryAllocator.java"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    :try_start_0
    const-string/jumbo v1, "morpho_memory_allocator"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v1, "MorphoNativeMemoryAllocator"

    const-string/jumbo v2, "load libmorpho_memory_allocator.so"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    const-string/jumbo v1, "MorphoNativeMemoryAllocator"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "MorphoNativeMemoryAllocator"

    const-string/jumbo v2, "can\'t loadLibrary"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native allocateBuffer(I)Ljava/nio/ByteBuffer;
.end method

.method public static final native freeBuffer(Ljava/nio/ByteBuffer;)I
.end method
