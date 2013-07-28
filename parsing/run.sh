ocamllex lexer.mll
ocamlyacc parser.mly
ocamlc -c parser.mli
ocamlc -c lexer.ml
ocamlc -c parser.ml
ocamlc -c calc.ml
ocamlc -o calc str.cma lexer.cmo parser.cmo calc.cmo
ocamlc -c parse_feed.ml
ocamlc -o parse_feed str.cma lexer.cmo parser.cmo parse_feed.cmo


