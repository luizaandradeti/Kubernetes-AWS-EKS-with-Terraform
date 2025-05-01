resource "aws_subnet" "eks_subnet_private_1b" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "${data.aws_region.current.name}b"

   tags = {
  
      "kubernetes.io/role/internal-elb" = 1
    
  
}

 
}

resource "aws_subnet" "eks_subnet_private_1c" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "${data.aws_region.current.name}c"

  tags = {
  
      "kubernetes.io/role/internal-elb" = 1
    
  
}
}
