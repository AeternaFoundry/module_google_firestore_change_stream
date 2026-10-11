variable "firestore_change_streams" {
  description = <<EOT
Map of firestore_change_streams, attributes below
Required:
    - name
    - retention_period
Optional:
    - database
    - deletion_policy
    - project
    - collection_group_scope (block):
        - collection_group_id (required)
    - database_scope (block):
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name             = string
    retention_period = string
    database         = optional(string)
    deletion_policy  = optional(string)
    project          = optional(string)
    collection_group_scope = optional(object({
      collection_group_id = string
    }))
    database_scope = optional(object({
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

