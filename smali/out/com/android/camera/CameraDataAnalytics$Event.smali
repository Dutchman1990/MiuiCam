.class Lcom/android/camera/CameraDataAnalytics$Event;
.super Ljava/lang/Object;
.source "CameraDataAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraDataAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Event"
.end annotation


# instance fields
.field public key:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/CameraDataAnalytics;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraDataAnalytics;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/android/camera/CameraDataAnalytics$Event;->this$0:Lcom/android/camera/CameraDataAnalytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/camera/CameraDataAnalytics$Event;->key:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/CameraDataAnalytics$Event;->name:Ljava/lang/String;

    return-void
.end method
