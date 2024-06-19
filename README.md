# terrafrom_ec2_create

> After cloning the repo, Go in remote_state directory

command: 

    cd terraform
    cd remote_state
    cd Createbackend
>  After going in Createbackend directory initilize the terraform, run a dry run, then execute the terraform file

command: 

    terraform init
    terraform plan
    terraform apply

# Copy the id's of s3 bucket and DynomoDB table after creation

> Paste the id's in backend.tf 

command: 

    cd ..
    vim backend.tf

> To exit the vim file

command: 

    esc + :wq!

> Paste the id's in main.tf

command:

    cd ..
    cd local_state
    vim main.tf

> After adding the id's in backend.tf & main.tf
> Be in local_state directory
> Initilize the terraform, run a dry run, then execute the terraform file

command:

    terraform init
    terraform plan
    terraform apply
