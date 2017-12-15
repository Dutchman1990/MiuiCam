.class Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "GridSettingPopupWhiteBalance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private mTitle:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method private constructor <init>(Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter$ViewHolder;->this$1:Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter$ViewHolder;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter$ViewHolder;-><init>(Lcom/android/camera/ui/GridSettingPopupWhiteBalance$HorizontalListViewAdapter;)V

    return-void
.end method
