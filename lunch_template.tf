resource "aws_launch_template" "web_template" {
  name = "web_launch_template"
  image_id = "ami-04b4f1a9cf54c11d0"
  instance_type = "t2.micro"
  key_name = "N.VIR-KEYPAIR"

  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "web-server"
    }
  }

}