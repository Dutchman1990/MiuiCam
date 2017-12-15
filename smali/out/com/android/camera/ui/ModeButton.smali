.class public Lcom/android/camera/ui/ModeButton;
.super Lcom/android/camera/ui/V6TopTextView;
.source "ModeButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6TopTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected notifyClickToDispatcher()V
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/camera/ui/ModeButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-nez v0, :cond_6

    return-void

    :cond_6
    const-string/jumbo v0, "pref_camera_mode_settings_key"

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->cancelRemind(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/ui/ModeButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x0

    const v2, 0x7f09001d

    const/4 v3, 0x3

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public onCameraOpen()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeButton;->updateVisible()V

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeButton;->updateRemind()V

    return-void
.end method

.method public updateRemind()V
    .registers 13

    const/4 v11, 0x0

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/android/camera/ui/ModeButton;->mContext:Landroid/content/Context;

    check-cast v8, Lcom/android/camera/ActivityBase;

    invoke-virtual {v8}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/camera/module/Module;->getSupportedSettingKeys()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_11

    return-void

    :cond_11
    const/4 v4, 0x0

    sget-object v8, Lcom/android/camera/CameraSettings;->sRemindMode:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_18
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->isNeedRemind(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    const-string/jumbo v8, "pref_camera_mode_settings_key"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_39

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    :cond_39
    const/4 v4, 0x1

    :cond_3a
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08003e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-eqz v4, :cond_6d

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08003f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0200c9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v10, v10, v0, v10}, Lcom/android/camera/ui/ModeButton;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v7}, Lcom/android/camera/ui/ModeButton;->setCompoundDrawablePadding(I)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v8, v7

    add-int/2addr v8, v3

    invoke-virtual {p0, v8, v11, v3, v11}, Lcom/android/camera/ui/ModeButton;->setPaddingRelative(IIII)V

    :cond_6c
    :goto_6c
    return-void

    :cond_6d
    invoke-super {p0}, Lcom/android/camera/ui/V6TopTextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v8, 0x2

    aget-object v8, v1, v8

    if-eqz v8, :cond_6c

    invoke-virtual {p0, v10, v10, v10, v10}, Lcom/android/camera/ui/ModeButton;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3, v11, v3, v11}, Lcom/android/camera/ui/ModeButton;->setPaddingRelative(IIII)V

    goto :goto_6c
.end method

.method public updateVisible()V
    .registers 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/camera/ui/ModeButton;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getSupportedSettingKeys()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1b

    :cond_15
    const/16 v1, 0x8

    :goto_17
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ModeButton;->setVisibility(I)V

    return-void

    :cond_1b
    move v1, v2

    goto :goto_17
.end method
