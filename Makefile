.PHONY: mongo-user
mongo-user:
	echo -n mongouser | base64

.PHONY: mongo-password
mongo-password:
	echo -n mongopassword | base64