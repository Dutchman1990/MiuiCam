.class public Lmiui/external/Application;
.super Landroid/app/Application;
.source "Application.java"


# instance fields
.field private d:Lmiui/external/ApplicationDelegate;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    invoke-direct {p0}, Lmiui/external/Application;->o()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-direct {p0}, Lmiui/external/Application;->n()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/external/Application;->e:Z

    return-void
.end method

.method private l(Ljava/lang/Throwable;)V
    .registers 4

    :goto_0
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_17

    :cond_8
    const-string/jumbo v0, "miuisdk"

    const-string/jumbo v1, "MIUI SDK encounter errors, please contact miuisdk@xiaomi.com for support."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lmiui/external/SdkConstants$SdkError;->GENERIC:Lmiui/external/SdkConstants$SdkError;

    invoke-static {v0}, Lmiui/external/a;->b(Lmiui/external/SdkConstants$SdkError;)V

    return-void

    :cond_17
    instance-of v0, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_20
    instance-of v0, p1, Ljava/lang/ExceptionInInitializerError;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0
.end method

.method private m(Ljava/lang/String;I)V
    .registers 6

    const-string/jumbo v0, "miuisdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MIUI SDK encounter errors, please contact miuisdk@xiaomi.com for support. phase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lmiui/external/SdkConstants$SdkError;->GENERIC:Lmiui/external/SdkConstants$SdkError;

    invoke-static {v0}, Lmiui/external/a;->b(Lmiui/external/SdkConstants$SdkError;)V

    return-void
.end method

.method private n()Z
    .registers 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lmiui/external/e;->T()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "initialize"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/app/Application;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/util/Map;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_41

    const-string/jumbo v1, "initialize"

    invoke-direct {p0, v1, v0}, Lmiui/external/Application;->m(Ljava/lang/String;I)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_3b} :catch_3c

    return v6

    :catch_3c
    move-exception v0

    invoke-direct {p0, v0}, Lmiui/external/Application;->l(Ljava/lang/Throwable;)V

    return v6

    :cond_41
    return v7
.end method

.method private o()Z
    .registers 6

    const/4 v4, 0x0

    :try_start_1
    invoke-static {}, Lmiui/external/b;->j()Z

    move-result v0

    if-nez v0, :cond_32

    const-string/jumbo v0, "com.miui.core"

    const-string/jumbo v1, "miui"

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lmiui/external/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.miui.core"

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lmiui/external/b;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lmiui/external/Application;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lmiui/external/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v0

    if-nez v0, :cond_32

    sget-object v0, Lmiui/external/SdkConstants$SdkError;->NO_SDK:Lmiui/external/SdkConstants$SdkError;

    invoke-static {v0}, Lmiui/external/a;->b(Lmiui/external/SdkConstants$SdkError;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2c} :catch_2d

    return v4

    :catch_2d
    move-exception v0

    invoke-direct {p0, v0}, Lmiui/external/Application;->l(Ljava/lang/Throwable;)V

    return v4

    :cond_32
    const/4 v0, 0x1

    return v0
.end method

.method private p()Z
    .registers 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lmiui/external/e;->T()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "start"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/util/Map;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_33

    sget-object v0, Lmiui/external/SdkConstants$SdkError;->LOW_SDK_VERSION:Lmiui/external/SdkConstants$SdkError;

    invoke-static {v0}, Lmiui/external/a;->b(Lmiui/external/SdkConstants$SdkError;)V

    return v6

    :cond_33
    if-eqz v0, :cond_41

    const-string/jumbo v1, "start"

    invoke-direct {p0, v1, v0}, Lmiui/external/Application;->m(Ljava/lang/String;I)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_3b} :catch_3c

    return v6

    :catch_3c
    move-exception v0

    invoke-direct {p0, v0}, Lmiui/external/Application;->l(Ljava/lang/Throwable;)V

    return v6

    :cond_41
    return v7
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    iget-boolean v0, p0, Lmiui/external/Application;->e:Z

    if-nez v0, :cond_8

    return-void

    :cond_8
    invoke-direct {p0}, Lmiui/external/Application;->p()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-virtual {p0}, Lmiui/external/Application;->onCreateApplicationDelegate()Lmiui/external/ApplicationDelegate;

    move-result-object v0

    iput-object v0, p0, Lmiui/external/Application;->d:Lmiui/external/ApplicationDelegate;

    iget-object v0, p0, Lmiui/external/Application;->d:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lmiui/external/Application;->d:Lmiui/external/ApplicationDelegate;

    invoke-virtual {v0, p0}, Lmiui/external/ApplicationDelegate;->U(Lmiui/external/Application;)V

    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/external/Application;->f:Z

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object v0, p0, Lmiui/external/Application;->d:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lmiui/external/Application;->d:Lmiui/external/ApplicationDelegate;

    invoke-virtual {v0, p1}, Lmiui/external/ApplicationDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0, p1}, Lmiui/external/Application;->q(Landroid/content/res/Configuration;)V

    goto :goto_9
.end method

.method public final onCreate()V
    .registers 2

    iget-boolean v0, p0, Lmiui/external/Application;->f:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lmiui/external/Application;->d:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lmiui/external/Application;->d:Lmiui/external/ApplicationDelegate;

    invoke-virtual {v0}, Lmiui/external/ApplicationDelegate;->onCreate()V

    :goto_e
    return-void

    :cond_f
    invoke-virtual {p0}, Lmiui/external/Application;->r()V

    goto :goto_e
.end method

.method public onCreateApplicationDelegate()Lmiui/external/ApplicationDelegate;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onLowMemory()V
    .registers 2

    iget-object v0, p0, Lmiui/external/Application;->d:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lmiui/external/Application;->d:Lmiui/external/ApplicationDelegate;

    invoke-virtual {v0}, Lmiui/external/ApplicationDelegate;->onLowMemory()V

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0}, Lmiui/external/Application;->s()V

    goto :goto_9
.end method

.method public final onTerminate()V
    .registers 2

    iget-object v0, p0, Lmiui/external/Application;->d:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lmiui/external/Application;->d:Lmiui/external/ApplicationDelegate;

    invoke-virtual {v0}, Lmiui/external/ApplicationDelegate;->onTerminate()V

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0}, Lmiui/external/Application;->t()V

    goto :goto_9
.end method

.method public final onTrimMemory(I)V
    .registers 3

    iget-object v0, p0, Lmiui/external/Application;->d:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lmiui/external/Application;->d:Lmiui/external/ApplicationDelegate;

    invoke-virtual {v0, p1}, Lmiui/external/ApplicationDelegate;->onTrimMemory(I)V

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0, p1}, Lmiui/external/Application;->u(I)V

    goto :goto_9
.end method

.method final q(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method final r()V
    .registers 1

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    return-void
.end method

.method final s()V
    .registers 1

    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    return-void
.end method

.method final t()V
    .registers 1

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method final u(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    return-void
.end method
