terraform {
  required_providers {
    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "1.21.0"
    }
  }
}

provider "postgresql" {
  alias = "main"
  host  = "127.0.0.1"
  port  = 15432
}

resource "postgresql_database" "my_db1" {
  provider = "postgresql.main"
  name     = "my_db1"
}
