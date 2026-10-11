CC = gcc
CFLAGS = -Wall -Wextra -std=c11 -O2
LDLIBS = -lraylib -lm -lX11 -lpthread -ldl -lrt

TARGET = doppler
SRC = doppler.c
OBJ = $(SRC:.c=.o)

.PHONY: all run clean

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(OBJ) -o $(TARGET) $(LDLIBS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(OBJ) $(TARGET)
