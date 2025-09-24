📘 README – Création d’un volume EBS avec Terraform
🔹 Description

Ce projet montre comment créer un volume EBS (Elastic Block Store) sur AWS en utilisant Terraform.
Un volume EBS est un disque de stockage attachable à une instance EC2.

🔹 Code Terraform utilisé
resource "aws_ebs_volume" "devops-volume" {
  availability_zone = "us-east-1a"
  size              = 2

  tags = {
    Name = "aws_ebs_volume"
  }
}

🔹 Explication du code

resource "aws_ebs_volume" "devops-volume"
→ Déclare un volume EBS avec le nom interne devops-volume.

availability_zone = "us-east-1a"
→ Définit la zone de disponibilité où sera créé le volume (par exemple us-east-1a).

size = 2
→ Spécifie la taille du volume, ici 2 Go.

tags = { Name = "aws_ebs_volume" }
→ Ajoute un tag (nom) au volume pour le retrouver facilement dans la console AWS.

🔹 Étapes pour exécuter

Initialiser Terraform :

terraform init


Vérifier le plan :

terraform plan


Appliquer la configuration :

terraform apply

🔹 Résultat attendu

👉 Un volume EBS de 2 Go sera créé dans la zone us-east-1a et visible dans la console AWS avec le tag aws_ebs_volume.