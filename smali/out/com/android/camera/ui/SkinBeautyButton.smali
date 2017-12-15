.class public Lcom/android/camera/ui/SkinBeautyButton;
.super Lcom/android/camera/ui/AnimationImageView;
.source "SkinBeautyButton.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispacher;
.implements Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/SkinBeautyButton$1;,
        Lcom/android/camera/ui/SkinBeautyButton$2;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLastSubPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field private mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field private mPreference:Lcom/android/camera/preferences/IconListPreference;

.field private mSubDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mSubPopups:[Lcom/android/camera/ui/V6AbstractSettingPopup;

.field private mVisible:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/camera/ui/SkinBeautyButton;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->notifyClickToDispatcher()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/camera/ui/SkinBeautyButton;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->sendHideMessage()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mVisible:Z

    new-instance v0, Lcom/android/camera/ui/SkinBeautyButton$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/SkinBeautyButton$1;-><init>(Lcom/android/camera/ui/SkinBeautyButton;)V

    iput-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/ui/SkinBeautyButton$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/SkinBeautyButton$2;-><init>(Lcom/android/camera/ui/SkinBeautyButton;)V

    iput-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mSubDispacher:Lcom/android/camera/ui/MessageDispacher;

    invoke-virtual {p0, p0}, Lcom/android/camera/ui/SkinBeautyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private findCurrentIndex()I
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private findCurrentSubPopup()Lcom/android/camera/ui/V6AbstractSettingPopup;
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mSubPopups:[Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->findCurrentIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private getKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_8

    const-string/jumbo v0, ""

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method private isPopupShown()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private notifyClickToDispatcher()V
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x0

    const v2, 0x7f090068

    const/4 v3, 0x2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method

.method private sendHideMessage()V
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissSubPopup()Z

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_37

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/ui/TopPopupParent;->dismissPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)V

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/SkinBeautyButton;->setActivated(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/PopupManager;->notifyDismissPopup()V

    :cond_37
    return v0
.end method

.method protected dismissSubPopup()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mLastSubPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mLastSubPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/SkinBeautyButton;->mLastSubPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6PreviewPage;->dismissPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->findCurrentSubPopup()Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v1

    if-nez v1, :cond_30

    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/PopupManager;->notifyDismissPopup()V

    :cond_30
    return v0
.end method

.method public dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 13

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_94

    :cond_4
    :goto_4
    :pswitch_4
    const/4 v0, 0x1

    return v0

    :pswitch_6
    instance-of v0, p5, Ljava/lang/Boolean;

    if-eqz v0, :cond_12

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_12
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->notifyClickToDispatcher()V

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->sendHideMessage()V

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getIconIds()[I

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->findCurrentIndex()I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SkinBeautyButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_face_beauty_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_face_beauty_advanced_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    :cond_45
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->showSubPopup()V

    goto :goto_4

    :cond_49
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissSubPopup()Z

    goto :goto_4

    :pswitch_4d
    instance-of v0, p4, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v1, 0x4

    const v2, 0x7f090068

    const/4 v3, 0x3

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_69
    if-eqz v6, :cond_8e

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_face_beauty_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_face_beauty_advanced_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_89
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->showSubPopup()V

    goto/16 :goto_4

    :cond_8e
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissSubPopup()Z

    goto/16 :goto_4

    nop

    :pswitch_data_94
    .packed-switch 0x3
        :pswitch_4d
        :pswitch_4
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method protected initializePopup()V
    .registers 5

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_c
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    return-void

    :cond_16
    const-string/jumbo v1, "SkinBeautyButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no need to initialize popup, key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mPreference="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mPopup="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4f
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/camera/ui/SettingPopupFactory;->createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget-object v2, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v1, v3, p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected initializeSubPopup()V
    .registers 6

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->findCurrentSubPopup()Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    return-void

    :cond_a
    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getPopupParent()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/android/camera/ui/SettingPopupFactory;->createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v3

    check-cast v3, Lcom/android/camera/preferences/IconListPreference;

    iget-object v4, p0, Lcom/android/camera/ui/SkinBeautyButton;->mSubDispacher:Lcom/android/camera/ui/MessageDispacher;

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/camera/ui/SkinBeautyButton;->mSubPopups:[Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->findCurrentIndex()I

    move-result v4

    aput-object v2, v3, v4

    return-void
.end method

.method public onCameraOpen()V
    .registers 5

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/camera/ui/AnimationImageView;->onCameraOpen()V

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v2

    if-eqz v2, :cond_22

    :cond_1a
    iput-boolean v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mVisible:Z

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/SkinBeautyButton;->setVisibility(I)V

    return-void

    :cond_22
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/ui/SkinBeautyButton;->mVisible:Z

    iget-object v2, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getIconIds()[I

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->findCurrentIndex()I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/SkinBeautyButton;->setImageResource(I)V

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/SkinBeautyButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    iget-object v2, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->updateBackground()V

    :cond_49
    iget-object v2, p0, Lcom/android/camera/ui/SkinBeautyButton;->mSubPopups:[Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v2, :cond_5c

    iget-object v2, p0, Lcom/android/camera/ui/SkinBeautyButton;->mSubPopups:[Lcom/android/camera/ui/V6AbstractSettingPopup;

    array-length v3, v2

    :goto_50
    if-ge v1, v3, :cond_5c

    aget-object v0, v2, v1

    if-eqz v0, :cond_59

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->updateBackground()V

    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    :cond_5c
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->isPopupShown()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_face_beauty_mode_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    :cond_10
    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->isPopupShown()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->showPopup()V

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->sendHideMessage()V

    :goto_1c
    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    return-void

    :cond_26
    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissPopup()Z

    goto :goto_1c
.end method

.method protected onFinishInflate()V
    .registers 3

    invoke-super {p0}, Lcom/android/camera/ui/AnimationImageView;->onFinishInflate()V

    new-instance v0, Lcom/android/camera/preferences/PreferenceInflater;

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/preferences/IconListPreference;

    iput-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Lcom/android/camera/ui/V6AbstractSettingPopup;

    iput-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mSubPopups:[Lcom/android/camera/ui/V6AbstractSettingPopup;

    return-void
.end method

.method public onOtherPopupShowed(I)Z
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissPopup()Z

    move-result v0

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public recoverIfNeeded()V
    .registers 1

    return-void
.end method

.method public setOrientation(IZ)V
    .registers 3

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mVisible:Z

    if-nez v0, :cond_6

    const/16 p1, 0x8

    :cond_6
    invoke-super {p0, p1}, Lcom/android/camera/ui/AnimationImageView;->setVisibility(I)V

    return-void
.end method

.method public showPopup()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->initializePopup()V

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    iget-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getTopPopupParent()Lcom/android/camera/ui/TopPopupParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/TopPopupParent;->showPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)V

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/SkinBeautyButton;->setActivated(Z)V

    :cond_22
    return-void
.end method

.method protected showSubPopup()V
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->initializeSubPopup()V

    invoke-direct {p0}, Lcom/android/camera/ui/SkinBeautyButton;->findCurrentSubPopup()Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {v0, v2, v2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/V6PreviewPage;->showPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;)V

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lcom/android/camera/ui/V6PreviewPage;->simplifyPopup(ZZ)V

    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    :cond_37
    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mLastSubPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/camera/ui/SkinBeautyButton;->mLastSubPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eq v1, v0, :cond_42

    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissSubPopup()Z

    :cond_42
    iput-object v0, p0, Lcom/android/camera/ui/SkinBeautyButton;->mLastSubPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    return-void
.end method
