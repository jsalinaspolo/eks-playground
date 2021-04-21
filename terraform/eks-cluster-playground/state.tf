terraform {
  backend "s3" {
    bucket         = "eks-cluster-playground-1"
    key            = "states/eks-cluster-playground"
    region         = "us-east-1"
    encrypt        = true
//    dynamodb_table = "eks-cluster-playground-locks"
  }
}

