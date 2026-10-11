output "notifications_notification_hubs_notification_hub_region" {
  description = "Map of notification_hub_region values across all notifications_notification_hubs, keyed the same as var.notifications_notification_hubs"
  value       = { for k, v in aws_notifications_notification_hub.notifications_notification_hubs : k => v.notification_hub_region if v.notification_hub_region != null && length(v.notification_hub_region) > 0 }
}

