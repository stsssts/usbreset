usbereset:
	cc usbreset.c -o usbreset

install: usbreset
	cp usbreset /usr/local/bin
	cp usbreset-id /usr/local/bin
	cp modemreset /usr/local/bin
	mkdir -p /usr/local/lib/systemd/system
	cp systemd/usbreset@.service /usr/local/lib/systemd/system
	cp systemd/usbreset@.timer /usr/local/lib/systemd/system
	cp systemd/modemreset.service /usr/local/lib/systemd/system
	cp systemd/modemreset.timer /usr/local/lib/systemd/system

uninstall:
	rm /usr/local/bin/usbreset
	rm /usr/local/bin/usbreset-id
	rm /usr/local/bin/modemreset
	rm /usr/local/lib/systemd/system/usbreset@.service
	rm /usr/local/lib/systemd/system/usbreset@.timer
	rm /usr/local/lib/systemd/system/modemreset.service
	rm /usr/local/lib/systemd/system/modemreset.timer

clean:
	rm usbreset
