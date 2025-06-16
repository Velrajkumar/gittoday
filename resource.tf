resource "aws_instance" "test_instance" {
	instance_type = "t2.micro"
	ami = var.image_id
	}
	