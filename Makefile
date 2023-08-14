FILES = $(wildcard src/*.md)
SOURCE = $(shell echo $(FILES) | sort -h)

# TODO: cambiarle el nombre a esta pinga
OUT = out/Documento.pdf

$(OUT): meta.yaml $(SOURCE)
	pandoc -t pdf -o $@ --metadata-file=$^

show: $(OUT)
	zathura $<
