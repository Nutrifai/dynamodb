# USER
resource "aws_dynamodb_table" "user_table" {
  name         = "User"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "userId"

  attribute {
    name = "userId"
    type = "S"
  }

  tags = {
    Name = "User"
  }
}

# SESSION
resource "aws_dynamodb_table" "session_table" {
  name         = "Session"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "sessionId"

  attribute {
    name = "sessionId"
    type = "S"
  }

  ttl {
    attribute_name = "expireOn"
    enabled        = true
  }

  tags = {
    Name = "Session"
  }
}

# DIET
resource "aws_dynamodb_table" "diet_table" {
  name         = "Diet"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "userId"
  range_key    = "dietId"

  attribute {
    name = "userId"
    type = "S"
  }

  attribute {
    name = "dietId"
    type = "S"
  }

  tags = {
    Name = "Diet"
  }
}

# Appointments
resource "aws_dynamodb_table" "appointment_table" {
  name         = "Appointment"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "nutriId"
  range_key    = "appointmentId"

  attribute {
    name = "nutriId"
    type = "S"
  }

  attribute {
    name = "appointmentId"
    type = "S"
  }

  tags = {
    Name = "Appointment"
  }
}