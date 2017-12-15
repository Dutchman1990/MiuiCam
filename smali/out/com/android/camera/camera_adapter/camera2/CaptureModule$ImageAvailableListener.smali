.class abstract Lcom/android/camera/camera_adapter/camera2/CaptureModule$ImageAvailableListener;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camera_adapter/camera2/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ImageAvailableListener"
.end annotation


# instance fields
.field mCamId:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/camera_adapter/camera2/CaptureModule$ImageAvailableListener;->mCamId:I

    return-void
.end method
