.class public abstract Lcom/android/camera/ui/V6AbstractSettingPopup;
.super Landroid/widget/RelativeLayout;
.source "V6AbstractSettingPopup.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field protected mDisableKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field protected mPreference:Lcom/android/camera/preferences/IconListPreference;

.field protected mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .registers 3

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setVisibility(I)V

    return-void
.end method

.method public getAnimation(Z)Landroid/view/animation/Animation;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c
    return-object v1
.end method

.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V
    .registers 4

    iput-object p1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    iput-object p2, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iput-object p3, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->updateBackground()V

    return-void
.end method

.method protected notifyPopupVisibleChange(Z)V
    .registers 8

    const/4 v5, 0x0

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v2, 0x0

    move v3, v1

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    return-void
.end method

.method public abstract reloadPreference()V
.end method

.method public show(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setVisibility(I)V

    return-void
.end method

.method public updateBackground()V
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_19

    const v0, 0x7f0c0005

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setBackgroundResource(I)V

    :goto_18
    return-void

    :cond_19
    const v0, 0x7f0c0004

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setBackgroundResource(I)V

    goto :goto_18
.end method
