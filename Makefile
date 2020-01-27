
.PHONY: setup
setup:
	gcloud compute instances create vm-startup-script \
		--image-family ubuntu-1804-lts --image-project gce-uefi-images \
		--no-shielded-secure-boot --preemptible \
		--metadata stage=staging \
		--metadata-from-file=startup-script=startup-script.sh

.PHONY: ssh
ssh:
	gcloud compute ssh vm-startup-script

.PHONY: verify
verify:
	gcloud compute ssh vm-startup-script --command="source /etc/profile && printenv" | grep STAGE
