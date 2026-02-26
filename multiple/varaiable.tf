variable "environment" {
    default = "prod"
}

variable "ami_id" {
    default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
    default = " t3.micro"
}

variable "ec2_tags" {
    default = {
       Name = "terraformserver"
       Environment = "dev"
       Project = "roboshop"
       Terraform ="true"
    }
}

variable "allow_tls_terraform" {
    default = "allow_tls_tform"
}

variable "description" {
    default = "Allow TLS inbound traffic and all outbound traffic"
}

variable "ignressfromport" {
    default = 0
}

variable "ignresstoport" {
    default = 0
}

variable "ignresscicdr" { 
   default = ["0.0.0.0/0"]
}

variable "egnressfromport" {
    default = 0
}

variable "egnresstoport" {
    default = 0
}

variable "egnresscicdr" { 
   default = ["0.0.0.0/0"]
}

   