Create IAM Policy with Terraform

🎯 Objectif

Créer une IAM Policy sur AWS qui donne uniquement un accès lecture (Read-Only) au service EC2 (Instances, AMIs et Snapshots).

📂 Fichiers utilisés

main.tf : fichier principal Terraform qui contient la configuration.

📜 Contenu du fichier main.tf
provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_policy" "iampolicy_ammar" {
  name        = "iampolicy_ammar"
  description = "IAM policy that allows read-only access to EC2 console (instances, AMIs, snapshots)"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = [
          "ec2:DescribeInstances",
          "ec2:DescribeImages",
          "ec2:DescribeSnapshots"
        ]
        Resource = "*"
      }
    ]
  })
}

🛠️ Étapes d’exécution

Aller dans le dossier de travail :

cd /home/bob/terraform


Initialiser Terraform :

terraform init


Vérifier la configuration :

terraform validate


Appliquer les changements :

terraform apply -auto-approve

✅ Résultat

Une policy IAM nommée iampolicy_ammar sera créée.
Elle permettra aux utilisateurs d’afficher les ressources EC2 (instances, images AMI, snapshots) sans pouvoir les modifier ou les supprimer.