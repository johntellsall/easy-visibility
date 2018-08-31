all:

update: plan apply

plan:
	terraform plan -var-file=example.tfvars -out=my.plan

apply:
	terraform apply my.plan

