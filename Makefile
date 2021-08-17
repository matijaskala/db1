SRCS = $(shell find $(CURDIR) -name "*.c")
OBJS = $(SRCS:%.c=%.o)
CPPFLAGS += -D__DBINTERFACE_PRIVATE -D_GNU_SOURCE -I$(CURDIR)/include

libdb1.a: $(OBJS)
	$(AR) rc $@ $(OBJS)

clean:
	$(RM) libdb1.a $(OBJS)
