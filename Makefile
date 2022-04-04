all: clean init plan apply

clean:
	rm -fR infra/terraform.*
	rm -fR infra/.terraform/modules

init: clean
	cd infra && terraform init -backend-config='key=dev/terraform.tfstate'

plan:
	cd infra && terraform plan

apply: plan
	cd infra && terraform apply -auto-approve
