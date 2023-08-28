output "download_path" {
  value       = abspath("${path.module}/downloads/${random_pet.folder.id}")
  description = "Download path"
  depends_on  = [null_resource.fetch]
}
