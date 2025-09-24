 Projet Terraform - AWS EBS Volume & Snapshot

 Ce projet utilise Terraform pour créer : 1. Un volume EBS nommé datacenter-vol. 2. Un snapshot
 automatique du volume nommé datacenter-vol-ss.
 Étapes d’utilisation 1. Pré-requis - Avoir un compte AWS actif. - Installer Terraform sur votre
 machine. - Configurer vos identifiants AWS (via `aws configure` ou variables d’environnement).

 2. Contenu principal (main.tf)
 provider "aws" {
  region = "us-east-1"
 }

 # Créer un volume EBS
 resource "aws_ebs_volume" "datacenter-vol" {
  availability_zone = "us-east-1a"
  size              = 5
  type              = "gp2"
  tags = {
    Name = "datacenter-vol"
  }
 }

 # Créer un snapshot du volume
 resource "aws_ebs_snapshot" "datacenter-vol-ss" {
  volume_id   = aws_ebs_volume.datacenter-vol.id
  description = "Datacenter Snapshot"
  tags = {
    Name = "datacenter-vol-ss"
  }
 }

 3. Commandes à exécuter Dans le terminal, placez-vous dans le dossier du projet : cd
 /home/bob/terraform Initialiser Terraform : terraform init Vérifier le plan d’exécution : terraform plan
 Appliquer les changements : terraform apply -auto-approve

 4. Vérification Pour vérifier que le snapshot est bien créé et en état completed : aws ec2
 describe-snapshots --filters Name=tag:Name,Values=datacenter-vol-ss --region us-east-1 --query
 "Snapshots[*].State" Résultat attendu : [ "completed" ]
 Résultat - Volume : datacenter-vol créé dans us-east-1a. - Snapshot : datacenter-vol-ss créé
 avec description Datacenter Snapshot. 
lecture et l’exécution.