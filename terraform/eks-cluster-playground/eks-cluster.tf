data "aws_iam_policy_document" "admin_policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }

  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "AWS"
      identifiers = [module.eks.cluster_iam_role_arn]
    }
  }
}

resource "aws_iam_role" "admin" {
  assume_role_policy = data.aws_iam_policy_document.admin_policy.json
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = local.cluster_name
  cluster_version = "1.19"
  subnets         = module.vpc.private_subnets

  tags = {
    Environment = "training"
  }

  vpc_id = module.vpc.vpc_id

  map_roles = [
    {
      rolearn = aws_iam_role.admin.arn
      username = "user-admin"
      groups   = ["system:masters"]
    }
  ]

  workers_group_defaults = {
    root_volume_type = "gp2"
  }

  node_groups = {
    example = {
      desired_capacity = 1
      max_capacity     = 10
      min_capacity     = 1

      instance_type = "t2.micro"
      k8s_labels = {
        Environment = "training-node-groups"
      }
      additional_tags = {
        ExtraTag = "example"
      }
    }
  }
}

data "aws_eks_cluster" "cluster" {
  name = module.eks.cluster_id
}

data "aws_eks_cluster_auth" "cluster" {
  name = module.eks.cluster_id
}
