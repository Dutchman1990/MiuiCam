.class public Lcom/android/camera/ui/UIController;
.super Lcom/android/camera/ui/V6ModuleUI;
.source "UIController.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispacher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/UIController$1;,
        Lcom/android/camera/ui/UIController$2;,
        Lcom/android/camera/ui/UIController$3;,
        Lcom/android/camera/ui/UIController$MonoDummyListener;
    }
.end annotation


# instance fields
.field private callback:Landroid/view/SurfaceHolder$Callback;

.field private callbackMono:Landroid/view/SurfaceHolder$Callback;

.field public mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

.field public mDebugInfoView:Landroid/widget/TextView;

.field public mEdgeShutterView:Lcom/android/camera/ui/V6EdgeShutterView;

.field private mFrontCameraHintView:Landroid/view/View;

.field public mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

.field private mIsMonoDummyAllocationEverUsed:Z

.field private mLastMutexView:Lcom/android/camera/ui/MutexView;

.field private mMainContent:Landroid/view/View;

.field private mMonoDummyAllocation:Landroid/renderscript/Allocation;

.field private mMonoDummyOutputAllocation:Landroid/renderscript/Allocation;

.field private mMutexRecover:Ljava/lang/Runnable;

.field private mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

.field private mPreviewHeight:I

.field public mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

.field public mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

.field private mPreviewWidth:I

.field public mSettingPage:Lcom/android/camera/ui/V6SettingPage;

.field public mSettingsStatusBar:Lcom/android/camera/ui/V6SettingsStatusBar;

.field public mSmartShutterButton:Lcom/android/camera/ui/V6SmartShutterButton;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceHolderMono:Landroid/view/SurfaceHolder;

.field private mSurfaceMono:Landroid/view/Surface;

.field private mSurfaceView:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

.field private mSurfaceViewMono:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

.field public mSurfaceViewParent:Lcom/android/camera/ui/V6SurfaceViewFrame;

.field public mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/UIController;)Lcom/android/camera/ui/MutexView;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mLastMutexView:Lcom/android/camera/ui/MutexView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/UIController;)Landroid/renderscript/Allocation;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/UIController;)Landroid/renderscript/Allocation;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mMonoDummyOutputAllocation:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/UIController;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/ui/UIController;->mPreviewHeight:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/camera/ui/UIController;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/ui/UIController;->mPreviewWidth:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/camera/ui/UIController;)Landroid/view/SurfaceHolder;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceHolderMono:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/camera/ui/UIController;)Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceViewMono:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/UIController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/camera/ui/UIController;->mIsMonoDummyAllocationEverUsed:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/camera/ui/UIController;Lcom/android/camera/ui/MutexView;)Lcom/android/camera/ui/MutexView;
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/UIController;->mLastMutexView:Lcom/android/camera/ui/MutexView;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/camera/ui/UIController;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/UIController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/camera/ui/UIController;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/UIController;->mSurfaceHolderMono:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/UIController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/ui/UIController;->previewUIDestroyed()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/camera/ui/UIController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/ui/UIController;->previewUIReady()V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6ModuleUI;-><init>(Lcom/android/camera/Camera;)V

    new-instance v0, Lcom/android/camera/ui/UIController$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/UIController$1;-><init>(Lcom/android/camera/ui/UIController;)V

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mMutexRecover:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/UIController;->mIsMonoDummyAllocationEverUsed:Z

    new-instance v0, Lcom/android/camera/ui/UIController$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/UIController$2;-><init>(Lcom/android/camera/ui/UIController;)V

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->callbackMono:Landroid/view/SurfaceHolder$Callback;

    new-instance v0, Lcom/android/camera/ui/UIController$3;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/UIController$3;-><init>(Lcom/android/camera/ui/UIController;)V

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->callback:Landroid/view/SurfaceHolder$Callback;

    return-void
.end method

