resource "aws_instance" "Demo" {
  ami           = "ami-02c21308fed24a8ab"
  count         = 1
  instance_type = var.instance_t
  tags = {
   Name = "Test-dev-server"
   Terraform = "true"
   Owner = "dev"
   env = "dev"
}
}