.class public Lcom/android/camera/preferences/PreferenceGroup;
.super Lcom/android/camera/preferences/CameraPreference;
.source "PreferenceGroup.java"


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/preferences/CameraPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/camera/preferences/CameraPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/preferences/PreferenceGroup;->list:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addChild(Lcom/android/camera/preferences/CameraPreference;)V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/preferences/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;
    .registers 7

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/camera/preferences/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/preferences/CameraPreference;

    instance-of v3, v1, Lcom/android/camera/preferences/ListPreference;

    if-eqz v3, :cond_25

    move-object v0, v1

    check-cast v0, Lcom/android/camera/preferences/ListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    return-object v0

    :cond_25
    instance-of v3, v1, Lcom/android/camera/preferences/PreferenceGroup;

    if-eqz v3, :cond_7

    check-cast v1, Lcom/android/camera/preferences/PreferenceGroup;

    invoke-virtual {v1, p1}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_32
    return-object v4
.end method

.method public get(I)Lcom/android/camera/preferences/CameraPreference;
    .registers 3

    iget-object v0, p0, Lcom/android/camera/preferences/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/preferences/CameraPreference;

    return-object v0
.end method

.method public removePreference(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/camera/preferences/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/android/camera/preferences/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
