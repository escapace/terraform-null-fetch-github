variable "repo" {
  type        = string
  description = "Fully qualified URL of the GitHub repo."
}

variable "commit" {
  type        = string
  default     = null
  description = "The specific git commit SHA to download. If specified, will override 'branch' and 'tag'."
}

variable "branch" {
  type        = string
  default     = null
  description = "The git branch from which to download the commit; the latest commit in the branch will be used. If specified, will override 'tag'."
}

variable "tag" {
  type        = string
  default     = null
  description = "The specific git tag to download, expressed with Version Constraint Operators."
}

variable "github_oauth_token" {
  type        = string
  default     = null
  description = "A GitHub Personal Access Token, which is required for downloading from private repos."
}

variable "source_path" {
  type        = list(string)
  default     = []
  description = "The source path to download from the repo. If this or 'release_asset' aren't specified, all files are downloaded."
}

variable "release_asset" {
  type        = string
  default     = null
  description = "The name of a release asset that is, a binary uploaded to a GitHub Release to download. Only works with 'tag'."
}

variable "release_asset_checksum" {
  type        = string
  default     = null
  description = "The checksum that a release asset should have."
}

variable "release_asset_checksum_algo" {
  type        = string
  default     = null
  description = "The algorithm Fetch will use to compute a checksum of the release asset. Acceptable values are 'sha256' and 'sha512'"
}

variable "github_api_version" {
  type        = string
  default     = null
  description = "The api version of the GitHub instance. If left blank, v3 will be used."
}
