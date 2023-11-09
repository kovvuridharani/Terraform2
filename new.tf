provider "aws"{

region="ap-south-1"
}
resource "aws_instance" "test-server" {
  ami           = "ami-02e94b011299ef128"
  instance_type = "t2.medium"
  key_name = "my-key"
  tags = {
    Name = "test-server"
    Stage = "testing"
    Location = "chennai"
  }
}
