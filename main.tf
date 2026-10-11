resource "google_firestore_change_stream" "firestore_change_streams" {
  for_each = var.firestore_change_streams

  name             = each.value.name
  retention_period = each.value.retention_period
  database         = each.value.database
  deletion_policy  = each.value.deletion_policy
  project          = each.value.project

  dynamic "collection_group_scope" {
    for_each = each.value.collection_group_scope != null ? [each.value.collection_group_scope] : []
    content {
      collection_group_id = collection_group_scope.value.collection_group_id
    }
  }

  dynamic "database_scope" {
    for_each = each.value.database_scope != null ? [each.value.database_scope] : []
    content {
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

