.class Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManualExposurePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ManualExposurePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HorizontalListViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/camera/ui/ManualExposurePopup;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/ManualExposurePopup;)V
    .registers 4

    iput-object p1, p0, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;->this$0:Lcom/android/camera/ui/ManualExposurePopup;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-virtual {p1}, Lcom/android/camera/ui/ManualExposurePopup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;->this$0:Lcom/android/camera/ui/ManualExposurePopup;

    iget-object v0, v0, Lcom/android/camera/ui/ManualExposurePopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;->this$0:Lcom/android/camera/ui/ManualExposurePopup;

    iget-object v0, v0, Lcom/android/camera/ui/ManualExposurePopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    const/4 v4, 0x0

    if-nez p2, :cond_44

    new-instance v0, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter$ViewHolder;

    invoke-direct {v0, p0, v4}, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter$ViewHolder;-><init>(Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter$ViewHolder;)V

    iget-object v2, p0, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040010

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v2, 0x7f09003b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter$ViewHolder;->-set0(Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;->this$0:Lcom/android/camera/ui/ManualExposurePopup;

    invoke-static {v2}, Lcom/android/camera/ui/ManualExposurePopup;->-get1(Lcom/android/camera/ui/ManualExposurePopup;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v2, p0, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;->this$0:Lcom/android/camera/ui/ManualExposurePopup;

    invoke-static {v2}, Lcom/android/camera/ui/ManualExposurePopup;->-get0(Lcom/android/camera/ui/ManualExposurePopup;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHeight(I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_32
    invoke-static {v0}, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter$ViewHolder;->-get0(Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter;->this$0:Lcom/android/camera/ui/ManualExposurePopup;

    iget-object v3, v3, Lcom/android/camera/ui/ManualExposurePopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_44
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ManualExposurePopup$HorizontalListViewAdapter$ViewHolder;

    goto :goto_32
.end method
