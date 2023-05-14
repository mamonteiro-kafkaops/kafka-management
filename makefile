secret:
ifdef enc
	@echo '$(enc)' | tr -d '\n' | kubeseal --raw --namespace confluent --name kafkasa --cert ./.build/certs/bitnami.cert; echo
else
	$(error the enc argument is empty, please use the following command instead: "make secret enc=your_secret")
endif