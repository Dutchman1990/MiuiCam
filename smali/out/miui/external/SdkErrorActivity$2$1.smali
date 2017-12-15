.class Lmiui/external/SdkErrorActivity$2$1;
.super Landroid/os/AsyncTask;
.source "SdkErrorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/external/SdkErrorActivity$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic x:Lmiui/external/SdkErrorActivity$2;

.field final synthetic y:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lmiui/external/SdkErrorActivity$2;Landroid/app/Dialog;)V
    .registers 3

    iput-object p1, p0, Lmiui/external/SdkErrorActivity$2$1;->x:Lmiui/external/SdkErrorActivity$2;

    iput-object p2, p0, Lmiui/external/SdkErrorActivity$2$1;->y:Landroid/app/Dialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs V([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 4

    const-wide/16 v0, 0x1388

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_12

    :goto_5
    iget-object v0, p0, Lmiui/external/SdkErrorActivity$2$1;->x:Lmiui/external/SdkErrorActivity$2;

    iget-object v0, v0, Lmiui/external/SdkErrorActivity$2;->w:Lmiui/external/SdkErrorActivity;

    invoke-static {v0}, Lmiui/external/SdkErrorActivity;->R(Lmiui/external/SdkErrorActivity;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5
.end method

.method protected W(Ljava/lang/Boolean;)V
    .registers 5

    iget-object v0, p0, Lmiui/external/SdkErrorActivity$2$1;->y:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lmiui/external/SdkErrorActivity$2$1;->x:Lmiui/external/SdkErrorActivity$2;

    iget-object v0, v0, Lmiui/external/SdkErrorActivity$2;->w:Lmiui/external/SdkErrorActivity;

    invoke-static {v0}, Lmiui/external/SdkErrorActivity;->Q(Lmiui/external/SdkErrorActivity;)Landroid/app/Dialog;

    move-result-object v0

    :goto_13
    new-instance v1, Lmiui/external/SdkErrorActivity$SdkDialogFragment;

    iget-object v2, p0, Lmiui/external/SdkErrorActivity$2$1;->x:Lmiui/external/SdkErrorActivity$2;

    iget-object v2, v2, Lmiui/external/SdkErrorActivity$2;->w:Lmiui/external/SdkErrorActivity;

    invoke-direct {v1, v2, v0}, Lmiui/external/SdkErrorActivity$SdkDialogFragment;-><init>(Lmiui/external/SdkErrorActivity;Landroid/app/Dialog;)V

    iget-object v0, p0, Lmiui/external/SdkErrorActivity$2$1;->x:Lmiui/external/SdkErrorActivity$2;

    iget-object v0, v0, Lmiui/external/SdkErrorActivity$2;->w:Lmiui/external/SdkErrorActivity;

    invoke-virtual {v0}, Lmiui/external/SdkErrorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "SdkUpdateFinishDialog"

    invoke-virtual {v1, v0, v2}, Lmiui/external/SdkErrorActivity$SdkDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_2b
    iget-object v0, p0, Lmiui/external/SdkErrorActivity$2$1;->x:Lmiui/external/SdkErrorActivity$2;

    iget-object v0, v0, Lmiui/external/SdkErrorActivity$2;->w:Lmiui/external/SdkErrorActivity;

    invoke-static {v0}, Lmiui/external/SdkErrorActivity;->P(Lmiui/external/SdkErrorActivity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_13
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmiui/external/SdkErrorActivity$2$1;->V([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lmiui/external/SdkErrorActivity$2$1;->W(Ljava/lang/Boolean;)V

    return-void
.end method
