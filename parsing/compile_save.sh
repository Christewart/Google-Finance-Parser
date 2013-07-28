ocamlfind ocamlc -package pgocaml,pgocaml.syntax -syntax camlp4o -c pgex.ml
ocamlfind ocamlc -package pgocaml -linkpkg -o pgex pgex.cmo
