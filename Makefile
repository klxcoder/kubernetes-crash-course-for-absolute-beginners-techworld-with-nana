.PHONY: mongo-user
mongo-user:
	echo -n mongouser | base64

.PHONY: mongo-password
mongo-password:
	echo -n mongopassword | base64

.PHONY: kubectl-apply-mongo-config
kubectl-apply-mongo-config:
	kubectl apply -f mongo-config.yaml