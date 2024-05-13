
server:
	hugo server

ship:
	hugo
	rsync -avz --delete public/ nat@homework.quest:/home/nat/www/slides.homework.quest

s: server

clean:
	rm -rf public resources

.PHONY: deps ship s server
