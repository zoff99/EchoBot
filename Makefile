CC = gcc
CFLAGS = -g -O2 -fPIC -I./
LIBS = $(shell pkg-config --cflags --libs libsodium x264 opus vpx libavcodec libavutil)

echobot: echobot.o toxcore_amalgamation.a
	$(CC) $(CFLAGS) echobot.o toxcore_amalgamation.a $(LIBS) -o echobot

echobot.o: echobot.c
	$(CC) -c $(CFLAGS) $(LIBS) $< -o $@

toxcore_amalgamation.a: toxcore_amalgamation.o
	ar rcs toxcore_amalgamation.a toxcore_amalgamation.o

toxcore_amalgamation.o: toxcore_amalgamation.c
	$(CC) -c $(CFLAGS) $(LIBS) $< -o $@

strip: echobot
	strip echobot

clean:
	rm -f echobot echobot.o toxcore_amalgamation.o toxcore_amalgamation.a

