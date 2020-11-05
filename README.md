# terraform-azuread-newgroup
Create a new Azure AD group


## Example calling code

```hcl
module "aad_group" {
    source = "../ad"

    aad_groups = {
        "test1-srfe" = {
            name        = "test1-srfe",
            description = "test1-srfe-description"
        },
    }
}

provider "azuread" {
  # Whilst version is optional, we /strongly recommend/ using it to pin the version of the Provider being used

  tenant_id = "98sa75r3heldfhw89re-askudfyh"

  use_msi = true
}

```
