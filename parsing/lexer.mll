(* File lexer.mll *)

{
(*Header*)
open Parser        (* The type token is defined in parser.mli *)

exception Eof
open Char
open Lexing 

let strip_last_char s = 
	let len = String.length s in 	
	Str.string_before s (len-1) 

}
(*Identifiers*)

let comma = ","
let quote = "\"" 
let emptystring = quote quote  
let key =  ['A'-'Z' '_' 'a'-'z']+  

let map = ":"  
let feed = "{" 
let endfeed = "}"  
let feeds = "["
let endfeeds = "]"


let value = ['A'-'Z' 'a'-'z' '0'-'9' ' ' ]+ 
let integer = ('-'|'+')*  ['0' - '9']+ 
let float_point = integer "." integer
let million = float_point ['M'] 
let billion = float_point ['B'] 
let percent = integer ['%']
 
let time = integer ':' integer ("AM"|"PM") ' ' ['A'-'Z']+
let date = ("Jan"|"Feb"|"Mar"|"Apr"|"May"|"June"|"July"|"Aug"|"Sep"|"Oct"|"Nov"|"Dec") " "  integer comma " " time 

(*Entry Points *) 
rule token  =  parse
  [' ' '\t'] 
		{ token lexbuf }     (* skip blanks *)
  | ['\n' ]  
		{ EOL }			
	| comma 	 
		{ Comma } 	
	| date as d	
		{Datetime(d)} 	
	| time as t 
		{Time(t)} 	
	| float_point as expr 
		{Float(float_of_string expr) } 
	| integer as expr 
		{Int(int_of_string expr) }
	| million as mil 
		{ 	let number = strip_last_char mil in 	
				Float((float_of_string number) *. 1000000.0) 
		} 
	| billion as bil 
		{ Billion(bil) }   
	| percent as p 
		{ 
		Percent(strip_last_char p) } 	
	| key as expr   
		{Key(expr) }	
	| value as expr 
		{Value(expr) } 	    	
	| map 
		{Map } 		
	| feed    
		{Feed } 
	| endfeed 	
		{EndFeed }	
 	| feeds 
		{Feeds} 
	| endfeeds 
		{EndFeeds}  			
	| quote 	
		{token lexbuf } 	
	| emptystring 	
		{Emptystring} 	
	| eof      
		{ raise Eof }
	
(*Trailer *) 
(*note i have deleted the 'quote' terminal from above*)
