.class public Lcom/android/camera/ui/V6ModulePicker;
.super Lcom/android/camera/ui/V6BottomAnimationImageView;
.source "V6ModulePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sCurrentModule:I


# instance fields
.field private mEnabled:Z

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/V6ModulePicker;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/android/camera/ui/V6ModulePicker;->sCurrentModule:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6BottomAnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p0}, Lcom/android/camera/ui/V6ModulePicker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static getCurrentModule()I
    .registers 1

    sget v0, Lcom/android/camera/ui/V6ModulePicker;->sCurrentModule:I

    return v0
.end method

.method private initModulePickView()V
    .registers 3

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_1b

    const v0, 0x7f02013c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModulePicker;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/V6ModulePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0133

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModulePicker;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1a
    return-void

    :cond_1b
    const v0, 0x7f020034

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModulePicker;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/V6ModulePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModulePicker;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1a
.end method

.method public static isCameraModule()Z
    .registers 2

    const/4 v0, 0x0

    sget v1, Lcom/android/camera/ui/V6ModulePicker;->sCurrentModule:I

    if-nez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public static isDualModule()Z
    .registers 2

    sget v0, Lcom/android/camera/ui/V6ModulePicker;->sCurrentModule:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isPanoramaModule()Z
    .registers 2

    sget v0, Lcom/android/camera/ui/V6ModulePicker;->sCurrentModule:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isVideoModule()Z
    .registers 2

    const/4 v0, 0x1

    sget v1, Lcom/android/camera/ui/V6ModulePicker;->sCurrentModule:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static setCurrentModule(I)V
    .registers 1

    sput p0, Lcom/android/camera/ui/V6ModulePicker;->sCurrentModule:I

    return-void
.end method


# virtual methods
.method public enableControls(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/camera/ui/V6ModulePicker;->mEnabled:Z

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6ModulePicker;->setEnabled(Z)V

    return-void
.end method

.method public onCameraOpen()V
    .registers 2

    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->onCameraOpen()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModulePicker;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 11

    const/4 v5, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/android/camera/ui/V6ModulePicker;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "ModulePicker onclick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/camera/ui/V6ModulePicker;->sCurrentModule:I

    if-ne v0, v2, :cond_62

    const/4 v7, 0x0

    :goto_f
    invoke-static {}, Lcom/android/camera/Device;->isMonoSupported()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {}, Lcom/android/camera/Device;->isRAWSupported()Z

    move-result v0

    if-eqz v0, :cond_40

    :cond_1b
    sget v0, Lcom/android/camera/ui/V6ModulePicker;->sCurrentModule:I

    if-ne v0, v2, :cond_40

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v6

    invoke-static {v6}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v8

    const-string/jumbo v0, "pref_camera_mono_mode_key"

    invoke-static {v8, v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Lcom/android/camera/preferences/CameraSettingPreferences;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string/jumbo v0, "pref_camera_raw_mode_key"

    invoke-static {v8, v0}, Lcom/android/camera/CameraSettings;->isSwitchOn(Lcom/android/camera/preferences/CameraSettingPreferences;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    :cond_3f
    const/4 v7, 0x3

    :cond_40
    :goto_40
    iget-object v0, p0, Lcom/android/camera/ui/V6ModulePicker;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_56

    iget-boolean v0, p0, Lcom/android/camera/ui/V6ModulePicker;->mEnabled:Z

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/android/camera/ui/V6ModulePicker;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v1, 0x0

    const v2, 0x7f090015

    const/4 v3, 0x2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_56
    invoke-virtual {p0}, Lcom/android/camera/ui/V6ModulePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    return-void

    :cond_62
    const/4 v7, 0x1

    goto :goto_f

    :cond_64
    const/4 v7, 0x0

    goto :goto_40
.end method

.method public onCreate()V
    .registers 4

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->onCreate()V

    iget-object v0, p0, Lcom/android/camera/ui/V6ModulePicker;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isImageCaptureIntent()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isVideoCaptureIntent()Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_14
    :goto_14
    iput-boolean v1, p0, Lcom/android/camera/ui/V6ModulePicker;->mVisible:Z

    iget-boolean v1, p0, Lcom/android/camera/ui/V6ModulePicker;->mVisible:Z

    if-eqz v1, :cond_1d

    invoke-direct {p0}, Lcom/android/camera/ui/V6ModulePicker;->initModulePickView()V

    :cond_1d
    return-void

    :cond_1e
    const/4 v1, 0x1

    goto :goto_14
.end method

.method public onResume()V
    .registers 4

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->onResume()V

    iget-object v0, p0, Lcom/android/camera/ui/V6ModulePicker;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isImageCaptureIntent()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isVideoCaptureIntent()Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_14
    :goto_14
    iput-boolean v1, p0, Lcom/android/camera/ui/V6ModulePicker;->mVisible:Z

    return-void

    :cond_17
    const/4 v1, 0x1

    goto :goto_14
.end method

.method public setVisibility(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/camera/ui/V6ModulePicker;->mVisible:Z

    if-nez v0, :cond_6

    const/16 p1, 0x8

    :cond_6
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setVisibility(I)V

    return-void
.end method
