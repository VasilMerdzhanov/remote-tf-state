# Use random_pet to generate a random name  
resource "random_pet" "roni" {
  length    = var.words
  separator = "-"
}

variable "words" {
  default = 4
}

data "terraform_remote_state" "test" {
  backend = "remote"

  config = {
    organization = "VasilM"
    workspaces = {
      name = "tf-random_pet"
    }
  }
}
