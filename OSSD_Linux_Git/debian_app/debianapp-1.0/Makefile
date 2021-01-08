BIN = $(DESTDIR)/usr/bin
CFLAGS :=	-O $(CFLAGS)
TARGET=		oimundo
SRCFILES=	oimundo.c

all: $(TARGET)

$(TARGET):		$(SRCFILES)
		$(CC) $(CFLAGS) -o $(TARGET) $(SRCFILES)

install: $(TARGET)
		install -d $(BIN)
		install $(TARGET) $(BIN)

clean:
		rm -f $(TARGET)
