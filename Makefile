.PHONY: clean all

all: instant-plexe.json
	./build.sh

clean:
	rm -fr output

