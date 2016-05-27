.class Lcom/oppo/preference/OppoSwitchPreference$Listener;
.super Ljava/lang/Object;
.source "OppoSwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/preference/OppoSwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/preference/OppoSwitchPreference;


# direct methods
.method private constructor <init>(Lcom/oppo/preference/OppoSwitchPreference;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/oppo/preference/OppoSwitchPreference$Listener;->this$0:Lcom/oppo/preference/OppoSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/preference/OppoSwitchPreference;Lcom/oppo/preference/OppoSwitchPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/preference/OppoSwitchPreference;
    .param p2, "x1"    # Lcom/oppo/preference/OppoSwitchPreference$1;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/oppo/preference/OppoSwitchPreference$Listener;-><init>(Lcom/oppo/preference/OppoSwitchPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oppo/preference/OppoSwitchPreference$Listener;->this$0:Lcom/oppo/preference/OppoSwitchPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # invokes: Lcom/oppo/preference/OppoSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v0, v1}, Lcom/oppo/preference/OppoSwitchPreference;->access$100(Lcom/oppo/preference/OppoSwitchPreference;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 82
    :goto_1
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/oppo/preference/OppoSwitchPreference$Listener;->this$0:Lcom/oppo/preference/OppoSwitchPreference;

    invoke-virtual {v0, p2}, Lcom/oppo/preference/OppoSwitchPreference;->setChecked(Z)V

    goto :goto_1
.end method
