resource "aws_launch_configuration" "my-first-launch-conf" {
  name            = "webserver-launch"
  image_id        = var.ami
  instance_type   = var.instance_type
  key_name        = var.key_name
  security_groups = ["${aws_security_group.webserver_sg.id}"]
  user_data       = file("post-configuration.sh")
  lifecycle {
    create_before_destroy = true
  }
}