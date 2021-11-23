output "ssh_key" {
  value = module.stack_azure_virtual_machine_example.ssh_key
}

output "demo_password" {
  value = module.stack_azure_virtual_machine_example.demo_password
}

output "demo_public_ip_address" {
  value = module.stack_azure_virtual_machine_example.demo_public_ip_address
}
