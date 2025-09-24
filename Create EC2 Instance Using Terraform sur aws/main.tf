# Créer une paire de clés RSA (nautilus-kp)
resource "aws_key_pair" "nautilus_kp" {
  key_name   = "nautilus-kp"
  public_key = file("~/.ssh/nautilus-kp.pub") # Assurez-vous d'avoir généré cette clé avant
}

# Créer une instance EC2
resource "aws_instance" "nautilus_ec2" {
  ami           = "ami-0c101f26f147fa7fd" # Amazon Linux AMI
  instance_type = "t2.micro"
  key_name      = aws_key_pair.nautilus_kp.key_name

  # Utiliser le security group par défaut
  vpc_security_group_ids = [data.aws_security_group.default.id]

  tags = {
    Name = "nautilus-ec2"
  }
}

# Récupérer le security group par défaut
data "aws_security_group" "default" {
  name   = "default"
  vpc_id = data.aws_vpc.default.id
}

# Récupérer le VPC par défaut
data "aws_vpc" "default" {
  default = true
}
