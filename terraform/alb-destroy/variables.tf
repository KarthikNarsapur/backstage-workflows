variable "region" {
  type    = string
  default = "ap-south-1"
}

variable "alb_arn" {
  type = string
}
 # terraform destroy -var="alb_id=arn:aws:elasticloadbalancing:ap-south-1:730335384723:targetgroup/app-target-group-backstage/ab17d34495f220da"
