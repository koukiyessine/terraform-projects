📘 README – AWS SNS Topic avec Terraform

🎯 Objectif

Ce projet crée un AWS SNS Topic (canal de notification) appelé devops-notifications avec Terraform.
Un SNS Topic permet d’envoyer des messages ou notifications à plusieurs abonnés (emails, SMS, SQS, Lambda…).

📂 Contenu du code

resource "aws_sns_topic" "devops-notifications" {
  name = "devops-notifications"
}

Explication :

resource "aws_sns_topic" : indique qu’on veut créer une ressource de type SNS Topic.

"devops-notifications" : nom interne du resource dans Terraform (identifiant local).

name = "devops-notifications" : nom réel du topic dans AWS.

⚙️ Étapes d’exécution

Initialiser Terraform

terraform init


Vérifier le plan d’exécution

terraform plan


→ Affiche les ressources qui seront créées.

Appliquer la configuration

terraform apply


→ Crée le SNS Topic sur AWS.

Vérifier dans AWS Console

Aller dans SNS > Topics

Le topic devops-notifications devrait apparaître.

📌 Utilisation possible

Envoyer des notifications email.

Connecter des AWS Lambda pour déclencher des traitements.

Distribuer des messages vers SQS ou des webhooks.