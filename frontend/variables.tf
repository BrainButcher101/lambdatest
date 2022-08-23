variable "name" {
  type        = string
  description = "Name of the Frontend for the app."
}

variable "files" {
  type     = string
  nullable = true
  default  = null

  description = "Path to files uploaded to S3"
}

variable "tags" {
  type        = map(any)
  description = "Tags for resources created by the app"
}

variable "stage_name" {
  type        = string
  default     = "prod"
  nullable    = false
  description = "Name of the env (e.g. dev, staging, prod, etc)"
}

variable "s3_access_logs_bucket" {
  type        = string
  default     = null
  description = "Name and prefix on the S3 bucket for S3 Bucket Access Logs"
}