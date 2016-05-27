.class public interface abstract Landroid/provider/OppoSettings$Oppo_System;
.super Ljava/lang/Object;
.source "OppoSettings.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
    note = "OPPO ADD [Originally defined in Settings.System in Settings.java ]"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/OppoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Oppo_System"
.end annotation


# static fields
.field public static final AUTO_REDAIL_ENABLED:Ljava/lang/String; = "auto_redial"

.field public static final AUTO_REDAIL_SETTING:Ljava/lang/String; = "auto_redail_setting"

.field public static final BOOT_AUTHENTICATION_ENABLE:Ljava/lang/String; = "boot_authentication_enable"

.field public static final BOOT_AUTHENTICATION_PASSWORD:Ljava/lang/String; = "boot_authentication_password"

.field public static final BREATHE_LIGHT:Ljava/lang/String; = "breathe_light"

.field public static final BREATH_LIGHT:Ljava/lang/String; = "breath_light"

.field public static final BUTTON_LIGHT_MODE:Ljava/lang/String; = "button_light_mode"

.field public static final BUTTON_LIGHT_TIMEOUT:Ljava/lang/String; = "button_light_timeout"

.field public static final CALENDAR_REMINDER_SOUND:Ljava/lang/String; = "calendar_sound"

.field public static final CALENDAR_REMINDER_SOUND_URI:Landroid/net/Uri;

.field public static final CALL_VIBRATE_METHOD:Ljava/lang/String; = "call_vibrate_method"

.field public static final DEFAULT_CALENDAR_REMINDER_SOUND:Ljava/lang/String; = "calendar_default_sound"

.field public static final DEFAULT_NOTIFICATION_SIM2_URI:Landroid/net/Uri;

.field public static final DEFAULT_RINGTONE_SIM2_URI:Landroid/net/Uri;

.field public static final DISPLAY_POWER_PERCENT:Ljava/lang/String; = "display_power_percent"

.field public static final FESTIVAL_WALLPAPER:Ljava/lang/String; = "festival_wallpaper"

.field public static final FESTIVAL_WALLPAPER_ENABLED:Ljava/lang/String; = "festival_wallpaper_enabled"

.field public static final FLIP_MUTE:Ljava/lang/String; = "flip_mute"

.field public static final GPRS_MODE_FIRST:Ljava/lang/String; = "GPRSmode_fisrt"

.field public static final HOLIDAY_WALLPAPER_ENABLED:Ljava/lang/String; = "wallpaper_holiday"

.field public static final IME_KEYBOARD_FEEDBACK:Ljava/lang/String; = "ime_keyboard_feedback"

.field public static final IME_KEYBOARD_SOUND:Ljava/lang/String; = "ime_keyboard_sound"

.field public static final IS_USING_THEME:Ljava/lang/String; = "is_using_theme"

.field public static final KEY_NETSTATS_ERROR:Ljava/lang/String; = "netstats_error"

.field public static final KEY_SYSTEM_APP_WTF:Ljava/lang/String; = "system_app_wtf"

.field public static final KEY_SYSTEM_SERVER_WTF:Ljava/lang/String; = "system_server_wtf"

.field public static final KEY_TONE_ENABLE:Ljava/lang/String; = "oppo_key_tone"

.field public static final KEY_VIBRATE_ENABLE:Ljava/lang/String; = "oppo_key_vibrate"

.field public static final KE_EVENT_DATA:Ljava/lang/String; = "event_data"

.field public static final KE_EVENT_LOG:Ljava/lang/String; = "event_log"

.field public static final LID_CLOSE_SOUND:Ljava/lang/String; = "lid_close_sound"

.field public static final LID_OPEN_SOUND:Ljava/lang/String; = "lid_open_sound"

.field public static final LID_SOUNDS_ENABLED:Ljava/lang/String; = "lid_sounds_enabled"

.field public static final MODE_3G_ON:Ljava/lang/String; = "3GMode_on"

.field public static final NOTIFICATION_ON_CONNECTED:Ljava/lang/String; = "notification_on_connected"

.field public static final NOTIFICATION_SOUND_SIM2:Ljava/lang/String; = "notification_sim2"

