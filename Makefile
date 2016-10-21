CC=gcc
CFLAGS= -g -lasound -Wall
OBJS = sound_playback.o


all: play clean

play: $(OBJS)	
	
	$(CC) $(CFLAGS) $(OBJS) -o $@

#%.o: %.c 
#	$(CC) -c $(CFLAGS) $< -o $@


sound_playback.o : sound_playback.h sound_playback.c
	
	$(CC) $(CFLAGS) -c $^

clean:
	rm sound_playback.o sound_playback.h.gch
	
