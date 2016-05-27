.class Lcom/oppo/widget/OppoQuickContactBadgeICS$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "OppoQuickContactBadgeICS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoQuickContactBadgeICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoQuickContactBadgeICS;


# direct methods
.method public constructor <init>(Lcom/oppo/widget/OppoQuickContactBadgeICS;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS$QueryHandler;->this$0:Lcom/oppo/widget/OppoQuickContactBadgeICS;

    .line 305
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 306
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 9
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 310
    const/4 v5, 0x0

    .line 311
    .local v5, "lookupUri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 312
    .local v2, "createUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 317
    .local v6, "trigger":Z
    packed-switch p1, :pswitch_data_0

    .line 347
    .end local p2    # "cookie":Ljava/lang/Object;
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 348
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 352
    :cond_1
    iget-object v7, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS$QueryHandler;->this$0:Lcom/oppo/widget/OppoQuickContactBadgeICS;

    # setter for: Lcom/oppo/widget/OppoQuickContactBadgeICS;->mContactUri:Landroid/net/Uri;
    invoke-static {v7, v5}, Lcom/oppo/widget/OppoQuickContactBadgeICS;->access$002(Lcom/oppo/widget/OppoQuickContactBadgeICS;Landroid/net/Uri;)Landroid/net/Uri;

    .line 353
    iget-object v7, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS$QueryHandler;->this$0:Lcom/oppo/widget/OppoQuickContactBadgeICS;

    # invokes: Lcom/oppo/widget/OppoQuickContactBadgeICS;->onContactUriChanged()V
    invoke-static {v7}, Lcom/oppo/widget/OppoQuickContactBadgeICS;->access$100(Lcom/oppo/widget/OppoQuickContactBadgeICS;)V

    .line 359
    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    .line 368
    :cond_2
    :goto_1
    return-void

    .line 319
    .restart local p2    # "cookie":Ljava/lang/Object;
    :pswitch_0
    const/4 v6, 0x1

    .line 320
    :try_start_0
    const-string v7, "tel"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "cookie":Ljava/lang/Object;
    const/4 v8, 0x0

    invoke-static {v7, p2, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 324
    :pswitch_1
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 325
    const/4 v7, 0x0

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 326
    .local v0, "contactId":J
    const/4 v7, 0x1

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 327
    .local v4, "lookupKey":Ljava/lang/String;
    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 328
    goto :goto_0

    .line 333
    .end local v0    # "contactId":J
    .end local v4    # "lookupKey":Ljava/lang/String;
    .restart local p2    # "cookie":Ljava/lang/Object;
    :pswitch_2
    const/4 v6, 0x1

    .line 334
    const-string v7, "mailto"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "cookie":Ljava/lang/Object;
    const/4 v8, 0x0

    invoke-static {v7, p2, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 338
    :pswitch_3
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 339
    const/4 v7, 0x0

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 340
    .restart local v0    # "contactId":J
    const/4 v7, 0x1

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 341
    .restart local v4    # "lookupKey":Ljava/lang/String;
    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    goto :goto_0

    .line 347
    .end local v0    # "contactId":J
    .end local v4    # "lookupKey":Ljava/lang/String;
    :catchall_0
    move-exception v7

    if-eqz p3, :cond_3

    .line 348
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v7

    .line 363
    :cond_4
    if-eqz v2, :cond_2

    .line 365
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v3, v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 366
    .local v3, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/oppo/widget/OppoQuickContactBadgeICS$QueryHandler;->this$0:Lcom/oppo/widget/OppoQuickContactBadgeICS;

    invoke-virtual {v7}, Lcom/oppo/widget/OppoQuickContactBadgeICS;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 317
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
