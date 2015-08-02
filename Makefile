NAME = github-mirror
VERSION = 1

default:

install:
	install -D github-mirror $(DESTDIR)/usr/bin/github-mirror
	install -D github-mirror-organization \
	 $(DESTDIR)/usr/bin/github-mirror-organization

uninstall:
	rm $(DESTDIR)/usr/bin/github-mirror
	rm $(DESTDIR)/usr/bin/github-mirror-organization

archive:
	@git archive --prefix=$(NAME)-$(VERSION)/ HEAD --format=tar.gz \
	 -o $(NAME)-$(VERSION).tar.gz
	@echo "$(NAME)-$(VERSION).tar.gz created"

clean:
	rm -rf *.tar.gz
