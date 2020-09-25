output "tf101_image_id" {
	value = var.image_id
}

output "tf101_availability_zone_names" {
	value = var.availability_zone_names
}

output "tf101_ami_id_maps" {
	value = var.ami_id_maps
}

output "tf101_first_availability_zone_names" {
	value = var.availability_zone_names[0]
}

output "tf101_first_ami_id_maps" {
	value = var.ami_id_maps.ap-northeast-2.ubuntu_18_04
}

output "tf101_function_test" {
	value = element(var.availability_zone_names, 0)
}

output "tf101_function_flatten" {
	value = flatten([var.iam_user_list, var.availability_zone_names])
}
