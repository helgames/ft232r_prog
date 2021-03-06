UNAME = $(shell uname)
ifeq ($(UNAME), Windows)
	LIBFTDI_CFLAGS = 
    LIBFTDI_LDFLAGS = -lftdi
else
	PKG_CONFIG?=pkg-config
	LIBFTDI_CFLAGS = $(shell $(PKG_CONFIG) --cflags libftdi)
	LIBFTDI_LDFLAGS = $(shell $(PKG_CONFIG) --libs   libftdi)
endif

CFLAGS = -Wall -O2 -s -Werror $(LIBFTDI_CFLAGS)
LDFLAGS = $(LIBFTDI_LDFLAGS) -s
PROG = ft232r_prog

all:	$(PROG)

$(PROG):	$(PROG).c
	$(CC) $(CFLAGS) -o $@ $< $(LDFLAGS)

clean:
	rm -f $(PROG)
