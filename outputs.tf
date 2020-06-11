output "download_path" {
  value       = "${data.null_data_source.fetch.outputs.download_path}"
  description = "Download path"
}
