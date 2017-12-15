.class Lcom/android/camera/CameraPreferenceActivity$1;
.super Ljava/lang/Object;
.source "CameraPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraPreferenceActivity;->bringUpDoubleConfirmDlg(Lcom/android/camera/ui/PreviewListPreference;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraPreferenceActivity;

.field final synthetic val$preference:Lcom/android/camera/ui/PreviewListPreference;

.field final synthetic val$snapItem:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraPreferenceActivity;Lcom/android/camera/ui/PreviewListPreference;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/android/camera/CameraPreferenceActivity$1;->this$0:Lcom/android/camera/CameraPreferenceActivity;

    iput-object p2, p0, Lcom/android/camera/CameraPreferenceActivity$1;->val$preference:Lcom/android/camera/ui/PreviewListPreference;

    iput-object p3, p0, Lcom/android/camera/CameraPreferenceActivity$1;->val$snapItem:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_23

    iget-object v0, p0, Lcom/android/camera/CameraPreferenceActivity$1;->this$0:Lcom/android/camera/CameraPreferenceActivity;

    invoke-static {v0, v1}, Lcom/android/camera/CameraPreferenceActivity;->-set0(Lcom/android/camera/CameraPreferenceActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/camera/CameraPreferenceActivity$1;->val$preference:Lcom/android/camera/ui/PreviewListPreference;

    iget-object v1, p0, Lcom/android/camera/CameraPreferenceActivity$1;->val$snapItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraPreferenceActivity$1;->this$0:Lcom/android/camera/CameraPreferenceActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "key_long_press_volume_down"

    iget-object v2, p0, Lcom/android/camera/CameraPreferenceActivity$1;->val$snapItem:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getMiuiSettingsKeyForStreetSnap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_22
    :goto_22
    return-void

    :cond_23
    const/4 v0, -0x2

    if-ne p2, v0, :cond_22

    iget-object v0, p0, Lcom/android/camera/CameraPreferenceActivity$1;->this$0:Lcom/android/camera/CameraPreferenceActivity;

    invoke-static {v0}, Lcom/android/camera/CameraPreferenceActivity;->-get0(Lcom/android/camera/CameraPreferenceActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/camera/CameraPreferenceActivity$1;->this$0:Lcom/android/camera/CameraPreferenceActivity;

    invoke-static {v0, v1}, Lcom/android/camera/CameraPreferenceActivity;->-set0(Lcom/android/camera/CameraPreferenceActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_22
.end method
