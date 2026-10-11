output "shield_protection_groups_id" {
  description = "Map of id values across all shield_protection_groups, keyed the same as var.shield_protection_groups"
  value       = { for k, v in aws_shield_protection_group.shield_protection_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "shield_protection_groups_aggregation" {
  description = "Map of aggregation values across all shield_protection_groups, keyed the same as var.shield_protection_groups"
  value       = { for k, v in aws_shield_protection_group.shield_protection_groups : k => v.aggregation if v.aggregation != null && length(v.aggregation) > 0 }
}
output "shield_protection_groups_members" {
  description = "Map of members values across all shield_protection_groups, keyed the same as var.shield_protection_groups"
  value       = { for k, v in aws_shield_protection_group.shield_protection_groups : k => v.members if v.members != null && length(v.members) > 0 }
}
output "shield_protection_groups_pattern" {
  description = "Map of pattern values across all shield_protection_groups, keyed the same as var.shield_protection_groups"
  value       = { for k, v in aws_shield_protection_group.shield_protection_groups : k => v.pattern if v.pattern != null && length(v.pattern) > 0 }
}
output "shield_protection_groups_protection_group_arn" {
  description = "Map of protection_group_arn values across all shield_protection_groups, keyed the same as var.shield_protection_groups"
  value       = { for k, v in aws_shield_protection_group.shield_protection_groups : k => v.protection_group_arn if v.protection_group_arn != null && length(v.protection_group_arn) > 0 }
}
output "shield_protection_groups_protection_group_id" {
  description = "Map of protection_group_id values across all shield_protection_groups, keyed the same as var.shield_protection_groups"
  value       = { for k, v in aws_shield_protection_group.shield_protection_groups : k => v.protection_group_id if v.protection_group_id != null && length(v.protection_group_id) > 0 }
}
output "shield_protection_groups_resource_type" {
  description = "Map of resource_type values across all shield_protection_groups, keyed the same as var.shield_protection_groups"
  value       = { for k, v in aws_shield_protection_group.shield_protection_groups : k => v.resource_type if v.resource_type != null && length(v.resource_type) > 0 }
}
output "shield_protection_groups_tags" {
  description = "Map of tags values across all shield_protection_groups, keyed the same as var.shield_protection_groups"
  value       = { for k, v in aws_shield_protection_group.shield_protection_groups : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "shield_protection_groups_tags_all" {
  description = "Map of tags_all values across all shield_protection_groups, keyed the same as var.shield_protection_groups"
  value       = { for k, v in aws_shield_protection_group.shield_protection_groups : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

