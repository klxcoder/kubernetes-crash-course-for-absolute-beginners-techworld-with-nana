.PHONY: mongo-user
mongo-user:
	echo -n mongouser | base64

.PHONY: mongo-password
mongo-password:
	echo -n mongopassword | base64

.PHONY: kubectl-apply-mongo-config
kubectl-apply-mongo-config:
	kubectl apply -f mongo-config.yaml

.PHONY: kubectl-apply-mongo-secret
kubectl-apply-mongo-secret:
	kubectl apply -f mongo-secret.yaml

.PHONY: kubectl-apply-mongo
kubectl-apply-mongo:
	kubectl apply -f mongo.yaml

.PHONY: kubectl-apply-webapp
kubectl-apply-webapp:
	kubectl apply -f webapp.yaml

.PHONY: kubectl-get-all
kubectl-get-all:
	kubectl get all

.PHONY: kubectl-get-configmap
kubectl-get-configmap:
	kubectl get configmap

.PHONY: kubectl-get-secret
kubectl-get-secret:
	kubectl get secret

.PHONY: minikube-service-webapp-service
minikube-service-webapp-service:
	minikube service webapp-service