# Terraform - Création d’un utilisateur IAM

Ce projet utilise **Terraform** pour créer un utilisateur IAM nommé **`iamuser_john`** dans AWS

## 🚀 Instructions

1. **Initialiser Terraform**  
   Dans le répertoire du projet :
   ```bash
   terraform init
   ```

2. **Valider la configuration**  
   ```bash
   terraform validate
   ```

3. **Appliquer la configuration**  
   ```bash
   terraform apply -auto-approve
   ```

---

## 📜 Contenu du fichier `main.tf`

```hcl
provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "john" {
  name = "iamuser_john"
}
```

---

## 🧹 Nettoyage

Pour supprimer l’utilisateur IAM créé :
```bash
terraform destroy -auto-approve
```

---

## 📖 Notes

- Cet exemple crée uniquement l’utilisateur IAM.  
- Si vous souhaitez ajouter des **clés d’accès**, des **groupes** ou des **politiques IAM**, vous pouvez enrichir `main.tf`.  
