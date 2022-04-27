usbereset:
	cc usbreset.c -o usbreset

install: usbreset
	cp usbreset /usr/local/bin
	mkdir -p /usr/local/lib/systemd/system
	cp systemd/usbreset@.service /usr/local/lib/systemd/system
	cp systemd/usbreset@.timer /usr/local/lib/systemd/system

uninstall:
	rm /usr/local/bin/usbreset
	rm /usr/local/lib/systemd/system/usbreset@.service
	rm /usr/local/lib/systemd/system/usbreset@.timer

clean:
	rm usbreset