.field public static final OPPO_3G_SWITCH_VISIBLE:Ljava/lang/String; = "oppo_3g_switch_visible"

.field public static final OPPO_BLANK_SCREEN_CAMERA_ENABLED:Ljava/lang/String; = "oppo_blank_screen_camera_enabled"

.field public static final OPPO_BLANK_SCREEN_FLASHLIGHT_ENABLED:Ljava/lang/String; = "oppo_blank_screen_flashlight_enabled"

.field public static final OPPO_BLANK_SCREEN_MULTI_TOUCH_CAMERA_ENABLED:Ljava/lang/String; = "oppo_blank_screen_multi_touch_camera_enabled"

.field public static final OPPO_BLANK_SCREEN_MUSIC_ENABLED:Ljava/lang/String; = "oppo_blank_screen_music_enabled"

.field public static final OPPO_BODY_RESPONSE_DAIL:Ljava/lang/String; = "oppo_body_response_dail"

.field public static final OPPO_BREATH_LED_CHARGE:Ljava/lang/String; = "oppo_breath_led_charge"

.field public static final OPPO_BREATH_LED_LOW_POWER:Ljava/lang/String; = "oppo_breath_led_low_power"

.field public static final OPPO_BREATH_LED_NOTIFICATION:Ljava/lang/String; = "oppo_breath_led_notification"

.field public static final OPPO_DATA_TRAFFIC_USED:Ljava/lang/String; = "oppo_data_traffic_used"

.field public static final OPPO_DEFAULT_ALARM:Ljava/lang/String; = "oppo_default_alarm"

.field public static final OPPO_DEFAULT_NOTIFICATION:Ljava/lang/String; = "oppo_default_notification"

.field public static final OPPO_DEFAULT_NOTIFICATION_SIM2:Ljava/lang/String; = "oppo_default_notification_sim2"

.field public static final OPPO_DEFAULT_RINGTONE:Ljava/lang/String; = "oppo_default_ringtone"

.field public static final OPPO_DEFAULT_RINGTONE_SIM2:Ljava/lang/String; = "oppo_default_ringtone_sim2"

.field public static final OPPO_DIRAC_SOUND_EFFECT:Ljava/lang/String; = "oppo_dirac_sound_effect"

.field public static final OPPO_DISAPLAY_CALCULATE_DATA_TRAFFIC:Ljava/lang/String; = "oppo_disaplay_calculate_data_traffic"

.field public static final OPPO_DOUBLE_CLICK_CAMERA_ON:Ljava/lang/String; = "oppo_double_click_camera_on"

.field public static final OPPO_DOUBLE_CLICK_TO_TOP_EFFECT:Ljava/lang/String; = "oppo_double_click_to_top_effect"

.field public static final OPPO_DOUBLE_FINGER_CONTROL_VOLUME_ENABLED:Ljava/lang/String; = "oppo_double_finger_control_volume_enabled"

.field public static final OPPO_DOUBLE_PRESS_HOME_LOCK_SCREEN_ENABLED:Ljava/lang/String; = "oppo_double_press_home_lock_screen"

.field public static final OPPO_EYE_TRACKING_ENABLED:Ljava/lang/String; = "oppo_eye_tracking_enabled"

.field public static final OPPO_GESTURE_ANSWER:Ljava/lang/String; = "oppo_smart_apperceive_gesture_answer"

.field public static final OPPO_GESTURE_APP_ENABLE:Ljava/lang/String; = "oppo_app_gesture_enable"

.field public static final OPPO_GESTURE_PAGE:Ljava/lang/String; = "oppo_smart_apperceive_gesture_page"

.field public static final OPPO_GESTURE_SCREEN_HOVERING:Ljava/lang/String; = "oppo_gesture_screen_hovering"

.field public static final OPPO_GESTURE_SLIDING_DESKTOP:Ljava/lang/String; = "oppo_smart_apperceive_gesture_sliding_desktop"

.field public static final OPPO_GESTURE_TO_TAKE_PHOTO_ENABLED:Ljava/lang/String; = "oppo_gesture_to_take_photo_enabled"

.field public static final OPPO_GLOVE_MODE_ENABLED:Ljava/lang/String; = "oppo_glove_mode_enabled"

