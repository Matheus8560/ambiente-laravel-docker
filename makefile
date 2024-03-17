docker_version = docker --version

setup:
ifndef docker_version
    $(error "Ops! Docker não instalado na máquina, realize a instalação primeiro!")
endif

run:
	echo "-----> Subindo o ambiente no docker"
	docker-compose up --build -d
	
stop:
	echo "-----> Parando o ambiente no docker"
	docker-compose stop
