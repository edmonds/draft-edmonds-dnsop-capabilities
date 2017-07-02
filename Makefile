MMARK := mmark -xml2 -page

objects := $(patsubst %.md,%.md.txt,$(wildcard *.md))

all: $(objects)

%.md.txt: %.md
	$(MMARK) $< > $<.xml
	xml2rfc --text --html $<.xml
