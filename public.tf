resource "aws_subnet" "eks_subnet_public_1b" {
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "${data.aws_region.current.name}b"
  map_public_ip_on_launch = true



  tags = {  
       "kubernetes.io/role/elb" = 1
    }
}


resource "aws_subnet" "eks_subnet_public_1c" {
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = "10.0.3.0/24"
  availability_zone       = "${data.aws_region.current.name}c"
  map_public_ip_on_launch = true

  tags = {  
       "kubernetes.io/role/elb" = 1
    }
}
