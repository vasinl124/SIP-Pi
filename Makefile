all: sipcall sipserv

sipcall: sipcall.c
	cc -o $@ $< `pkg-config --cflags --libs libpjproject`
	
sipserv: sipserv.c
	cc -o $@ $< `pkg-config --cflags --libs libpjproject`

sipserv-gpio: sipserv.c
		cc -o $@ $< `pkg-config --cflags --libs libpjproject`  -L/usr/local/lib -lwiringPi -Dgpioenable
clean:
	rm -rf sipcall
	rm -rf sipserv

