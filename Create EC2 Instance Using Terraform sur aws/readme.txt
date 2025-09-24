Déploiement d'une Instance EC2 avec Terraform
 Ce document explique étape par étape, de manière simple, comment créer une instance EC2 sur
 AWS en utilisant Terraform.
 Prérequis :- Un compte AWS avec les credentials configurés (aws configure).- Terraform installé sur votre machine.- Accès au terminal Linux.
 1. Générer une paire de clés SSH
 Exécutez la commande suivante :
 ssh-keygen -t rsa -b 4096 -f ~/.ssh/nautilus-kp
 Cela génère deux fichiers :- ~/.ssh/nautilus-kp (clé privée)- ~/.ssh/nautilus-kp.pub (clé publique)
 2. Créer le fichier main.tf
 Dans /home/bob/terraform/main.tf, insérez le contenu suivant :
 provider "aws" {
  region = "us-east-1"
 }
 resource "aws_key_pair" "nautilus_kp" {
  key_name   = "nautilus-kp"
  public_key = file("~/.ssh/nautilus-kp.pub")
 }
 resource "aws_instance" "nautilus_ec2" {
  ami           = "ami-0c101f26f147fa7fd"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.nautilus_kp.key_name
  vpc_security_group_ids = [data.aws_security_group.default.id]
  tags = { Name = "nautilus-ec2" }
 }
 data "aws_security_group" "default" {
  name   = "default"
  vpc_id = data.aws_vpc.default.id
 }
 data "aws_vpc" "default" {
  default = true
 }
 3. Initialiser Terraform
 Allez dans le dossier /home/bob/terraform et lancez :
 terraform init
 4. Vérifier le plan
 Pour voir les ressources qui vont être créées :
 terraform plan
5. Appliquer le déploiement
 Créez l’instance EC2 et la paire de clés avec :
 terraform apply -auto-approve
 6. Se connecter à l’instance
 Récupérez l’adresse IP publique et connectez-vous avec :
 ssh -i ~/.ssh/nautilus-kp ec2-user@<IP-PUBLIQUE>
 7. Nettoyage
 Pour supprimer toutes les ressources créées :
 terraform destroy -auto-approve