FROM debian:9

RUN apt-get update && apt-get install -y git ruby-dev rubygems zlib1g-dev fontforge make gcc g++
RUN git clone https://github.com/bramstein/sfnt2woff-zopfli.git sfnt2woff-zopfli && cd sfnt2woff-zopfli && make && mv sfnt2woff-zopfli /usr/local/bin/sfnt2woff
RUN git clone --recursive https://github.com/google/woff2.git && cd woff2 && make clean all && mv woff2_compress /usr/local/bin/ && mv woff2_decompress /usr/local/bin/
RUN gem install fontcustom

WORKDIR /app

