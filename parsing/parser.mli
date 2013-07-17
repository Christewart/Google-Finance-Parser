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

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> unit
