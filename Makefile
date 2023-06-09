TEX=xelatex
TARGET=resume.tex
INT_FILES=$(shell echo resume.{aux,log,out})

default: build

build:
	$(TEX) $(TARGET)

clean:
	rm $(INT_FILES)

wepl:
	exec echo $(TARGET) | \
		entr -pr $(MAKE) build &
