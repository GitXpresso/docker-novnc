PORT= 6080

all: brave

brave:
	docker build -t brave .

run:
	docker run -d -p 6080:6080 --name brave brave

stop:
	docker stop brave

.PHONY: clean
clean:
	docker rm brave