.method private destroyMonoAllocation()V
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v0, "UIController"

    const-string/jumbo v1, "destroyMonoAllocation>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/android/camera/ui/UIController;->mIsMonoDummyAllocationEverUsed:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->setOnBufferAvailableListener(Landroid/renderscript/Allocation$OnBufferAvailableListener;)V

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    iput-object v2, p0, Lcom/android/camera/ui/UIController;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    :cond_1e
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mMonoDummyOutputAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Lcom/android/camera/ui/UIController;->mIsMonoDummyAllocationEverUsed:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mMonoDummyOutputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    iput-object v2, p0, Lcom/android/camera/ui/UIController;->mMonoDummyOutputAllocation:Landroid/renderscript/Allocation;

    :cond_2d
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceViewMono:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->setVisibility(I)V

    const-string/jumbo v0, "UIController"

    const-string/jumbo v1, "destroyMonoAllocation<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private hideModeSetting()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getModeButton()Lcom/android/camera/ui/ModeButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ModeButton;->updateRemind()V

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingPage:Lcom/android/camera/ui/V6SettingPage;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPage;->dismiss()V

    return-void
.end method

.method private initSurfaces()V
    .registers 3

    const v0, 0x7f090074

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceView:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceView:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/android/camera/ui/UIController;->callback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const v0, 0x7f090075

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceViewMono:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceViewMono:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->setZOrderMediaOverlay(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceViewMono:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceHolderMono:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceHolderMono:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/android/camera/ui/UIController;->callbackMono:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceViewMono:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    if-eqz v0, :cond_4a

    invoke-static {}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->isMonoPreviewOn()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceViewMono:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->setVisibility(I)V

    :cond_4a
    :goto_4a
    return-void

    :cond_4b
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceViewMono:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->setVisibility(I)V

    goto :goto_4a
.end method

.method private onDismissModeSetting()V
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isPanoramaModule()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/BottomControlUpperPanel;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/BottomControlUpperPanel;->animateIn(Ljava/lang/Runnable;)V

    :cond_15
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/BottomControlPanel;->animateIn(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/TopControlPanel;->animateIn(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6PreviewPage;->switchWithAnimation(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPanel;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingsStatusBar:Lcom/android/camera/ui/V6SettingsStatusBar;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SettingsStatusBar;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    const v2, 0x7f09000c

    const/4 v3, 0x2

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/UIController;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private onMutexViewHide(I)V
    .registers 6

    sparse-switch p1, :sswitch_data_16

    :goto_3
    return-void

    :sswitch_4
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v1, p0, Lcom/android/camera/ui/UIController;->mMutexRecover:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/V6PreviewPage;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :sswitch_e
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPage;->updateOrientationLayout(Z)V

    goto :goto_3

    nop

    :sswitch_data_16
    .sparse-switch
        0x7f090066 -> :sswitch_4
        0x7f090067 -> :sswitch_4
        0x7f090068 -> :sswitch_4
        0x7f090092 -> :sswitch_e
    .end sparse-switch
.end method

.method private onMutexViewShow(I)V
    .registers 5

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_34

    :goto_4
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v1, p0, Lcom/android/camera/ui/UIController;->mMutexRecover:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPage;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6PreviewPage;->updateOrientationLayout(Z)V

    return-void

    :sswitch_11
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->isSubViewShown()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mLastMutexView:Lcom/android/camera/ui/MutexView;

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mLastMutexView:Lcom/android/camera/ui/MutexView;

    invoke-interface {v0}, Lcom/android/camera/ui/MutexView;->hide()V

    goto :goto_4

    :cond_27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mLastMutexView:Lcom/android/camera/ui/MutexView;

    goto :goto_4

    :sswitch_2b
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/TopPopupParent;->dismissAllPopup(Z)V

    goto :goto_4

    nop

    :sswitch_data_34
    .sparse-switch
        0x7f090066 -> :sswitch_11
        0x7f090067 -> :sswitch_11
        0x7f090068 -> :sswitch_11
        0x7f090092 -> :sswitch_2b
    .end sparse-switch
.end method

.method private onShowModeSetting()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    return-void
.end method

.method private previewUIDestroyed()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->onPreviewUIDestroyed()V

    return-void
.end method

.method private previewUIReady()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceViewMono:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceViewMono:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceHolderMono:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceHolderMono:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_30
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->onPreviewUIReady()V

    :cond_35
    return-void
.end method

.method private releaseMonoSurface()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceMono:Landroid/view/Surface;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceMono:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/android/camera/ui/UIController;->mSurfaceMono:Landroid/view/Surface;

    :cond_c
    return-void
.end method

.method private showModeSetting()V
    .registers 7

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPage;->switchWithAnimation(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/TopControlPanel;->onShowModeSettings()V

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/BottomControlPanel;->animateOut(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/TopControlPanel;->animateOut(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->isFullScreen()Z

    move-result v0

    if-nez v0, :cond_33

    sget-boolean v0, Lcom/android/camera/Device;->IS_B7:Z

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setVisibility(I)V

    :cond_33
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mEdgeShutterView:Lcom/android/camera/ui/V6EdgeShutterView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6EdgeShutterView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/V6PreviewPanel;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingsStatusBar:Lcom/android/camera/ui/V6SettingsStatusBar;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/V6SettingsStatusBar;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPage;->show()V

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    const v2, 0x7f09001d

    const/4 v3, 0x2

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/UIController;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 7

    packed-switch p3, :pswitch_data_1c

    const/4 v0, 0x0

    return v0

    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0, p1, p2, p4, p5}, Lcom/android/camera/module/Module;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_10
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1, p2, p4, p5}, Lcom/android/camera/Camera;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_17
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/camera/ui/UIController;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_10
        :pswitch_5
        :pswitch_17
    .end packed-switch
.end method

.method public getAsdIndicator()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mAsdIndicatorView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getBottomControlLowerGroup()Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlPanel;->getLowerGroup()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    iget-object v0, v0, Lcom/android/camera/ui/BottomControlPanel;->mLowerPanel:Lcom/android/camera/ui/BottomControlLowerPanel;

    return-object v0
.end method

.method public getBottomControlPanel()Lcom/android/camera/ui/BottomControlPanel;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    return-object v0
.end method

.method public getBottomControlUpperPanel()Lcom/android/camera/ui/BottomControlUpperPanel;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    iget-object v0, v0, Lcom/android/camera/ui/BottomControlPanel;->mUpperPanel:Lcom/android/camera/ui/BottomControlUpperPanel;

    return-object v0
.end method

.method public getCaptureProgressBar()Landroid/view/View;
    .registers 2

    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getProgressBar()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getEdgeShutterView()Lcom/android/camera/ui/V6EdgeShutterView;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mEdgeShutterView:Lcom/android/camera/ui/V6EdgeShutterView;

    return-object v0
.end method

.method public getEffectButton()Lcom/android/camera/ui/EffectButton;
    .registers 2

    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlUpperPanel()Lcom/android/camera/ui/BottomControlUpperPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlUpperPanel;->getEffectButton()Lcom/android/camera/ui/EffectButton;

    move-result-object v0

    return-object v0
.end method

.method public getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mCropView:Lcom/android/camera/ui/V6EffectCropView;

    return-object v0
.end method

.method public getFaceView()Lcom/android/camera/ui/FaceView;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mFaceView:Lcom/android/camera/ui/FaceView;

    return-object v0
.end method

.method public getFlashButton()Lcom/android/camera/ui/FlashButton;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/TopControlPanel;->getFlashButton()Lcom/android/camera/ui/FlashButton;

    move-result-object v0

    return-object v0
.end method

.method public getFocusView()Lcom/android/camera/ui/FocusView;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mFocusView:Lcom/android/camera/ui/FocusView;

    return-object v0
.end method

.method public getFrontCameraHintView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mFrontCameraHintView:Landroid/view/View;

    return-object v0
.end method

.method public getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    return-object v0
.end method

.method public getHdrButton()Lcom/android/camera/ui/HdrButton;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/TopControlPanel;->getHdrButton()Lcom/android/camera/ui/HdrButton;

    move-result-object v0

    return-object v0
.end method

.method public getModeButton()Lcom/android/camera/ui/ModeButton;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    iget-object v0, v0, Lcom/android/camera/ui/BottomControlPanel;->mUpperPanel:Lcom/android/camera/ui/BottomControlUpperPanel;

    iget-object v0, v0, Lcom/android/camera/ui/BottomControlUpperPanel;->mModeButton:Lcom/android/camera/ui/ModeButton;

    return-object v0
.end method

.method public getModeExitView()Lcom/android/camera/ui/V6ModeExitView;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    return-object v0
.end method

.method public getModulePicker()Lcom/android/camera/ui/V6ModulePicker;
    .registers 2

    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getModulePicker()Lcom/android/camera/ui/V6ModulePicker;

    move-result-object v0

    return-object v0
.end method

.method public getMonoDummySurface()Landroid/view/Surface;
    .registers 7

    iget-object v4, p0, Lcom/android/camera/ui/UIController;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    if-nez v4, :cond_82

    iget-object v4, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v4}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v1

    new-instance v3, Landroid/renderscript/Type$Builder;

    invoke-static {v1}, Landroid/renderscript/Element;->YUV(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    iget v4, p0, Lcom/android/camera/ui/UIController;->mPreviewWidth:I

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    iget v4, p0, Lcom/android/camera/ui/UIController;->mPreviewHeight:I

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    const/16 v4, 0x23

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setYuvFormat(I)Landroid/renderscript/Type$Builder;

    invoke-virtual {v3}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v4

    const/16 v5, 0x21

    invoke-static {v1, v4, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/ui/UIController;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    invoke-static {v1}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/ui/UIController;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v2, v4}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->setInput(Landroid/renderscript/Allocation;)V

    invoke-static {}, Lcom/android/camera/camera_adapter/camera2/SettingsManager;->isMonoPreviewOn()Z

    move-result v4

    if-eqz v4, :cond_75

    new-instance v0, Landroid/renderscript/Type$Builder;

    invoke-static {v1}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    iget v4, p0, Lcom/android/camera/ui/UIController;->mPreviewWidth:I

    invoke-virtual {v0, v4}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    iget v4, p0, Lcom/android/camera/ui/UIController;->mPreviewHeight:I

    invoke-virtual {v0, v4}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v4

    const/16 v5, 0x41

    invoke-static {v1, v4, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/ui/UIController;->mMonoDummyOutputAllocation:Landroid/renderscript/Allocation;

    iget-object v4, p0, Lcom/android/camera/ui/UIController;->mMonoDummyOutputAllocation:Landroid/renderscript/Allocation;

    iget-object v5, p0, Lcom/android/camera/ui/UIController;->mSurfaceHolderMono:Landroid/view/SurfaceHolder;

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/renderscript/Allocation;->setSurface(Landroid/view/Surface;)V

    iget-object v4, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    new-instance v5, Lcom/android/camera/ui/UIController$5;

    invoke-direct {v5, p0}, Lcom/android/camera/ui/UIController$5;-><init>(Lcom/android/camera/ui/UIController;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_75
    iget-object v4, p0, Lcom/android/camera/ui/UIController;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    new-instance v5, Lcom/android/camera/ui/UIController$MonoDummyListener;

    invoke-direct {v5, p0, v2}, Lcom/android/camera/ui/UIController$MonoDummyListener;-><init>(Lcom/android/camera/ui/UIController;Landroid/renderscript/ScriptIntrinsicYuvToRGB;)V

    invoke-virtual {v4, v5}, Landroid/renderscript/Allocation;->setOnBufferAvailableListener(Landroid/renderscript/Allocation$OnBufferAvailableListener;)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/camera/ui/UIController;->mIsMonoDummyAllocationEverUsed:Z

    :cond_82
    iget-object v4, p0, Lcom/android/camera/ui/UIController;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v4}, Landroid/renderscript/Allocation;->getSurface()Landroid/view/Surface;

    move-result-object v4

    return-object v4
.end method

.method public getMultiSnapNum()Lcom/android/camera/ui/RotateTextView;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mMultiSnapNum:Lcom/android/camera/ui/RotateTextView;

    return-object v0
.end method

.method public getObjectView()Lcom/android/camera/ui/ObjectView;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mObjectView:Lcom/android/camera/ui/ObjectView;

    return-object v0
.end method

.method public getOrientationIndicator()Lcom/android/camera/ui/OrientationIndicator;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mLyingOriFlag:Lcom/android/camera/ui/OrientationIndicator;

    return-object v0
.end method

.method public getPanoramaViewRoot()Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mPanoramaViewRoot:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getPauseRecordingButton()Lcom/android/camera/ui/V6PauseRecordingButton;
    .registers 2

    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getVideoPauseButton()Lcom/android/camera/ui/V6PauseRecordingButton;

    move-result-object v0

    return-object v0
.end method

.method public getPeakButton()Lcom/android/camera/ui/PeakButton;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/TopControlPanel;->getPeakButton()Lcom/android/camera/ui/PeakButton;

    move-result-object v0

    return-object v0
.end method

.method public getPopupParent()Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getPopupParentLayout()Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParentLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->updatePreferenceGroup()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_c

    :cond_8
    monitor-exit p0

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    return-object v0
.end method

.method public getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    return-object v0
.end method

.method public getPreviewPanel()Lcom/android/camera/ui/V6PreviewPanel;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    return-object v0
.end method

.method public getReviewCanceledView()Lcom/android/camera/ui/V6BottomAnimationImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlPanel;->getReviewCanceledView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    return-object v0
.end method

.method public getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlPanel;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    return-object v0
.end method

.method public getReviewImage()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mReviewImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getReviewImageView()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getReviewPlayView()Lcom/android/camera/ui/RotateImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewPlay:Lcom/android/camera/ui/RotateImageView;

    return-object v0
.end method

.method public getSettingButton()Lcom/android/camera/ui/V6SettingButton;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingPage:Lcom/android/camera/ui/V6SettingPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6SettingPage;->mSettingButton:Lcom/android/camera/ui/V6SettingButton;

    return-object v0
.end method

.method public getSettingPage()Lcom/android/camera/ui/V6SettingPage;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingPage:Lcom/android/camera/ui/V6SettingPage;

    return-object v0
.end method

.method public getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingsStatusBar:Lcom/android/camera/ui/V6SettingsStatusBar;

    return-object v0
.end method

.method public getShutterButton()Lcom/android/camera/ui/V6ShutterButton;
    .registers 2

    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    return-object v0
.end method

.method public getSkinBeautyButton()Lcom/android/camera/ui/SkinBeautyButton;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/TopControlPanel;->getSkinBeautyButton()Lcom/android/camera/ui/SkinBeautyButton;

    move-result-object v0

    return-object v0
.end method

.method public getSmartShutterButton()Lcom/android/camera/ui/V6SmartShutterButton;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSmartShutterButton:Lcom/android/camera/ui/V6SmartShutterButton;

    return-object v0
.end method

.method public getStereoButton()Lcom/android/camera/ui/StereoButton;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mStereoButton:Lcom/android/camera/ui/StereoButton;

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getSurfaceViewFrame()Lcom/android/camera/ui/V6SurfaceViewFrame;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceViewParent:Lcom/android/camera/ui/V6SurfaceViewFrame;

    return-object v0
.end method

.method public getSurfaceViewSize()Landroid/graphics/Point;
    .registers 4

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/android/camera/ui/UIController;->mSurfaceView:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/camera/ui/UIController;->mSurfaceView:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    invoke-virtual {v1}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/UIController;->mSurfaceView:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    invoke-virtual {v2}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    :cond_18
    return-object v0
.end method

.method public getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;
    .registers 2

    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;

    move-result-object v0

    return-object v0
.end method

.method public getTopControlPanel()Lcom/android/camera/ui/TopControlPanel;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    return-object v0
.end method

.method public getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mTopPopupParent:Lcom/android/camera/ui/TopPopupParent;

    return-object v0
.end method

.method public getVideoCaptureButton()Lcom/android/camera/ui/V6VideoCaptureButton;
    .registers 2

    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/BottomControlLowerPanel;->getVideoCaptureButton()Lcom/android/camera/ui/V6VideoCaptureButton;

    move-result-object v0

    return-object v0
.end method

.method public getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoRecordingTimeView:Lcom/android/camera/ui/V6RecordingTimeView;

    return-object v0
.end method

.method public getWarningMessageParent()Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mWarningMessageLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getWarningMessageView()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPage;->mWarningView:Landroid/widget/TextView;

    return-object v0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_15

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0, p2}, Lcom/android/camera/ui/UIController;->onMutexViewShow(I)V

    :goto_10
    return v2

    :cond_11
    invoke-direct {p0, p2}, Lcom/android/camera/ui/UIController;->onMutexViewHide(I)V

    goto :goto_10

    :cond_15
    sparse-switch p2, :sswitch_data_48

    goto :goto_10

    :sswitch_19
    invoke-direct {p0}, Lcom/android/camera/ui/UIController;->onShowModeSetting()V

    return v1

    :sswitch_1d
    invoke-direct {p0}, Lcom/android/camera/ui/UIController;->onDismissModeSetting()V

    return v1

    :sswitch_21
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->updateBackground()V

    return v1

    :sswitch_29
    invoke-direct {p0}, Lcom/android/camera/ui/UIController;->showModeSetting()V

    return v1

    :sswitch_2d
    invoke-direct {p0}, Lcom/android/camera/ui/UIController;->hideModeSetting()V

    return v1

    :sswitch_31
    const/4 v0, 0x2

    if-ne p1, v0, :cond_46

    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->removeTiltShiftMask()V

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/camera/module/Module;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_46
    return v2

    nop

    :sswitch_data_48
    .sparse-switch
        0x7f09000b -> :sswitch_19
        0x7f09000c -> :sswitch_1d
        0x7f09001d -> :sswitch_29
        0x7f090084 -> :sswitch_21
        0x7f090088 -> :sswitch_31
        0x7f090091 -> :sswitch_2d
    .end sparse-switch
.end method

.method public hideSurfaceView()V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceView:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->setVisibility(I)V

    return-void
.end method

.method public onBack()Z
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingPage:Lcom/android/camera/ui/V6SettingPage;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPage;->isShown()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    invoke-direct {p0}, Lcom/android/camera/ui/UIController;->hideModeSetting()V

    const/4 v0, 0x1

    return v0
.end method

.method public onCameraOpen()V
    .registers 2

    invoke-super {p0}, Lcom/android/camera/ui/V6ModuleUI;->onCameraOpen()V

    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupIndicator()V

    return-void
.end method

.method public onCreate()V
    .registers 3

    const v0, 0x7f090017

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/BottomControlPanel;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/BottomControlPanel;

    const v0, 0x7f090065

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/TopControlPanel;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/TopControlPanel;

    const v0, 0x7f09008e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SettingPage;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingPage:Lcom/android/camera/ui/V6SettingPage;

    const v0, 0x7f090078

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6PreviewPage;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPage:Lcom/android/camera/ui/V6PreviewPage;

    const v0, 0x7f09007e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6PreviewPanel;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const v0, 0x7f09009a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SmartShutterButton;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mSmartShutterButton:Lcom/android/camera/ui/V6SmartShutterButton;

    const v0, 0x7f090092

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SettingsStatusBar;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingsStatusBar:Lcom/android/camera/ui/V6SettingsStatusBar;

    const v0, 0x7f090071

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6CameraGLSurfaceView;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    const v0, 0x7f090073

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SurfaceViewFrame;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceViewParent:Lcom/android/camera/ui/V6SurfaceViewFrame;

    const v0, 0x7f09009b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6EdgeShutterView;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mEdgeShutterView:Lcom/android/camera/ui/V6EdgeShutterView;

    const v0, 0x7f090077

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mDebugInfoView:Landroid/widget/TextView;

    const v0, 0x7f090076

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mMainContent:Landroid/view/View;

    const v0, 0x7f09002c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mFrontCameraHintView:Landroid/view/View;

    invoke-virtual {p0, p0}, Lcom/android/camera/ui/UIController;->setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V

    invoke-direct {p0}, Lcom/android/camera/ui/UIController;->initSurfaces()V

    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->updatePreferenceGroup()V

    invoke-super {p0}, Lcom/android/camera/ui/V6ModuleUI;->onCreate()V

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->checkDeviceHasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a9

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mMainContent:Landroid/view/View;

    new-instance v1, Lcom/android/camera/ui/UIController$4;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/UIController$4;-><init>(Lcom/android/camera/ui/UIController;)V

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    :cond_a9
    return-void
.end method

.method public onPause()V
    .registers 2

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/android/camera/ui/V6ModuleUI;->onPause()V

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mLastMutexView:Lcom/android/camera/ui/MutexView;

    invoke-direct {p0}, Lcom/android/camera/ui/UIController;->destroyMonoAllocation()V

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mMonoDummyAllocation:Landroid/renderscript/Allocation;

    invoke-direct {p0}, Lcom/android/camera/ui/UIController;->releaseMonoSurface()V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/android/camera/ui/V6ModuleUI;->onResume()V

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setBlurEffect(Z)V

    return-void
.end method

.method public setPreviewSize(II)V
    .registers 4

    iput p1, p0, Lcom/android/camera/ui/UIController;->mPreviewWidth:I

    iput p2, p0, Lcom/android/camera/ui/UIController;->mPreviewHeight:I

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceView:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    invoke-virtual {v0}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceView:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    invoke-virtual {v0, p2, p1}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->setAspectRatio(II)V

    return-void
.end method

.method public showDebugInfo(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mDebugInfoView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mDebugInfoView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public showDebugView()V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mDebugInfoView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mDebugInfoView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method public showSurfaceView()V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSurfaceView:Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/camera2/AutoFitSurfaceView;->setVisibility(I)V

    return-void
.end method

.method public updatePreferenceGroup()V
    .registers 3

    new-instance v0, Lcom/android/camera/preferences/PreferenceInflater;

    iget-object v1, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v1

    if-eqz v1, :cond_19

    const v1, 0x7f06000a

    :goto_10
    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/preferences/PreferenceGroup;

    iput-object v1, p0, Lcom/android/camera/ui/UIController;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    return-void

    :cond_19
    const v1, 0x7f060001

    goto :goto_10
.end method

.method public updateThumbnailView(Lcom/android/camera/Thumbnail;)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getBottomControlLowerPanel()Lcom/android/camera/ui/BottomControlLowerPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/BottomControlLowerPanel;->updateThumbnailView(Lcom/android/camera/Thumbnail;)V

    return-void
.end method

.method public useProperView()V
    .registers 3

    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getSurfaceViewFrame()Lcom/android/camera/ui/V6SurfaceViewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SurfaceViewFrame;->initSurfaceView()V

    :goto_13
    return-void

    :cond_14
    invoke-virtual {p0}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setVisibility(I)V

    goto :goto_13
.end method
