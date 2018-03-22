INSTALLDIR=$(DESTDIR)/usr/share/vlc/skins2
RM = rm -rf

all:

install: local

clear:
	$(RM) $(INSTALLDIR)/Breeze.vlt
	$(RM) $(INSTALLDIR)/Breeze-Fixed-Size.vlt
local:
	find Breeze.vlt -type f -exec install -Dm644 '{}' "$(INSTALLDIR)/{}" \;
	find Breeze-Fixed-Size.vlt -type f -exec install -Dm644 '{}' "$(INSTALLDIR)/{}" \;

uninstall: clear
