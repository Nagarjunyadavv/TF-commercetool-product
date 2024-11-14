resource "commercetools_product_type" "my-product-type4" {
  key         = "my-product-type-key4"
  name        = "Lens specification4"
  description = "All the specific info concerning the lens"

  attribute {
    name = "autofocus"
    label = {
      en = "Has autofocus"
      nl = "Heeft autofocus"
    }
    required = true
    type {
      name = "boolean"
    }
  }

  attribute {
    name = "lens_product_no"
    label = {
      en = "Lens product number"
      nl = "Objectief productnummer"
    }
    required = true
    type {
      name = "text"
    }
    constraint = "Unique"
    input_tip = {
      en = "Enter the product code"
      nl = "Voer de product code in"
    }
    searchable = true
  }

  attribute {
    name = "previous_model"
    label = {
      en = "Previous model"
      nl = "Vorig model"
    }
    type {
      name              = "reference"
      reference_type_id = "product"
    }
  }

  attribute {
    name = "some-flag"
    label = {
      en = "Some flag"
      nl = "Een vlag"
    }
    required = false
    type {
      name = "enum"
      value {
        key   = "FLAG-1"
        label = "Flag 1"
      }
      value {
        key   = "FLAG-2"
        label = "FLAG-2"
      }
    }
  }

  attribute {
    name = "origin"
    label = {
      en = "Origin country"
      nl = "Land van herkomst"
    }
    required = false
    type {
      name = "set"
      element_type {
        name = "lenum"
        localized_value {
          key = "NL"
          label = {
            en = "Netherlands"
            nl = "Nederland"
          }
        }
        localized_value {
          key = "DE"
          label = {
            en = "Germany"
            nl = "Duitsland"
          }
        }
      }
    }
  }
}
