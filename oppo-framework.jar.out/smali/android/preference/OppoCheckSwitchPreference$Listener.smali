.class Landroid/preference/OppoCheckSwitchPreference$Listener;
.super Ljava/lang/Object;
.source "OppoCheckSwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/OppoCheckSwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/OppoCheckSwitchPreference;


# direct methods
.method private constructor <init>(Landroid/preference/OppoCheckSwitchPreference;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Landroid/preference/OppoCheckSwitchPreference$Listener;->this$0:Landroid/preference/OppoCheckSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/preference/OppoCheckSwitchPreference;Landroid/preference/OppoCheckSwitchPreference$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/preference/OppoCheckSwitchPreference;
    .param p2, "x1"    # Landroid/preference/OppoCheckSwitchPreference$1;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/preference/OppoCheckSwitchPreference$Listener;-><init>(Landroid/preference/OppoCheckSwitchPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 74
    iget-object v3, p0, Landroid/preference/OppoCheckSwitchPreference$Listener;->this$0:Landroid/preference/OppoCheckSwitchPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/OppoCheckSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 77
    if-nez p2, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 95
    :cond_0
    :goto_1
    return-void

    .line 77
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 80
    :cond_2
    iget-object v3, p0, Landroid/preference/OppoCheckSwitchPreference$Listener;->this$0:Landroid/preference/OppoCheckSwitchPreference;

    invoke-virtual {v3, p2}, Landroid/preference/OppoCheckSwitchPreference;->setChecked(Z)V

    .line 82
    iget-object v3, p0, Landroid/preference/OppoCheckSwitchPreference$Listener;->this$0:Landroid/preference/OppoCheckSwitchPreference;

    invoke-virtual {v3}, Landroid/preference/OppoCheckSwitchPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    .line 83
    .local v2, "preferenceManager":Landroid/preference/PreferenceManager;
    if-eqz v2, :cond_3

    .line 84
    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getOnPreferenceTreeClickListener()Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v1

    .line 86
    .local v1, "listener":Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
    if-eqz v1, :cond_3

    .line 87
    iget-object v3, p0, Landroid/preference/OppoCheckSwitchPreference$Listener;->this$0:Landroid/preference/OppoCheckSwitchPreference;

    # getter for: Landroid/preference/OppoCheckSwitchPreference;->mPreferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Landroid/preference/OppoCheckSwitchPreference;->access$100(Landroid/preference/OppoCheckSwitchPreference;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Landroid/preference/OppoCheckSwitchPreference$Listener;->this$0:Landroid/preference/OppoCheckSwitchPreference;

    invoke-interface {v1, v3, v4}, Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 91
    .end local v1    # "listener":Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
    :cond_3
    iget-object v3, p0, Landroid/preference/OppoCheckSwitchPreference$Listener;->this$0:Landroid/preference/OppoCheckSwitchPreference;

    invoke-virtual {v3}, Landroid/preference/OppoCheckSwitchPreference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 92
    iget-object v3, p0, Landroid/preference/OppoCheckSwitchPreference$Listener;->this$0:Landroid/preference/OppoCheckSwitchPreference;

    invoke-virtual {v3}, Landroid/preference/OppoCheckSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 93
    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, Landroid/preference/OppoCheckSwitchPreference$Listener;->this$0:Landroid/preference/OppoCheckSwitchPreference;

    invoke-virtual {v3}, Landroid/preference/OppoCheckSwitchPreference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
