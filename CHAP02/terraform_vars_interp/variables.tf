variable "resoure_group_name" {
  description = "Name of the resource group"
}

variable "location" {
  description = "Location of the resource"
  default     = "West Europe"
}

variable "application_name" {
  description = "Name of the application"
}

#Only some information will vary from one stage to another, such as ahte name of the resource and the number of instances. To give more flexability to the code we write using variables. 