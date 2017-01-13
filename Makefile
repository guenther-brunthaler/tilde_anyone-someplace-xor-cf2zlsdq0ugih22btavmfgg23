TARGETS = \
	0pad \
	nor \
	or \
	sparse-section-detector \
	xor \

all: $(TARGETS)

.PHONY: clean all

clean:
	-rm $(TARGETS)

AUG_CFLAGS = $(CPPFLAGS) $(CFLAGS) -I .

.c:
	$(CC) $(AUG_CFLAGS) $(LDFLAGS) -o $@ $<
