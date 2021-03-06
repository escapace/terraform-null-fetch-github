locals {
  flags_map = {
    repo                        = "${var.repo}"
    commit                      = "${var.commit}"
    branch                      = "${var.branch}"
    tag                         = "${var.tag}"
    github-oauth-token          = "${var.github_oauth_token}"
    source-path                 = "${var.source_path}"
    release-asset               = "${var.release_asset}"
    release-asset-checksum      = "${var.release_asset_checksum}"
    release-asset-checksum-algo = "${var.release_asset_checksum_algo}"
    github-api-version          = "${var.github_api_version}"
  }

  flags = join(" ", flatten(values({ for k, v in local.flags_map : k => k == "source-path" ? length(v) == 0 ? [] : flatten([for vv in v : ["--${k}=\"${vv}\""]]) : ["--${k}=\"${v}\""] if v != null })))
  fetch = "${path.module}/bin/fetch"
}

resource "random_pet" "folder" {
  keepers = {
    flags : local.flags
  }
}

resource "null_resource" "fetch" {
  triggers = {
    always_run = timestamp()
  }

  provisioner "local-exec" {
    command = "if [ -d \"$DIRECTORY\" ]; then true; else mkdir -p \"$DIRECTORY\" && ${local.fetch} ${local.flags} \"$DIRECTORY\"; fi"

    environment = {
      DIRECTORY = "${path.module}/downloads/${random_pet.folder.id}"
    }
  }

  lifecycle {
    create_before_destroy = true
  }
}

data "null_data_source" "fetch" {
  inputs = {
    download_path = abspath("${path.module}/downloads/${random_pet.folder.id}")
  }

  depends_on = [null_resource.fetch]
}