.field public static final OPPO_LED_COLOR_FOR_FAVORITE_CONTACTS:Ljava/lang/String; = "oppo_led_color_for_favorite_contacts"

.field public static final OPPO_LED_COLOR_FOR_GENERAL_CONTACTS:Ljava/lang/String; = "oppo_led_color_for_general_contacts"

.field public static final OPPO_LED_COLOR_FOR_GENERAL_NOTIFICATIONS:Ljava/lang/String; = "oppo_led_color_for_general_notificaions"

.field public static final OPPO_NFC_LIGHTNING_TRANSFER:Ljava/lang/String; = "oppo_nfc_lightning_transfer"

.field public static final OPPO_PREVENT_MISOPERATION_ENABLED:Ljava/lang/String; = "oppo_prevent_misoperation_enabled"

.field public static final OPPO_QUICK_START_ROTATIVE_CAMERA_ENABLED:Ljava/lang/String; = "oppo_quick_start_rotative_camera_enabled"

.field public static final OPPO_SCREAN_COLOR_DEFINE:Ljava/lang/String; = "oppo_screan_color_define"

.field public static final OPPO_SMART_APPERCEIVE_ADJUST_SPEAKER:Ljava/lang/String; = "oppo_smart_apperceive_adjust_speaker"

.field public static final OPPO_SMART_APPERCEIVE_AUTO_ANSWER:Ljava/lang/String; = "oppo_smart_apperceive_auto_answer"

.field public static final OPPO_SMART_APPERCEIVE_DECREASE_VOLUME:Ljava/lang/String; = "oppo_smart_apperceive_decrease_volume"

.field public static final OPPO_SMART_APPERCEIVE_DIAL:Ljava/lang/String; = "oppo_smart_apperceive_dial"

.field public static final OPPO_SMART_APPERCEIVE_ENABLED:Ljava/lang/String; = "oppo_smart_apperceive_enabled"

.field public static final OPPO_SMART_APPERCEIVE_GESTURE_OP:Ljava/lang/String; = "oppo_smart_apperceive_gesture_op"

.field public static final OPPO_SMART_APPERCEIVE_IMAGE:Ljava/lang/String; = "oppo_smart_apperceive_image"

.field public static final OPPO_SMART_APPERCEIVE_NOTIFICATION:Ljava/lang/String; = "oppo_smart_apperceive_notification"

.field public static final OPPO_SMART_APPERCEIVE_SCREEN_CAPTURE:Ljava/lang/String; = "oppo_smart_apperceive_screen_capture"

.field public static final OPPO_SMART_APPERCEIVE_SCREEN_LOCK:Ljava/lang/String; = "oppo_smart_apperceive_screen_lock"

.field public static final OPPO_SMART_APPERCEIVE_SLIENT:Ljava/lang/String; = "oppo_smart_apperceive_slient"

.field public static final OPPO_SMART_SCREEN_OFF:Ljava/lang/String; = "oppo_smart_screen_off"

.field public static final OPPO_SMS_NOTIFICATION_SOUND:Ljava/lang/String; = "oppo_sms_notification_sound"

.field public static final OPPO_STATUS_BAR_ENABLE_WHEN_LOCK:Ljava/lang/String; = "oppo_status_bar_enable_when_lock"

.field public static final OPPO_THEME_CHANGE:Ljava/lang/String; = "oppo_theme_change"

.field public static final OPPO_THREE_FINGERS_SWITCH_APP_ENABLED:Ljava/lang/String; = "oppo_three_fingers_switch_app"

.field public static final OPPO_TOUCHPAD_CTRL_ENABLED:Ljava/lang/String; = "oppo_touchpad_ctrl_enabled"

.field public static final OPPO_UNLOCK_CHANGE:Ljava/lang/String; = "oppo_unlock_change"

.field public static final OPPO_UNLOCK_CHANGE_PKG:Ljava/lang/String; = "oppo_unlock_change_pkg"

.field public static final OPPO_UNLOCK_CHANGE_PROCESS:Ljava/lang/String; = "oppo_unlock_change_process"

.field public static final OPPO_USE_OPTIMIZED_APP_ICON_ENABLED:Ljava/lang/String; = "oppo_use_optimized_app_icon_enabled"

