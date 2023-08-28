<!-- BEGIN_TF_DOCS -->

## Resources

| Name                                                                                                         | Type     |
| ------------------------------------------------------------------------------------------------------------ | -------- |
| [null_resource.fetch](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [random_pet.folder](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet)      | resource |

## Inputs

| Name                        | Description                                                                                                                        | Type           | Default | Required |
| --------------------------- | ---------------------------------------------------------------------------------------------------------------------------------- | -------------- | ------- | :------: |
| branch                      | The git branch from which to download the commit; the latest commit in the branch will be used. If specified, will override 'tag'. | `string`       | `null`  |    no    |
| commit                      | The specific git commit SHA to download. If specified, will override 'branch' and 'tag'.                                           | `string`       | `null`  |    no    |
| github_api_version          | The api version of the GitHub instance. If left blank, v3 will be used.                                                            | `string`       | `null`  |    no    |
| github_oauth_token          | A GitHub Personal Access Token, which is required for downloading from private repos.                                              | `string`       | `null`  |    no    |
| release_asset               | The name of a release asset that is, a binary uploaded to a GitHub Release to download. Only works with 'tag'.                     | `string`       | `null`  |    no    |
| release_asset_checksum      | The checksum that a release asset should have.                                                                                     | `string`       | `null`  |    no    |
| release_asset_checksum_algo | The algorithm Fetch will use to compute a checksum of the release asset. Acceptable values are 'sha256' and 'sha512'               | `string`       | `null`  |    no    |
| repo                        | Fully qualified URL of the GitHub repo.                                                                                            | `string`       | n/a     |   yes    |
| source_path                 | The source path to download from the repo. If this or 'release_asset' aren't specified, all files are downloaded.                  | `list(string)` | `[]`    |    no    |
| tag                         | The specific git tag to download, expressed with Version Constraint Operators.                                                     | `string`       | `null`  |    no    |

## Outputs

| Name          | Description   |
| ------------- | ------------- |
| download_path | Download path |

<!-- END_TF_DOCS -->
