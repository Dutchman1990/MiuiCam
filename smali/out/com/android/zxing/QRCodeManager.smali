.class public Lcom/android/zxing/QRCodeManager;
.super Ljava/lang/Object;
.source "QRCodeManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/zxing/QRCodeManager$1;,
        Lcom/android/zxing/QRCodeManager$MyHander;,
        Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;
    }
.end annotation


# static fields
.field private static CENTER_FRAME_WIDTH:I

.field private static final DECODE_TOTAL_TIME:I

.field private static MAX_FRAME_HEIGHT:I

.field private static MAX_FRAME_WIDTH:I

.field private static mRectFinderCenter:Landroid/graphics/Rect;

.field private static mRectFinderFocusArea:Landroid/graphics/Rect;

.field private static mRectPreviewCenter:Landroid/graphics/Rect;

.field private static mRectPreviewFocusArea:Landroid/graphics/Rect;

.field private static sMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/android/zxing/QRCodeManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mDecode:Z

.field private mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;

.field private mNeedScan:Z

.field private mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mPreviewFormat:I

.field private mPreviewHeight:I

.field private mPreviewLayoutHeight:I

.field private mPreviewLayoutWidth:I

.field private mPreviewWidth:I

.field private mResult:Ljava/lang/String;

.field private mResumeTime:J

.field private mUIInitialized:Z

.field private mViewFinderButton:Landroid/widget/TextView;

.field private mViewFinderFrame:Landroid/view/ViewGroup;


# direct methods
.method static synthetic -get0()I
    .registers 1

    sget v0, Lcom/android/zxing/QRCodeManager;->DECODE_TOTAL_TIME:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/zxing/QRCodeManager;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/zxing/QRCodeManager;)Lcom/android/camera/CameraManager$CameraProxy;
    .registers 2

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/DecodeHandlerFactory;
    .registers 2

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;
    .registers 2

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mListener:Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/zxing/QRCodeManager;)Landroid/hardware/Camera$PreviewCallback;
    .registers 2

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/zxing/QRCodeManager;)I
    .registers 2

    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewHeight:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/zxing/QRCodeManager;)I
    .registers 2

    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewWidth:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/zxing/QRCodeManager;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/zxing/QRCodeManager;->mResumeTime:J

    return-wide v0
.end method

