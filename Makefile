# This should be automated, but I'm lazy
.PHONY: librespeed
librespeed:
	kubectl apply -f librespeed/librespeed-pvc.yaml
	sleep 10
	kubectl apply -f librespeed/librespeed.yaml

.PHONY: uptime-kuma
uptime-kuma:
	kubectl apply -f uptime-kuma/uptime-kuma-pvc.yaml
	sleep 10
	kubectl apply -f uptime-kuma/uptime-kuma.yaml