.class public Lcom/android/camera/ui/SettingPopupFactory;
.super Ljava/lang/Object;
.source "SettingPopupFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;
    .registers 6

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    const-string/jumbo v2, "pref_qc_camera_iso_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const v0, 0x7f040013

    :goto_16
    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/V6AbstractSettingPopup;

    return-object v2

    :cond_1e
    const-string/jumbo v2, "pref_qc_camera_manual_exposure_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const v0, 0x7f040011

    goto :goto_16

    :cond_2b
    const-string/jumbo v2, "pref_delay_capture_mode"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    const v0, 0x7f040029

    goto :goto_16

    :cond_38
    const-string/jumbo v2, "pref_skin_beautify_skin_color_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    const-string/jumbo v2, "pref_skin_beautify_slim_face_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    const-string/jumbo v2, "pref_skin_beautify_skin_smooth_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    const-string/jumbo v2, "pref_skin_beautify_enlarge_eye_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    :cond_5c
    const v0, 0x7f04002c

    goto :goto_16

    :cond_60
    const-string/jumbo v2, "pref_camera_whitebalance_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    const v0, 0x7f04000d

    goto :goto_16

    :cond_6d
    const-string/jumbo v2, "pref_focus_position_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    const v0, 0x7f040012

    goto :goto_16

    :cond_7a
    const-string/jumbo v2, "pref_camera_manual_mode_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8c

    const-string/jumbo v2, "pref_camera_face_beauty_advanced_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    :cond_8c
    const v0, 0x7f04001e

    goto :goto_16

    :cond_90
    const-string/jumbo v2, "pref_qc_camera_exposuretime_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    const v0, 0x7f040011

    goto/16 :goto_16

    :cond_9e
    const-string/jumbo v2, "pref_camera_scenemode_setting_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ac

    const v0, 0x7f04000c

    goto/16 :goto_16

    :cond_ac
    const-string/jumbo v2, "pref_camera_stereo_mode_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ba

    const v0, 0x7f04001c

    goto/16 :goto_16

    :cond_ba
    const-string/jumbo v2, "pref_audio_focus_mode_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_de

    const-string/jumbo v2, "pref_delay_capture_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_de

    const-string/jumbo v2, "pref_camera_tilt_shift_mode"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_de

    const-string/jumbo v2, "pref_camera_face_beauty_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e3

    :cond_de
    const v0, 0x7f04000f

    goto/16 :goto_16

    :cond_e3
    const-string/jumbo v2, "pref_camera_flashmode_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_110

    const-string/jumbo v2, "pref_camera_video_flashmode_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_110

    const-string/jumbo v2, "pref_camera_hdr_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_110

    const-string/jumbo v2, "pref_video_hdr_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_110

    const-string/jumbo v2, "pref_camera_face_beauty_switch_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_115

    :cond_110
    const v0, 0x7f04000a

    goto/16 :goto_16

    :cond_115
    const-string/jumbo v2, "pref_camera_shader_coloreffect_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_123

    const v0, 0x7f040006

    goto/16 :goto_16

    :cond_123
    const-string/jumbo v2, "pref_camera_face_beauty_mode_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_131

    const v0, 0x7f040029

    goto/16 :goto_16

    :cond_131
    const/4 v2, 0x0

    return-object v2
.end method
