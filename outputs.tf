output "firestore_change_streams_id" {
  description = "Map of id values across all firestore_change_streams, keyed the same as var.firestore_change_streams except keys with no id are omitted"
  value       = { for k, v in google_firestore_change_stream.firestore_change_streams : k => v.id if v.id != null && length(v.id) > 0 }
}
output "firestore_change_streams_collection_group_scope" {
  description = "Map of collection_group_scope values across all firestore_change_streams, keyed the same as var.firestore_change_streams except keys with no collection_group_scope are omitted"
  value       = { for k, v in google_firestore_change_stream.firestore_change_streams : k => one(v.collection_group_scope) if v.collection_group_scope != null && length(v.collection_group_scope) > 0 }
}
output "firestore_change_streams_create_time" {
  description = "Map of create_time values across all firestore_change_streams, keyed the same as var.firestore_change_streams except keys with no create_time are omitted"
  value       = { for k, v in google_firestore_change_stream.firestore_change_streams : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "firestore_change_streams_database" {
  description = "Map of database values across all firestore_change_streams, keyed the same as var.firestore_change_streams except keys with no database are omitted"
  value       = { for k, v in google_firestore_change_stream.firestore_change_streams : k => v.database if v.database != null && length(v.database) > 0 }
}
output "firestore_change_streams_database_scope" {
  description = "Map of database_scope values across all firestore_change_streams, keyed the same as var.firestore_change_streams except keys with no database_scope are omitted"
  value       = { for k, v in google_firestore_change_stream.firestore_change_streams : k => one(v.database_scope) if v.database_scope != null && length(v.database_scope) > 0 }
}
output "firestore_change_streams_deletion_policy" {
  description = "Map of deletion_policy values across all firestore_change_streams, keyed the same as var.firestore_change_streams except keys with no deletion_policy are omitted"
  value       = { for k, v in google_firestore_change_stream.firestore_change_streams : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "firestore_change_streams_etag" {
  description = "Map of etag values across all firestore_change_streams, keyed the same as var.firestore_change_streams except keys with no etag are omitted"
  value       = { for k, v in google_firestore_change_stream.firestore_change_streams : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "firestore_change_streams_name" {
  description = "Map of name values across all firestore_change_streams, keyed the same as var.firestore_change_streams except keys with no name are omitted"
  value       = { for k, v in google_firestore_change_stream.firestore_change_streams : k => v.name if v.name != null && length(v.name) > 0 }
}
output "firestore_change_streams_project" {
  description = "Map of project values across all firestore_change_streams, keyed the same as var.firestore_change_streams except keys with no project are omitted"
  value       = { for k, v in google_firestore_change_stream.firestore_change_streams : k => v.project if v.project != null && length(v.project) > 0 }
}
output "firestore_change_streams_retention_period" {
  description = "Map of retention_period values across all firestore_change_streams, keyed the same as var.firestore_change_streams except keys with no retention_period are omitted"
  value       = { for k, v in google_firestore_change_stream.firestore_change_streams : k => v.retention_period if v.retention_period != null && length(v.retention_period) > 0 }
}
output "firestore_change_streams_start_time" {
  description = "Map of start_time values across all firestore_change_streams, keyed the same as var.firestore_change_streams except keys with no start_time are omitted"
  value       = { for k, v in google_firestore_change_stream.firestore_change_streams : k => v.start_time if v.start_time != null && length(v.start_time) > 0 }
}
output "firestore_change_streams_update_time" {
  description = "Map of update_time values across all firestore_change_streams, keyed the same as var.firestore_change_streams except keys with no update_time are omitted"
  value       = { for k, v in google_firestore_change_stream.firestore_change_streams : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

