.class Lcom/android/camera/camera_adapter/camera2/SettingsManager$SettingState;
.super Ljava/lang/Object;
.source "SettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camera_adapter/camera2/SettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SettingState"
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field values:Lcom/android/camera/camera_adapter/camera2/SettingsManager$Values;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/camera/camera_adapter/camera2/SettingsManager$Values;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager$SettingState;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager$SettingState;->values:Lcom/android/camera/camera_adapter/camera2/SettingsManager$Values;

    return-void
.end method
