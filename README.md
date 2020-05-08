
1. In order to build vpc,  we  use vpc folder, run - terraform init/apply -var-file vpc.tfvars and create vpc in desired region

2. then you need run data_source folder and identify output of VPC (subnets and VPCsecurity group) those source you need to use when you 

will create instance in VPC which you created in 1.

next is simple you open nagios_instance correct region where VPC was created and ran terraform init/apply -var-file vpc.tfvars

after 15 - 20 min instance will be created with nagios







