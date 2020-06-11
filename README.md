## Requirements

| Name | Version |
|------|---------|
| terraform | ~> 0.12.0 |
| null | ~> 2.0 |
| random | ~> 2.2 |

## Providers

| Name | Version |
|------|---------|
| null | ~> 2.0 |
| random | ~> 2.2 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| branch | The git branch from which to download the commit; the latest commit in the branch will be used. If specified, will override 'tag'. | `string` | `null` | no |
| commit | The specific git commit SHA to download. If specified, will override 'branch' and 'tag'. | `string` | `null` | no |
| github\_api\_version | The api version of the GitHub instance. If left blank, v3 will be used. | `string` | `null` | no |
| github\_oauth\_token | A GitHub Personal Access Token, which is required for downloading from private repos. | `string` | `null` | no |
| release\_asset | The name of a release asset that is, a binary uploaded to a GitHub Release to download. Only works with 'tag'. | `string` | `null` | no |
| release\_asset\_checksum | The checksum that a release asset should have. | `string` | `null` | no |
| release\_asset\_checksum\_algo | The algorithm Fetch will use to compute a checksum of the release asset. Acceptable values are 'sha256' and 'sha512' | `string` | `null` | no |
| repo | Fully qualified URL of the GitHub repo. | `string` | n/a | yes |
| source\_path | The source path to download from the repo. If this or 'release\_asset' aren't specified, all files are downloaded. | `list(string)` | `[]` | no |
| tag | The specific git tag to download, expressed with Version Constraint Operators. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| download\_path | Download path |

