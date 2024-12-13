output "instance_ips" {
  value = {
    for instance_name, instance in aws_instance.expense :
    instance_name => {
      public_ip  = instance.public_ip
      private_ip = instance.private_ip
    }
  }
}
