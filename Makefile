# This should be automated, but I'm lazy
.PHONY: librespeed
librespeed:
	kubectl apply -f librespeed/librespeed-pvc.yaml
	sleep 10
	kubectl get pvc librespeed-config-pvc -n librespeed -o jsonpath="{.status.phase}"
	kubectl apply -f librespeed/librespeed.yaml