variable "image_id" {
        type = string 
        default = "ami-067d1e60475437da2"
}
  
variable "ec2_type" {
    type = string
    default = "t2.micro"
    }

variable "http_sg_id" {
    type = list
    default = ["sg-0fdb5363ed69998c6"]

}
variable "key_name" {
    type = string
    default = "second_key"
  
}