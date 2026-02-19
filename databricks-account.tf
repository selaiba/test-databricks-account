



# Liest die bereits existierende (federierte) Entra ID Gruppe
# data "databricks_group" "account_admins" {
#   provider     = databricks.account
#   display_name = var.account_admin_group_name
# }

# Vergibt der Gruppe die Rolle account_admin
# resource "databricks_group_role" "account_admins" {
#   provider = databricks.account

#   group_id = data.databricks_group.account_admins.id
#   role     = "account_admin"
# }





# Deaktiviert veraltete (Legacy) Funktionen auf Account-Ebene.
# Erzwingt die Nutzung moderner Sicherheits- und Governance-Mechanismen im gesamten Databricks Account.

resource "databricks_disable_legacy_features_setting" "disable_legacy_features" {
  disable_legacy_features {
    value = true
  }
}