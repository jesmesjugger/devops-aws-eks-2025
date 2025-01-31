data "template_file" "aws_config_acm_certificate_expiration" {
  count = var.count-me

  template = file("${path.module}/config-policies/acm-certificate-expiration.tpl")

  vars = {
    acm_days_to_expiration = var.acm_days_to_expiration
  }
}

resource "aws_config_config_rule" "acm-certificate-expiration-check" {
  count = var.count-me

  name             = "acm-certificate-expiration-check"
  description      = "Ensures ACM Certificates in your account are marked for expiration within the specified number of days"
  input_parameters = data.template_file.aws_config_acm_certificate_expiration[count.index].rendered

  source {
    owner             = "AWS"
    source_identifier = "ACM_CERTIFICATE_EXPIRATION_CHECK"
  }

  maximum_execution_frequency = var.config_max_execution_frequency

  //depends_on = [aws_config_configuration_recorder.main]
}