.method static synthetic -get9(Lcom/android/zxing/QRCodeManager;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/zxing/QRCodeManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/zxing/QRCodeManager;->mResult:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/zxing/QRCodeManager;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/zxing/QRCodeManager;->scanQRCodeEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/zxing/QRCodeManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/zxing/QRCodeManager;->exitDecode()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/zxing/QRCodeManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/zxing/QRCodeManager;->sendDecodeMessageSafe(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/camera/Device;->isLowPowerQRScan()Z

    move-result v2

    if-eqz v2, :cond_60

    const/16 v2, 0x3a98

    :goto_9
    sput v2, Lcom/android/zxing/QRCodeManager;->DECODE_TOTAL_TIME:I

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v2, Lcom/android/zxing/QRCodeManager;->sMap:Ljava/util/WeakHashMap;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v2, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v2, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v2, Lcom/android/zxing/QRCodeManager;->mRectFinderFocusArea:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v2, Lcom/android/zxing/QRCodeManager;->mRectFinderCenter:Landroid/graphics/Rect;

    const/16 v2, 0x168

    sput v2, Lcom/android/zxing/QRCodeManager;->MAX_FRAME_HEIGHT:I

    const/16 v2, 0x1e0

    sput v2, Lcom/android/zxing/QRCodeManager;->MAX_FRAME_WIDTH:I

    const/16 v2, 0x2d0

    sput v2, Lcom/android/zxing/QRCodeManager;->CENTER_FRAME_WIDTH:I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Lcom/android/zxing/QRCodeManager;->CENTER_FRAME_WIDTH:I

    sget v2, Lcom/android/zxing/QRCodeManager;->CENTER_FRAME_WIDTH:I

    sput v2, Lcom/android/zxing/QRCodeManager;->MAX_FRAME_HEIGHT:I

    sget v2, Lcom/android/zxing/QRCodeManager;->CENTER_FRAME_WIDTH:I

    sput v2, Lcom/android/zxing/QRCodeManager;->MAX_FRAME_WIDTH:I

    return-void

    :cond_60
    const/4 v2, -0x1

    goto :goto_9
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    iput v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewFormat:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/zxing/QRCodeManager;->mResumeTime:J

    new-instance v0, Lcom/android/zxing/QRCodeManager$1;

    invoke-direct {v0, p0}, Lcom/android/zxing/QRCodeManager$1;-><init>(Lcom/android/zxing/QRCodeManager;)V

    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-void
.end method

.method private exitDecode()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_25
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

    invoke-virtual {v0}, Lcom/android/zxing/DecodeHandlerFactory;->quit()V

    :cond_2e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/zxing/QRCodeManager;->mDecode:Z

    iput-object v2, p0, Lcom/android/zxing/QRCodeManager;->mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

    return-void
.end method

.method private hide()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public static instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;
    .registers 3

    sget-object v1, Lcom/android/zxing/QRCodeManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/zxing/QRCodeManager;

    if-nez v0, :cond_14

    new-instance v0, Lcom/android/zxing/QRCodeManager;

    invoke-direct {v0}, Lcom/android/zxing/QRCodeManager;-><init>()V

    sget-object v1, Lcom/android/zxing/QRCodeManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-object v0
.end method

.method public static recode(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string/jumbo v2, ""

    :try_start_3
    const-string/jumbo v4, "ISO-8859-1"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "ISO-8859-1"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string/jumbo v5, "GB2312"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_23
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_23} :catch_27

    move-object v2, v3

    :goto_24
    return-object v2

    :cond_25
    move-object v2, p0

    goto :goto_24

    :catch_27
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_24
.end method

.method public static removeInstance(Landroid/content/Context;)V
    .registers 3

    sget-object v1, Lcom/android/zxing/QRCodeManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/zxing/QRCodeManager;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->onPause()V

    :cond_d
    return-void
.end method

.method private scanQRCodeEnabled()Z
    .registers 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/zxing/QRCodeManager;->mUIInitialized:Z

    if-eqz v1, :cond_26

    iget v1, p0, Lcom/android/zxing/QRCodeManager;->mPreviewWidth:I

    if-eqz v1, :cond_26

    iget v1, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/zxing/QRCodeManager;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/zxing/QRCodeManager;->mListener:Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/zxing/QRCodeManager;->mListener:Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;

    invoke-interface {v1}, Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;->scanQRCodeEnabled()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_26

    const/4 v0, 0x1

    :cond_26
    return v0
.end method

.method private sendDecodeMessageSafe(I)V
    .registers 6

    const v1, 0x7f090008

    iget-boolean v0, p0, Lcom/android/zxing/QRCodeManager;->mNeedScan:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/zxing/QRCodeManager;->mUIInitialized:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/zxing/QRCodeManager;->mDecode:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1a
    return-void
.end method

.method private show()V
    .registers 6

    iget-boolean v3, p0, Lcom/android/zxing/QRCodeManager;->mUIInitialized:Z

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :try_start_b
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->dismissKeyguard()V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.receiverResultBarcodeScanner"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.xiaomi.scanner"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "result"

    iget-object v4, p0, Lcom/android/zxing/QRCodeManager;->mResult:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Lcom/android/camera/ActivityBase;->startActivity(Landroid/content/Intent;)V

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/android/camera/ActivityBase;->setJumpFlag(I)V
    :try_end_2f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b .. :try_end_2f} :catch_30

    :cond_2f
    :goto_2f
    return-void

    :catch_30
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string/jumbo v3, "QRCodeManager"

    const-string/jumbo v4, "check if BarcodeScanner tool is installed or not"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method

.method private startDecodeThreadIfNeeded()V
    .registers 4

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

    if-nez v0, :cond_13

    new-instance v0, Lcom/android/zxing/DecodeHandlerFactory;

    iget-object v1, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/zxing/DecodeHandlerFactory;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

    invoke-virtual {v0}, Lcom/android/zxing/DecodeHandlerFactory;->start()V

    :cond_13
    return-void
.end method

.method private updateRectInPreview()V
    .registers 8

    iget v2, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    if-nez v2, :cond_5

    return-void

    :cond_5
    iget v2, p0, Lcom/android/zxing/QRCodeManager;->mPreviewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    int-to-float v3, v3

    div-float v1, v2, v3

    iget v2, p0, Lcom/android/zxing/QRCodeManager;->mPreviewHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutHeight:I

    int-to-float v3, v3

    div-float v0, v2, v3

    sget-object v2, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/zxing/QRCodeManager;->mRectFinderFocusArea:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    sget-object v4, Lcom/android/zxing/QRCodeManager;->mRectFinderFocusArea:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    sget-object v5, Lcom/android/zxing/QRCodeManager;->mRectFinderFocusArea:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    sget-object v6, Lcom/android/zxing/QRCodeManager;->mRectFinderFocusArea:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/zxing/QRCodeManager;->mRectFinderCenter:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    sget-object v4, Lcom/android/zxing/QRCodeManager;->mRectFinderCenter:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    sget-object v5, Lcom/android/zxing/QRCodeManager;->mRectFinderCenter:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    sget-object v6, Lcom/android/zxing/QRCodeManager;->mRectFinderCenter:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method


# virtual methods
.method public buildLuminanceSource([BIIZ)Lcom/android/zxing/YUVLuminanceSource;
    .registers 13

    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewFormat:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_28

    invoke-direct {p0}, Lcom/android/zxing/QRCodeManager;->scanQRCodeEnabled()Z

    move-result v0

    if-eqz v0, :cond_28

    if-eqz p4, :cond_16

    sget-object v0, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_16
    sget-object v0, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_47

    :cond_28
    const/4 v0, 0x0

    return-object v0

    :cond_2a
    new-instance v0, Lcom/android/zxing/YUVLuminanceSource;

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/zxing/YUVLuminanceSource;-><init>([BIIIIII)V

    return-object v0

    :cond_47
    new-instance v0, Lcom/android/zxing/YUVLuminanceSource;

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/zxing/YUVLuminanceSource;-><init>([BIIIIII)V

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public hideViewFinderFrame()V
    .registers 3

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_13
    return-void
.end method

.method public needScanQRCode(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/zxing/QRCodeManager;->mDecode:Z

    if-eqz v0, :cond_1a

    move v0, p1

    :goto_5
    iput-boolean v0, p0, Lcom/android/zxing/QRCodeManager;->mNeedScan:Z

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    if-eqz p1, :cond_1c

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/android/zxing/QRCodeManager;->sendDecodeMessageSafe(I)V

    :cond_12
    :goto_12
    iget-boolean v0, p0, Lcom/android/zxing/QRCodeManager;->mNeedScan:Z

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/android/zxing/QRCodeManager;->startDecodeThreadIfNeeded()V

    :cond_19
    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_5

    :cond_1c
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_12
.end method

.method public onBackPressed()Z
    .registers 2

    invoke-direct {p0}, Lcom/android/zxing/QRCodeManager;->hide()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "qrcode_detected_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/zxing/QRCodeManager;->show()V

    return-void
.end method

.method public onCreate(Landroid/app/Activity;Landroid/os/Looper;Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;)V
    .registers 6

    iput-object p1, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/zxing/QRCodeManager;->mListener:Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;

    new-instance v0, Lcom/android/zxing/QRCodeManager$MyHander;

    invoke-direct {v0, p0, p2}, Lcom/android/zxing/QRCodeManager$MyHander;-><init>(Lcom/android/zxing/QRCodeManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090021

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/zxing/ui/QRCodeFragmentLayout;

    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/zxing/QRCodeManager;->mUIInitialized:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/zxing/QRCodeManager;->resetQRScanExit(Z)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->removeInstance(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onPause()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_c
    invoke-direct {p0}, Lcom/android/zxing/QRCodeManager;->exitDecode()V

    iput-object v2, p0, Lcom/android/zxing/QRCodeManager;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iput-object v2, p0, Lcom/android/zxing/QRCodeManager;->mResult:Ljava/lang/String;

    return-void
.end method

.method public requestDecode()V
    .registers 2

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_9

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/zxing/QRCodeManager;->sendDecodeMessageSafe(I)V

    :cond_9
    return-void
.end method

.method public resetQRScanExit(Z)V
    .registers 14

    const-wide/16 v10, -0x1

    const v8, 0x7f09000a

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-eqz p1, :cond_f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/zxing/QRCodeManager;->mResumeTime:J

    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, Lcom/android/zxing/QRCodeManager;->DECODE_TOTAL_TIME:I

    if-eq v2, v7, :cond_1d

    iget-wide v2, p0, Lcom/android/zxing/QRCodeManager;->mResumeTime:J

    cmp-long v2, v2, v10

    if-nez v2, :cond_8c

    :cond_1d
    move v2, v6

    :goto_1e
    iput-boolean v2, p0, Lcom/android/zxing/QRCodeManager;->mDecode:Z

    iget-boolean v2, p0, Lcom/android/zxing/QRCodeManager;->mDecode:Z

    if-nez v2, :cond_67

    const-string/jumbo v2, "QRCodeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "we should not decode qrcode, mResumeTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/zxing/QRCodeManager;->mResumeTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " now="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " resumetime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/zxing/QRCodeManager;->mResumeTime:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " decodetime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/zxing/QRCodeManager;->DECODE_TOTAL_TIME:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    iget-boolean v2, p0, Lcom/android/zxing/QRCodeManager;->mDecode:Z

    if-eqz v2, :cond_8b

    iget-object v2, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_8b

    iget-wide v2, p0, Lcom/android/zxing/QRCodeManager;->mResumeTime:J

    cmp-long v2, v2, v10

    if-eqz v2, :cond_8b

    sget v2, Lcom/android/zxing/QRCodeManager;->DECODE_TOTAL_TIME:I

    if-eq v2, v7, :cond_8b

    iget-object v2, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    sget v3, Lcom/android/zxing/QRCodeManager;->DECODE_TOTAL_TIME:I

    int-to-long v4, v3

    iget-wide v6, p0, Lcom/android/zxing/QRCodeManager;->mResumeTime:J

    sub-long v6, v0, v6

    sub-long/2addr v4, v6

    invoke-virtual {v2, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_8b
    return-void

    :cond_8c
    iget-wide v2, p0, Lcom/android/zxing/QRCodeManager;->mResumeTime:J

    sget v4, Lcom/android/zxing/QRCodeManager;->DECODE_TOTAL_TIME:I

    int-to-long v4, v4

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v2

    if-eqz v2, :cond_99

    const/4 v2, 0x0

    goto :goto_1e

    :cond_99
    move v2, v6

    goto :goto_1e
.end method

.method public setCameraDevice(Lcom/android/camera/CameraManager$CameraProxy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/zxing/QRCodeManager;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-void
.end method

.method public setPreviewFormat(I)V
    .registers 2

    iput p1, p0, Lcom/android/zxing/QRCodeManager;->mPreviewFormat:I

    return-void
.end method

.method public setPreviewLayoutSize(II)V
    .registers 4

    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    if-ne v0, p1, :cond_8

    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutHeight:I

    if-eq v0, p2, :cond_f

    :cond_8
    iput p1, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    iput p2, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutHeight:I

    invoke-virtual {p0}, Lcom/android/zxing/QRCodeManager;->updateViewFinderRect()V

    :cond_f
    return-void
.end method

.method public setTransposePreviewSize(II)V
    .registers 4

    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewWidth:I

    if-ne v0, p2, :cond_8

    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewHeight:I

    if-eq v0, p1, :cond_f

    :cond_8
    iput p2, p0, Lcom/android/zxing/QRCodeManager;->mPreviewWidth:I

    iput p1, p0, Lcom/android/zxing/QRCodeManager;->mPreviewHeight:I

    invoke-direct {p0}, Lcom/android/zxing/QRCodeManager;->updateRectInPreview()V

    :cond_f
    return-void
.end method

.method public updateViewFinderRect()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/zxing/QRCodeManager;->updateViewFinderRect(Landroid/graphics/Point;)V

    return-void
.end method

.method public updateViewFinderRect(Landroid/graphics/Point;)V
    .registers 11

    const/4 v8, 0x0

    iget v6, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    sget v7, Lcom/android/zxing/QRCodeManager;->CENTER_FRAME_WIDTH:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutHeight:I

    sget v7, Lcom/android/zxing/QRCodeManager;->CENTER_FRAME_WIDTH:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget v6, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    sub-int/2addr v6, v5

    div-int/lit8 v2, v6, 0x2

    iget v6, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutHeight:I

    sub-int/2addr v6, v1

    div-int/lit8 v4, v6, 0x2

    add-int v3, v2, v5

    add-int v0, v4, v1

    sget-object v6, Lcom/android/zxing/QRCodeManager;->mRectFinderCenter:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p1, :cond_6b

    iget v6, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    sget v7, Lcom/android/zxing/QRCodeManager;->MAX_FRAME_WIDTH:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutHeight:I

    sget v7, Lcom/android/zxing/QRCodeManager;->MAX_FRAME_HEIGHT:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v6, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v6, p1, Landroid/graphics/Point;->y:I

    div-int/lit8 v7, v1, 0x2

    sub-int/2addr v6, v7

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v6, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 v7, v5, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v6, p1, Landroid/graphics/Point;->y:I

    div-int/lit8 v7, v1, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget-object v6, Lcom/android/zxing/QRCodeManager;->mRectFinderFocusArea:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_67
    invoke-direct {p0}, Lcom/android/zxing/QRCodeManager;->updateRectInPreview()V

    return-void

    :cond_6b
    sget-object v6, Lcom/android/zxing/QRCodeManager;->mRectFinderFocusArea:Landroid/graphics/Rect;

    invoke-virtual {v6, v8, v8, v8, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_67
.end method