.field public static final ORIENTATION_ANIMATION_ENABLED:Ljava/lang/String; = "orientation_animation"

.field public static final PHONE_IP_PREFIX:Ljava/lang/String; = "phone_ip_prefix"

.field public static final PHONE_IP_PREFIX_SIM1:Ljava/lang/String; = "phone_ip_prefix_sim1"

.field public static final PHONE_IP_PREFIX_SIM2:Ljava/lang/String; = "phone_ip_prefix_sim2"

.field public static final POWER_OFF_SOUND:Ljava/lang/String; = "power_off_sound"

.field public static final POWER_ON_SOUND:Ljava/lang/String; = "power_on_sound"

.field public static final POWER_ON_TIMES:Ljava/lang/String; = "power_on_times"

.field public static final POWER_SAVE_MODE:Ljava/lang/String; = "power_save_method"

.field public static final PRESSKEY_LIGHT_TIMEOUT:Ljava/lang/String; = "presskey_light_timeout"

.field public static final RINGTONE_SIM2:Ljava/lang/String; = "ringtone_sim2"

.field public static final SCREEN_EFFECT:Ljava/lang/String; = "screen_effect"

.field public static final SHUTDOWN_REQUEST_MISSED:Ljava/lang/String; = "shutdown_request_missed"

.field public static final STATE_GLOBALEFFECT:Ljava/lang/String; = "global_effect_state"

.field public static final SYSTEM_APP_STRICTMODE:Ljava/lang/String; = "system_app_strictmode"

.field public static final TIMEPOWER_CONFIG:Ljava/lang/String; = "timepower_config"

.field public static final TP_CTRL_CONVENIENT_PAGE_ENABLED:Ljava/lang/String; = "tp_ctrl_convenient_page_enabled"

.field public static final TP_CTRL_DOUBLE_CLICK_START_APP_ENABLED:Ljava/lang/String; = "tp_ctrl_double_click_start_app_enabled"

.field public static final TP_CTRL_DOUBLE_CLICK_START_APP_SET:Ljava/lang/String; = "tp_ctrl_double_click_start_app_set"

.field public static final TP_CTRL_IN_READING_ENABLED:Ljava/lang/String; = "tp_ctrl_in_reading_enabled"

.field public static final TP_CTRL_IN_RECORDING_ENABLED:Ljava/lang/String; = "tp_ctrl_in_recording_enabled"

.field public static final TP_CTRL_MUSIC_PAGE_ENABLED:Ljava/lang/String; = "tp_ctrl_music_page_enabled"

.field public static final TP_CTRL_TOUCH_TO_SLIDE_ENABLED:Ljava/lang/String; = "tp_ctrl_touch_to_slide_enabled"

.field public static final TURN_SLIENCE_ENABLED:Ljava/lang/String; = "turn_slience_enabled"

.field public static final USB_NO_ASK_AGAIN:Ljava/lang/String; = "usb_no_ask_again"

.field public static final USB_REMEBER_SELECTION:Ljava/lang/String; = "usb_remeber_selection"

.field public static final VISTOR_MODE_PASSWORD:Ljava/lang/String; = "oppo_vistor_mode_password"

.field public static final VISTOR_MODE_PASSWORD_STATE:Ljava/lang/String; = "oppo_vistor_mode_password_state"

.field public static final VISTOR_MODE_PATTERN:Ljava/lang/String; = "oppo_vistor_mode_pattern"

.field public static final VISTOR_MODE_STATE:Ljava/lang/String; = "oppo_vistor_mode_state"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1160
    const-string/jumbo v0, "ringtone_sim2"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/OppoSettings$Oppo_System;->DEFAULT_RINGTONE_SIM2_URI:Landroid/net/Uri;

    .line 1172
    const-string/jumbo v0, "notification_sim2"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/OppoSettings$Oppo_System;->DEFAULT_NOTIFICATION_SIM2_URI:Landroid/net/Uri;

    .line 1178
    const-string v0, "calendar_sound"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/OppoSettings$Oppo_System;->CALENDAR_REMINDER_SOUND_URI:Landroid/net/Uri;

    return-void
.end method
