resource "google_project_iam_custom_role" "custom-role" {
  role_id     = "ComputeAudit"
  title       = "Compute Audit Role"
  description = "A role for compute auditors"
  permissions = split("\n", file("./compute_audit.txt"))
}

/*

resource "google_project_iam_custom_role" "custom-role" {
  for_each    = fileset(path.module, "*.txt")
  role_id     = split(".", each.value)[0]
  title       = split(".", each.value)[0]
  description = "A role containing permissions from ${each.value}"
  permissions = split("\n", file(each.value))
}

*/