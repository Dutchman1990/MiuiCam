.class Lcom/android/camera/camera_adapter/camera2/SettingsManager$Values;
.super Ljava/lang/Object;
.source "SettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camera_adapter/camera2/SettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Values"
.end annotation


# instance fields
.field overriddenValue:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager$Values;->value:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/camera/camera_adapter/camera2/SettingsManager$Values;->overriddenValue:Ljava/lang/String;

    return-void
.end method
