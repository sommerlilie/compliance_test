FROM alpine:3.13
 
RUN apk add --update --no-cache python3 nodejs npm make yarn git doxygen graphviz ghostscript-fonts font-bitstream-type1 ttf-freefont texmf-dist texlive texlive-full texlive-luatex && \ 
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    pip3 install pyyaml && \
    pip3 install --upgrade Sphinx && \ 
    pip3 install --upgrade recommonmark && \
    pip3 install sphinx-rtd-theme && \
    pip3 install sphinxcontrib-openapi && \
    pip3 install myst-parser && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
    if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python; fi && \
    rm -r /root/.cache 