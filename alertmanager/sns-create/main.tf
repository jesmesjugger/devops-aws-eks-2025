resource "aws_sns_topic" "platform_ops" {
  name = "platform-ops"
  display_name = "platform-ops"
  
}

resource "aws_sns_topic_subscription" "angaza_platform_ops_target" {
   topic_arn = aws_sns_topic.platform_ops
   protocol = "email"
   endpoint = "devodone33@gmail.com"
}