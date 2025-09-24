# IP élastique = une IP publique statique afin que les personnes ou les applications trouvent toujours votre serveur avec la même adresse même si l'instance change.

# Créer une Elastic IP dans le VPC
resource "aws_eip" "nautilus_eip" {

domain = "vpc"  

  tags = {
    Name = "nautilus-eip"
  }
}