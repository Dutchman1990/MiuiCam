.class public abstract Lmiui/external/ApplicationDelegate;
.super Landroid/content/ContextWrapper;
.source "ApplicationDelegate.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field private u:Lmiui/external/Application;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method U(Lmiui/external/Application;)V
    .registers 2

    iput-object p1, p0, Lmiui/external/ApplicationDelegate;->u:Lmiui/external/Application;

    invoke-virtual {p0, p1}, Lmiui/external/ApplicationDelegate;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object v0, p0, Lmiui/external/ApplicationDelegate;->u:Lmiui/external/Application;

    invoke-virtual {v0, p1}, Lmiui/external/Application;->q(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .registers 2

    iget-object v0, p0, Lmiui/external/ApplicationDelegate;->u:Lmiui/external/Application;

    invoke-virtual {v0}, Lmiui/external/Application;->r()V

    return-void
.end method

.method public onLowMemory()V
    .registers 2

    iget-object v0, p0, Lmiui/external/ApplicationDelegate;->u:Lmiui/external/Application;

    invoke-virtual {v0}, Lmiui/external/Application;->s()V

    return-void
.end method

.method public onTerminate()V
    .registers 2

    iget-object v0, p0, Lmiui/external/ApplicationDelegate;->u:Lmiui/external/Application;

    invoke-virtual {v0}, Lmiui/external/Application;->t()V

    return-void
.end method

.method public onTrimMemory(I)V
    .registers 3

    iget-object v0, p0, Lmiui/external/ApplicationDelegate;->u:Lmiui/external/Application;

    invoke-virtual {v0, p1}, Lmiui/external/Application;->u(I)V

    return-void
.end method

.method public registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 3

    iget-object v0, p0, Lmiui/external/ApplicationDelegate;->u:Lmiui/external/Application;

    invoke-virtual {v0, p1}, Lmiui/external/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 3

    iget-object v0, p0, Lmiui/external/ApplicationDelegate;->u:Lmiui/external/Application;

    invoke-virtual {v0, p1}, Lmiui/external/Application;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method
