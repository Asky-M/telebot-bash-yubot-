PREFIX ?= /usr/local
bindir        = $(PREFIX)/bin
libdir        = $(PREFIX)/lib

# default target
all: doc

doc:
	@echo "Nothing to do..."

# auxiliary
install:
	@echo "Installing..."
	# Scripts
	@install -D -m755 ./yubot-bash $(DESTDIR)$(bindir)/yubot-bash
	# Libs
	@mkdir -p $(DESTDIR)$(libdir)/yubot/tasks
	@install -D -m644 ./*.bash $(DESTDIR)$(libdir)/yubot
	@install -D -m644 ./tasks/*.bash $(DESTDIR)$(libdir)/yubot/tasks

uninstall:
	@echo "Uninstalling..."
	# Scripts
	@rm $(DESTDIR)$(bindir)/yubot-bash
	# Libs
	@rm -r $(DESTDIR)$(libdir)/yubot

clean:
	@echo "Cleaning..."

.PHONY: install uninstall clean
