.class public Lcom/android/camera/ui/TopPopupParent;
.super Landroid/widget/FrameLayout;
.source "TopPopupParent.java"

# interfaces
.implements Lcom/android/camera/ui/V6FunctionUI;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private dismissPopupExcept(Landroid/view/View;Z)V
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/ui/TopPopupParent;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_21

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TopPopupParent;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eq p1, v1, :cond_1e

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1e

    instance-of v2, v1, Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v2, :cond_1e

    move-object v2, v1

    check-cast v2, Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {p0, v2, p2}, Lcom/android/camera/ui/TopPopupParent;->dismissPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)V

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_21
    return-void
.end method


# virtual methods
.method public dismissAllPopup(Z)V
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/ui/TopPopupParent;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TopPopupParent;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v2, :cond_1c

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1c

    move-object v2, v1

    check-cast v2, Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {p0, v2, p1}, Lcom/android/camera/ui/TopPopupParent;->dismissPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)V

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1f
    return-void
.end method

.method public dismissAllPopupExceptSkinBeauty(Z)V
    .registers 7

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/ui/TopPopupParent;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TopPopupParent;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v3, :cond_29

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_29

    move-object v1, v2

    check-cast v1, Lcom/android/camera/ui/V6AbstractSettingPopup;

    const-string/jumbo v3, "pref_camera_face_beauty_switch_key"

    invoke-virtual {v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/ui/TopPopupParent;->dismissPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)V

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2c
    return-void
.end method

.method public dismissPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)V
    .registers 3

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->dismiss(Z)V

    return-void
.end method

.method public enableControls(Z)V
    .registers 2

    return-void
.end method

.method public onCameraOpen()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TopPopupParent;->dismissAllPopup(Z)V

    return-void
.end method

.method public onCreate()V
    .registers 1

    return-void
.end method

.method public onPause()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TopPopupParent;->dismissAllPopup(Z)V

    return-void
.end method

.method public onPreviewPageShown(Z)V
    .registers 3

    if-nez p1, :cond_6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/TopPopupParent;->dismissAllPopup(Z)V

    :cond_6
    return-void
.end method

.method public onResume()V
    .registers 1

    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .registers 2

    return-void
.end method

.method public showPopup(Lcom/android/camera/ui/V6AbstractSettingPopup;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/TopPopupParent;->dismissPopupExcept(Landroid/view/View;Z)V

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->show(Z)V

    return-void
.end method
