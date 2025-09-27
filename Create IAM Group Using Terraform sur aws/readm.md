■ Terraform - Exemple simple IAM

Ce projet montre comment créer un **utilisateur IAM** et un **groupe IAM** avec Terraform.

■ Code Terraform :
provider "aws" {
 region = "us-east-1"
}

# Créer un utilisateur
resource "aws_iam_user" "john" {
 name = "iamuser_john"
}

# Créer un groupe
resource "aws_iam_group" "siva" {
 name = "iamgroup_siva"
}

■■ Étapes :

1. Aller dans le dossier du projet :
 cd /home/bob/terraform
2. Initialiser Terraform :
 terraform init
3. Appliquer la configuration :
 terraform apply -auto-approve

■ Résultat :
- Un utilisateur **iamuser_john** est créé.
- Un groupe **iamgroup_siva** est créé.
■ Plus tard, vous pouvez ajouter des politiques ou associer l’utilisateur au groupe.