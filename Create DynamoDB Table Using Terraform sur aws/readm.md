📘 README – DynamoDB avec Terraform
📌 Objectif

Créer une table DynamoDB nommée datacenter-users en utilisant Terraform.
La table aura une clé primaire datacenter_id (de type String) et utilisera le mode de facturation PAY_PER_REQUEST (à la demande).

📂 Structure des fichiers
/home/bob/terraform/
│── main.tf   # Fichier principal Terraform

⚙️ Contenu du fichier main.tf
provider "aws" {
  region = "us-east-1"
}

resource "aws_dynamodb_table" "datacenter_users" {
  name         = "datacenter-users"
  billing_mode = "PAY_PER_REQUEST"

  hash_key = "datacenter_id"

  attribute {
    name = "datacenter_id"
    type = "S"
  }

  tags = {
    Environment = "dev"
    Project     = "nautilus"
  }
}

🚀 Étapes d’utilisation

Ouvrir le dossier dans VS Code

cd /home/bob/terraform


Initialiser Terraform

terraform init


Vérifier la configuration

terraform validate


Afficher le plan avant l’application

terraform plan


Appliquer la configuration (créer la table)

terraform apply -auto-approve

✅ Résultat attendu

Une table DynamoDB créée dans AWS avec :

Nom : datacenter-users

Clé primaire : datacenter_id (String)

Mode de facturation : On-Demand (PAY_PER_REQUEST)