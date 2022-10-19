SHELL=/bin/bash
VERSION=1.0.0


build:
	docker build -f Dockerfile -t ai-proficient-mysql:${VERSION} .

run:
	docker run -d --rm  --name aip-mysql -v $(CURDIR)/data:/data \
		-p 3306:3306 \
		-e MYSQL_ROOT_PASSWORD=s3cr3t \
		ai-proficient-mysql:${VERSION}

stop:
	docker stop aip-mysql 


clean:
	docker rmi ai-proficient-mysql:${VERSION}

