.class public Lcom/android/camera/ui/EffectButton;
.super Lcom/android/camera/ui/AnimationImageView;
.source "EffectButton.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispacher;
.implements Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mDispatching:Z

.field private mOverrideValue:Ljava/lang/String;

.field private mPopup:Lcom/android/camera/ui/EffectPopup;

.field private mPreference:Lcom/android/camera/preferences/IconListPreference;

.field private mSavedValue:Ljava/lang/String;

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "EffectButton"

    sput-object v0, Lcom/android/camera/ui/EffectButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/EffectButton;->mVisible:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/EffectButton;->mDispatching:Z

    invoke-static {p1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    return-void
.end method

.method private doTapButton()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->isOverridden()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_21

    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->triggerPopup()V

    :goto_20
    return-void

    :cond_21
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->toggle()V

    goto :goto_20
.end method

.method private findCurrentIndex()I
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_8

    const-string/jumbo v0, ""

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method private getPreferenceSize()I
    .registers 3

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_a

    array-length v1, v0

    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method private getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mOverrideValue:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method private isPopupShown()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/EffectPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private notifyClickToDispatcher()V
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_a

    :cond_9
    return-void

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/EffectButton;->mDispatching:Z

    iput-object v1, p0, Lcom/android/camera/ui/EffectButton;->mSavedValue:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->getKey()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x6

    const v2, 0x7f09008e

    const/4 v3, 0x2

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/EffectButton;->mDispatching:Z

    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->refreshIcon()V

    return-void
.end method

.method private refreshIcon()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->findCurrentIndex()I

    move-result v0

    if-nez v0, :cond_12

    const v0, 0x7f02005a

    :goto_e
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/EffectButton;->setImageResource(I)V

    return-void

    :cond_12
    const v0, 0x7f020059

    goto :goto_e
.end method

.method private toggle()V
    .registers 4

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v1, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->getPreferenceSize()I

    move-result v1

    if-lt v0, v1, :cond_1a

    const/4 v0, 0x0

    :cond_1a
    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->reloadPreference()V

    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->notifyClickToDispatcher()V

    return-void
.end method

.method private triggerPopup()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->isOverridden()Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_44

    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->isPopupShown()Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mOverrideValue:Ljava/lang/String;

    if-nez v0, :cond_45

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/EffectButton;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->showPopup()V

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/android/camera/ui/V6PreviewPage;->simplifyPopup(ZZ)V

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    :cond_44
    :goto_44
    return-void

    :cond_45
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->dismissPopup()Z

    goto :goto_44
.end method


# virtual methods
.method public dismissPopup()Z
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/EffectButton;->setPressed(Z)V

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/EffectPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_33

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6PreviewPage;->dismissPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/EffectPopup;->stopEffectRender()V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/PopupManager;->notifyDismissPopup()V

    :cond_33
    return v0
.end method

.method public dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 7

    instance-of v0, p5, Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    :goto_c
    const/4 v0, 0x1

    return v0

    :cond_e
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->notifyClickToDispatcher()V

    goto :goto_c
.end method

.method public enableControls(Z)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/EffectButton;->setEnabled(Z)V

    if-nez p1, :cond_f

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/EffectButton;->setPressed(Z)V

    :cond_f
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->refreshIcon()V

    return-void
.end method

.method protected initializePopup()V
    .registers 5

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/EffectPopup;->reloadPreference()V

    return-void

    :cond_16
    sget-object v1, Lcom/android/camera/ui/EffectButton;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no need to initialize popup, key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mPreference="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mPopup="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4e
    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPopupParent()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/camera/ui/SettingPopupFactory;->createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/EffectPopup;

    iput-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    iget-object v2, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v1, v3, p0}, Lcom/android/camera/ui/EffectPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public initializeXml()V
    .registers 4

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v1, :cond_4e

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v1

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_shader_coloreffect_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/preferences/IconListPreference;

    iput-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getEntries()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getEntryValues()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getImageIds()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->setIconIds([I)V

    :cond_4e
    return-void
.end method

.method public isOverridden()Z
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onCameraOpen()V
    .registers 2

    invoke-super {p0}, Lcom/android/camera/ui/AnimationImageView;->onCameraOpen()V

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/EffectPopup;->updateBackground()V

    :cond_c
    return-void
.end method

.method public onCreate()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/camera/ui/AnimationImageView;->onCreate()V

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/EffectButton;->mVisible:Z

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->initializeXml()V

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/EffectButton;->setVisibility(I)V

    return-void

    :cond_1a
    iput-boolean v1, p0, Lcom/android/camera/ui/EffectButton;->mVisible:Z

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/EffectButton;->setVisibility(I)V

    return-void
.end method

.method public onOtherPopupShowed(I)Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->dismissPopup()Z

    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->dismissPopup()Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_9

    return v4

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->isOverridden()Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_15
    const/4 v1, 0x3

    if-ne v0, v1, :cond_20

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->dismissPopup()Z

    return v3

    :cond_1c
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/EffectButton;->setPressed(Z)V

    return v3

    :cond_20
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_69

    if-ne v0, v3, :cond_69

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {v1, v2, p0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->isPopupShown()Z

    move-result v1

    if-nez v1, :cond_47

    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    :cond_47
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->doTapButton()V

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/EffectButton;->playSoundEffect(I)V

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    :cond_56
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->isPopupShown()Z

    move-result v1

    if-nez v1, :cond_5f

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/EffectButton;->setPressed(Z)V

    :cond_5f
    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    return v3

    :cond_69
    return v3
.end method

.method public recoverIfNeeded()V
    .registers 1

    return-void
.end method

.method public refreshValue()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->isPopupShown()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/EffectPopup;->reloadPreference()V

    :cond_f
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->refreshIcon()V

    :cond_12
    return-void
.end method

.method public reloadPreference()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->refreshValue()V

    :cond_7
    return-void
.end method

.method public requestEffectRender()V
    .registers 2

    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->isPopupShown()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/EffectPopup;->requestEffectRender()V

    :cond_b
    return-void
.end method

.method public resetSettings()V
    .registers 3

    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/EffectButton;->mSavedValue:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->dismissPopup()Z

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->refreshValue()V

    return-void
.end method

.method public restoreSettings()V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mSavedValue:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mSavedValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->dismissPopup()Z

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->refreshValue()V

    :cond_11
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->isOverridden()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p1, 0x0

    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->isEnabled()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_11

    invoke-super {p0, p1}, Lcom/android/camera/ui/AnimationImageView;->setEnabled(Z)V

    :cond_11
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/EffectPopup;->setEnabled(Z)V

    :cond_1a
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/camera/ui/EffectButton;->mVisible:Z

    if-nez v0, :cond_6

    const/16 p1, 0x8

    :cond_6
    invoke-super {p0, p1}, Lcom/android/camera/ui/AnimationImageView;->setVisibility(I)V

    return-void
.end method

.method public showPopup()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->initializePopup()V

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/EffectPopup;->setOrientation(IZ)V

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/EffectPopup;->startEffectRender()V

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPage;->showPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V

    :cond_23
    return-void
.end method
