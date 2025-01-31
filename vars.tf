variable "acm_days_to_expiration" {
  description = "Specify the number of days before the rule flags the ACM Certificate as noncompliant."
  default     = 14
}

variable "config_max_execution_frequency" {
  description = "The maximum frequency with which AWS Config runs evaluations for a rule."
  default     = "TwentyFour_Hours"
}

variable "count-me" {
  description = "The number to be checked ferquently"
  
  default =  30

}
//variable "enabled" {}