TEX=xelatex
TARGET=resume.tex
INT_FILES=$(shell echo resume.{aux,log,out})

default: build

build:
	$(TEX) $(TARGET)

clean:
	echo $(INT_FILES)
