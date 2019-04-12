SRCS = main.c fib.c
HDRS = fib.h
OBJS = $(SRCS:%.c=%.o)
EXES = fib

CC = clang
CFLAGS = -std=c99 -pedantic -Wall -Werror
CPPFLAGS =
LDFLAGS =
RM = rm -f

%.o: %.c
	$(CC) $(CFLAGS) $(CPPFLAGS) -c -o $@ $<

.PHONY: all clean allclean

all: $(EXES)

main.o: $(HDRS)

fib: $(OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

clean:
	$(RM) $(EXES)
	$(RM) $(OBJS)

allclean: clean
	$(RM) *.o *~ a.out
