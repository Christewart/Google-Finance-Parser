type token =
  | Key of (string)
  | Value of (string)
  | Billion of (string)
  | Percent of (string)
  | Feed
  | EndFeed
  | Id of (string)
  | Feeds
  | EndFeeds
  | Comma
  | Colon
  | Quote
  | Time of (string)
  | Datetime of (string)
  | Map
  | Emptystring
  | Float of (float)
  | Int of (int)
  | EOL

open Parsing;;
let _ = parse_error;;
let yytransl_const = [|
  261 (* Feed *);
  262 (* EndFeed *);
  264 (* Feeds *);
  265 (* EndFeeds *);
  266 (* Comma *);
  267 (* Colon *);
  268 (* Quote *);
  271 (* Map *);
  272 (* Emptystring *);
  275 (* EOL *);
    0|]

let yytransl_block = [|
  257 (* Key *);
  258 (* Value *);
  259 (* Billion *);
  260 (* Percent *);
  263 (* Id *);
  269 (* Time *);
  270 (* Datetime *);
  273 (* Float *);
  274 (* Int *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\003\000\003\000\003\000\003\000\004\000\004\000\004\000\
\004\000\008\000\008\000\005\000\007\000\007\000\007\000\007\000\
\007\000\007\000\007\000\007\000\007\000\006\000\000\000"

let yylen = "\002\000\
\002\000\001\000\001\000\001\000\001\000\001\000\002\000\001\000\
\001\000\003\000\003\000\001\000\001\000\003\000\005\000\001\000\
\001\000\003\000\001\000\003\000\001\000\001\000\001\000\001\000\
\001\000\001\000\001\000\001\000\001\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\023\000\024\000\028\000\029\000\000\000\017\000\
\000\000\013\000\000\000\030\000\025\000\026\000\027\000\022\000\
\021\000\002\000\031\000\000\000\003\000\000\000\005\000\006\000\
\000\000\000\000\000\000\000\000\000\000\007\000\001\000\000\000\
\000\000\000\000\000\000\011\000\010\000\000\000\020\000\018\000\
\000\000\015\000"

let yydgoto = "\002\000\
\019\000\020\000\021\000\022\000\023\000\024\000\025\000\028\000"

let yysindex = "\008\000\
\002\255\000\000\000\000\000\000\000\000\000\000\050\255\000\000\
\019\255\000\000\032\255\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\250\254\000\000\007\255\000\000\000\000\
\011\255\012\255\011\255\024\255\022\255\000\000\000\000\053\255\
\050\255\050\255\029\255\000\000\000\000\007\255\000\000\000\000\
\019\255\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\046\255\000\000\
\041\255\000\000\051\255\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\052\255\000\000\000\000\
\054\255\037\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\038\255\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000"

let yygindex = "\000\000\
\000\000\058\000\040\000\247\255\251\255\000\000\250\255\041\000"

let yytablesize = 75
let yytable = "\029\000\
\027\000\026\000\003\000\004\000\005\000\006\000\007\000\008\000\
\001\000\009\000\010\000\011\000\031\000\012\000\013\000\014\000\
\032\000\015\000\016\000\017\000\018\000\034\000\038\000\007\000\
\008\000\033\000\039\000\027\000\026\000\035\000\036\000\042\000\
\003\000\004\000\005\000\006\000\007\000\008\000\041\000\009\000\
\010\000\011\000\019\000\012\000\013\000\014\000\014\000\015\000\
\016\000\017\000\003\000\004\000\005\000\006\000\016\000\016\000\
\014\000\007\000\008\000\012\000\009\000\010\000\013\000\014\000\
\016\000\015\000\016\000\017\000\030\000\008\000\004\000\037\000\
\009\000\000\000\040\000"

let yycheck = "\009\000\
\007\000\007\000\001\001\002\001\003\001\004\001\005\001\006\001\
\001\000\008\001\009\001\010\001\019\001\012\001\013\001\014\001\
\010\001\016\001\017\001\018\001\019\001\010\001\032\000\005\001\
\006\001\015\001\033\000\034\000\034\000\006\001\009\001\041\000\
\001\001\002\001\003\001\004\001\005\001\006\001\010\001\008\001\
\009\001\010\001\006\001\012\001\013\001\014\001\009\001\016\001\
\017\001\018\001\001\001\002\001\003\001\004\001\009\001\010\001\
\019\001\005\001\006\001\019\001\008\001\009\001\013\001\014\001\
\019\001\016\001\017\001\018\001\011\000\019\001\019\001\032\000\
\019\001\255\255\034\000"

let yynames_const = "\
  Feed\000\
  EndFeed\000\
  Feeds\000\
  EndFeeds\000\
  Comma\000\
  Colon\000\
  Quote\000\
  Map\000\
  Emptystring\000\
  EOL\000\
  "

let yynames_block = "\
  Key\000\
  Value\000\
  Billion\000\
  Percent\000\
  Id\000\
  Time\000\
  Datetime\000\
  Float\000\
  Int\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 20 "parser.mly"
            ()
# 149 "parser.ml"
               : unit))
