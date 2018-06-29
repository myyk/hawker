FROM debian:jessie
MAINTAINER myyk.seok@gmail.com

# Install xpdf: https://www.xpdfreader.com/index.html
RUN apt-get update && apt-get install -y xpdf

ENV PDF_DIR /pdf
WORKDIR $PDF_DIR

ADD successful-tenders $PDF_DIR/

ENTRYPOINT find $PDF_DIR/ | xargs -L 1 -t pdftotext; cp -v $PDF_DIR/*.txt /output/
