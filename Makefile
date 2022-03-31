################################################### 
# Make variables
###################################################
OBJ_DIR = obj
SRC_DIR = src
BUILD_DIR = build
CPP = g++
CPPFLAGS = -Wall -std=c++17
FILES = main.cpp

###################################################
# Recipes
###################################################
_OBJS = $(FILES:.cpp=.o)
OBJS = $(patsubst %,$(OBJ_DIR)/%,$(_OBJS))
SRCS = $(patsubst %,$(SRC_DIR)/%,$(FILES))

build: $(OBJS)
	$(CPP) $(CPPFLAGS) $(OBJS) -o $(BUILD_DIR)/inOneWeekend

$(OBJS): $(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp
	$(CPP) -c -o $@ $< $(CPPFLAGS)

run:
	$(BUILD_DIR)/inOneWeekend > $(BUILD_DIR)/image.ppm

clean:
	rm $(BUILD_DIR)/image.ppm
	rm $(OBJ_DIR)/*.o
	rm $(BUILD_DIR)/inOneWeekend