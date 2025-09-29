Création d’un AWS Kinesis Stream avec Terraform

📌 Description

Ce projet Terraform permet de créer un AWS Kinesis Data Stream appelé xfusion-stream.
Ce stream est utilisé pour recevoir et traiter des données en temps réel.

📂 Contenu du fichier main.tf
provider "aws" {
  region = "us-east-1" # Région AWS (à adapter si besoin)
}

resource "aws_kinesis_stream" "xfusion_stream" {
  name        = "xfusion-stream"   # Nom du stream
  shard_count = 1                  # Nombre de shards (capacité)

  stream_mode_details {
    stream_mode = "PROVISIONED"    # Mode de fonctionnement (fixé par shards)
  }
}

🔎 Explication du code :

provider "aws" → indique que l’on utilise AWS comme fournisseur.

region = "us-east-1" → la région où sera créé le stream.

resource "aws_kinesis_stream" → définit le Kinesis stream.

name = "xfusion-stream" → nom du stream.

shard_count = 1 → un seul shard (unité de capacité).

stream_mode = "PROVISIONED" → mode provisionné (capacité fixée).

⚙️ Étapes d’exécution

Se placer dans le dossier du projet

cd /home/bob/terraform


Initialiser Terraform (télécharge le provider AWS)

terraform init


Prévisualiser les changements

terraform plan


👉 Ici Terraform montre ce qu’il va créer.

Appliquer la configuration (créer le Kinesis Stream)

terraform apply -auto-approve


Vérifier que tout est à jour

terraform plan


👉 Le résultat attendu :

No changes. Your infrastructure matches the configuration.

✅ Résultat attendu

Un Kinesis Data Stream nommé xfusion-stream sera créé dans AWS.
Après exécution, terraform plan ne doit plus proposer de changements.