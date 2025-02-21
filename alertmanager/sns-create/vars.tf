variable "name" {
  description = "The name of the topic"
  type = string
  default     = ""
}

variable "display_name" {
  description = "The display name for the topic"
  type = string
  default     = ""
}

variable "protocol" {
  description = "Protocol to use"
  type = string
  default     = ""
}

variable "endpoint" {
  description = "Endpoint to send data to"
  type = string
  default     = ""
}