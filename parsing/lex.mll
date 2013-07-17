(* File lexer.mll *)

{
(*Header*)
open Parser        (* The type token is defined in parser.mli *)

exception Eof
open Char
open Lexing 
}
(*Identifiers*)

let comma = ","
let quote = "\"" 

let key =  ['A'-'Z' '_' 'a'-'z']+  

let map = ":"  
let feed = "{" 
let endfeed = "}"  
let feeds = "["
let endfeeds = "]"


let value = ['A'-'Z' 'a'-'z' '0'-'9' ' ' ]+ 
let integer =  ['0' - '9']+ 
let float_point = integer "." integer
let time = ['0'-'9']+ ':' ['0'-'9']+ ("AM"|"PM")+ ' ' ['A'-'Z']+


(*Entry Points *) 
rule token  =  parse
  [' ' '\t'] { token lexbuf }     (* skip blanks *)
  | ['\n' ]  { EOL }			
	| comma 	 { Comma } 	
	| time as t { Time(t)} 	
	| float_point as expr { Float(float_of_string expr) } 
	| integer as expr { Int(int_of_string expr) }  
	| key as expr   { Key(expr) }	
	| value as expr { Value(expr) } 	    	
	| map { Map } 		
	| feed    { Feed } 
	| endfeed { EndFeed }	
 	| feeds { Feeds} 
	| endfeeds { EndFeeds}  			
	| quote 	{token lexbuf } 	
	| eof      { raise Eof }
	
(*Trailer *) 
(*note i have deleted the 'quote' terminal from above*)
