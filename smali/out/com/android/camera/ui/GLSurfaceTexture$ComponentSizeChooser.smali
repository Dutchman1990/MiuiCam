.class Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;
.super Lcom/android/camera/ui/GLSurfaceTexture$BaseConfigChooser;
.source "GLSurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GLSurfaceTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComponentSizeChooser"
.end annotation


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I

.field final synthetic this$0:Lcom/android/camera/ui/GLSurfaceTexture;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/GLSurfaceTexture;IIIIII)V
    .registers 12

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->this$0:Lcom/android/camera/ui/GLSurfaceTexture;

    const/16 v0, 0xd

    new-array v0, v0, [I

    const/16 v1, 0x3024

    const/4 v2, 0x0

    aput v1, v0, v2

    aput p2, v0, v3

    const/16 v1, 0x3023

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v1, 0x3

    aput p3, v0, v1

    const/16 v1, 0x3022

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v1, 0x5

    aput p4, v0, v1

    const/16 v1, 0x3021

    const/4 v2, 0x6

    aput v1, v0, v2

    const/4 v1, 0x7

    aput p5, v0, v1

    const/16 v1, 0x3025

    const/16 v2, 0x8

    aput v1, v0, v2

    const/16 v1, 0x9

    aput p6, v0, v1

    const/16 v1, 0x3026

    const/16 v2, 0xa

    aput v1, v0, v2

    const/16 v1, 0xb

    aput p7, v0, v1

    const/16 v1, 0x3038

    const/16 v2, 0xc

    aput v1, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/GLSurfaceTexture$BaseConfigChooser;-><init>(Lcom/android/camera/ui/GLSurfaceTexture;[I)V

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mValue:[I

    iput p2, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mRedSize:I

    iput p3, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mGreenSize:I

    iput p4, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mBlueSize:I

    iput p5, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mAlphaSize:I

    iput p6, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mDepthSize:I

    iput p7, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mStencilSize:I

    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .registers 8

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mValue:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    :cond_e
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 19

    const/4 v1, 0x0

    move-object/from16 v0, p3

    array-length v14, v0

    move v13, v1

    :goto_5
    if-ge v13, v14, :cond_6e

    aget-object v4, p3, v13

    const/16 v5, 0x3025

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    const/16 v5, 0x3026

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    iget v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mDepthSize:I

    if-lt v9, v1, :cond_6a

    iget v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mStencilSize:I

    if-lt v12, v1, :cond_6a

    const/16 v5, 0x3024

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    const/16 v5, 0x3023

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    const/16 v5, 0x3022

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    const/16 v5, 0x3021

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v7

    iget v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mRedSize:I

    if-ne v11, v1, :cond_6a

    iget v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mGreenSize:I

    if-ne v10, v1, :cond_6a

    iget v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mBlueSize:I

    if-ne v8, v1, :cond_6a

    iget v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$ComponentSizeChooser;->mAlphaSize:I

    if-ne v7, v1, :cond_6a

    return-object v4

    :cond_6a
    add-int/lit8 v1, v13, 0x1

    move v13, v1

    goto :goto_5

    :cond_6e
    const/4 v1, 0x0

    return-object v1
.end method
