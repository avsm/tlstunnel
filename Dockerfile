FROM ocaml/opam:alpine
RUN sudo apk add ncurses-dev ncurses
RUN opam pin add -n tlstunnel --dev && \
    opam depext -u tlstunnel && \
    opam install -j 2 -y tlstunnel
