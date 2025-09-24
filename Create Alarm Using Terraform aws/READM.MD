CloudWatch Alarm avec Terraform
🎯 Objectif

Ce projet Terraform crée une alarme CloudWatch pour surveiller l’utilisation CPU d’une instance EC2 dans AWS.

⚙️ Fonctionnement

L’alarme s’appelle nautilus-alarm.

Elle surveille la métrique CPUUtilization de l’instance EC2.

Si l’utilisation CPU dépasse 80% pendant 5 minutes (300 secondes), l’alarme est déclenchée.

evaluation_periods = 1 : une seule période suffit pour déclencher l’alarme.

🚀 Étapes d’utilisation

Cloner le projet.

Modifier la region et l’AMI selon ton compte AWS.

Initialiser Terraform :

terraform init


Vérifier le plan :

terraform plan


Appliquer la configuration :

terraform apply

📌 Points Importants

Si tu as déjà une instance EC2 existante, enlève le bloc aws_instance et mets directement son InstanceId dans dimensions.

L’alarme ne fait qu’observer et déclencher une alerte, si tu veux recevoir un mail ou SMS, il faut ajouter une SNS notification.