; (fun __caml_parser_env ->
    Obj.repr(
# 21 "parser.mly"
       ()
# 155 "parser.ml"
               : unit))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'feeds) in
    Obj.repr(
# 24 "parser.mly"
  ()
# 162 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'feed) in
    Obj.repr(
# 26 "parser.mly"
  ()
# 169 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'map) in
    Obj.repr(
# 28 "parser.mly"
  ((*print_string $1*) )
# 176 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'quote) in
    Obj.repr(
# 30 "parser.mly"
  ()
# 183 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 32 "parser.mly"
  (print_string ",")
# 190 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 34 "parser.mly"
  (print_string ",")
# 196 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'value) in
    Obj.repr(
# 36 "parser.mly"
  ()
# 203 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'feed) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'feeds) in
    Obj.repr(
# 39 "parser.mly"
  (print_string "Feeds is composed of Feed \n")
# 211 "parser.ml"
               : 'feeds))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'feed) in
    Obj.repr(
# 41 "parser.mly"
  (print_string "found a single feed \n")
# 218 "parser.ml"
               : 'feeds))
; (fun __caml_parser_env ->
    Obj.repr(
# 43 "parser.mly"
  (print_string "[")
# 224 "parser.ml"
               : 'feeds))
; (fun __caml_parser_env ->
    Obj.repr(
# 45 "parser.mly"
  (print_string "]")
# 230 "parser.ml"
               : 'feeds))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'maps) in
    Obj.repr(
# 48 "parser.mly"
  (print_string "Found map inside of feed! \n")
# 237 "parser.ml"
               : 'feed))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'maps) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'feed) in
    Obj.repr(
# 50 "parser.mly"
  (print_string "A Feed is composed of Maps. \n")
# 245 "parser.ml"
               : 'feed))
; (fun __caml_parser_env ->
    Obj.repr(
# 52 "parser.mly"
  (print_string "{")
# 251 "parser.ml"
               : 'feed))
; (fun __caml_parser_env ->
    Obj.repr(
# 54 "parser.mly"
  (print_string "}")
# 257 "parser.ml"
               : 'feed))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'map) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'maps) in
    Obj.repr(
# 56 "parser.mly"
                  (  )
# 265 "parser.ml"
               : 'maps))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'map) in
    Obj.repr(
# 57 "parser.mly"
       ()
# 272 "parser.ml"
               : 'maps))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'value) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'value) in
    Obj.repr(
# 59 "parser.mly"
                   ( print_string  (String.concat "" [_1;":"; _3]) )
# 280 "parser.ml"
               : 'map))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 62 "parser.mly"
  ( print_string "printing Int\n"; string_of_int _1 )
# 287 "parser.ml"
               : 'value))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 64 "parser.mly"
   (print_string "printing Float\n"; string_of_float _1)
# 294 "parser.ml"
               : 'value))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 66 "parser.mly"
  ( print_string "printing Key\n"; _1 )
# 301 "parser.ml"
               : 'value))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 68 "parser.mly"
  (print_string "printing Value\n"; _1 )
# 308 "parser.ml"
               : 'value))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 70 "parser.mly"
  ( _1 )
# 315 "parser.ml"
               : 'value))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 72 "parser.mly"
  ( _1 )
# 322 "parser.ml"
               : 'value))
; (fun __caml_parser_env ->
    Obj.repr(
# 74 "parser.mly"
  ("")
# 328 "parser.ml"
               : 'value))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 76 "parser.mly"
  ( _1 )
# 335 "parser.ml"
               : 'value))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 78 "parser.mly"
  ( _1 )
# 342 "parser.ml"
               : 'value))
; (fun __caml_parser_env ->
    Obj.repr(
# 80 "parser.mly"
         (print_string "\"")
# 348 "parser.ml"
               : 'quote))
(* Entry main *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let main (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : unit)
