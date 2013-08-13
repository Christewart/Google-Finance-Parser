ocamlfind ocamlc -package pgocaml,pgocaml.syntax -syntax camlp4o -c save.ml
ocamlfind ocamlc -package pgocaml -linkpkg -o save save.cmo
