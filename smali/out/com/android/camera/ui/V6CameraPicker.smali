.class public Lcom/android/camera/ui/V6CameraPicker;
.super Lcom/android/camera/ui/AnimationImageView;
.source "V6CameraPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCameraFacing:I

.field private mEnabled:Z

.field private mInitEntryValues:Z

.field private mPreference:Lcom/android/camera/preferences/ListPreference;

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/camera/ui/V6CameraPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/V6CameraPicker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/V6CameraPicker;->mVisible:Z

    new-instance v0, Lcom/android/camera/preferences/PreferenceInflater;

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraPicker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060006

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/preferences/ListPreference;

    iput-object v1, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    invoke-virtual {p0, p0}, Lcom/android/camera/ui/V6CameraPicker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initEntryValues()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, -0x1

    iget-boolean v1, p0, Lcom/android/camera/ui/V6CameraPicker;->mInitEntryValues:Z

    if-nez v1, :cond_62

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v1

    if-eq v1, v3, :cond_2e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2e
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    if-eq v1, v3, :cond_4f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_4f
    iget-object v2, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Lcom/android/camera/preferences/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iput-boolean v4, p0, Lcom/android/camera/ui/V6CameraPicker;->mInitEntryValues:Z

    :cond_62
    return-void
.end method

.method private isNeedShow()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    array-length v2, v2

    if-le v2, v0, :cond_18

    :goto_17
    return v0

    :cond_18
    move v0, v1

    goto :goto_17

    :cond_1a
    move v0, v1

    goto :goto_17
.end method

.method private reloadPreference()V
    .registers 4

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/camera/ui/V6CameraPicker;->isNeedShow()Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iput v2, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    :goto_1e
    return-void

    :cond_1f
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    goto :goto_1e
.end method

.method private updateVisible()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/camera/ui/V6CameraPicker;->isNeedShow()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mVisible:Z

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6CameraPicker;->setVisibility(I)V

    :goto_d
    return-void

    :cond_e
    iput-boolean v1, p0, Lcom/android/camera/ui/V6CameraPicker;->mVisible:Z

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6CameraPicker;->setVisibility(I)V

    goto :goto_d
.end method


# virtual methods
.method public enableControls(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6CameraPicker;->setEnabled(Z)V

    iput-boolean p1, p0, Lcom/android/camera/ui/V6CameraPicker;->mEnabled:Z

    return-void
.end method

.method public onCameraOpen()V
    .registers 1

    invoke-super {p0}, Lcom/android/camera/ui/AnimationImageView;->onCameraOpen()V

    invoke-direct {p0}, Lcom/android/camera/ui/V6CameraPicker;->initEntryValues()V

    invoke-direct {p0}, Lcom/android/camera/ui/V6CameraPicker;->updateVisible()V

    invoke-direct {p0}, Lcom/android/camera/ui/V6CameraPicker;->reloadPreference()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mVisible:Z

    if-eqz v0, :cond_47

    iget-boolean v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mEnabled:Z

    if-eqz v0, :cond_47

    sget-object v0, Lcom/android/camera/ui/V6CameraPicker;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "click switch camera button"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    if-nez v0, :cond_48

    const/4 v6, 0x1

    :goto_16
    iget v7, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    iput v6, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    iget-object v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    iget-object v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    iget-object v2, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v2, 0x7f09001e

    const/4 v3, 0x2

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    iput v7, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    :cond_46
    return-void

    :cond_47
    return-void

    :cond_48
    const/4 v6, 0x0

    goto :goto_16
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/android/camera/ui/AnimationImageView;->onResume()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6CameraPicker;->setVisibility(I)V

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mVisible:Z

    if-nez v0, :cond_6

    const/16 p1, 0x8

    :cond_6
    invoke-super {p0, p1}, Lcom/android/camera/ui/AnimationImageView;->setVisibility(I)V

    return-void
.end method
