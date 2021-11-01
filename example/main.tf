module "example" {
  source        = "../"
  repo          = "https://github.com/mholt/archiver"
  tag           = "v3.2.0"
  release_asset = "arc_*"
}

output "test" {
  value       = module.example.download_path
  description = "Download Path"
}
