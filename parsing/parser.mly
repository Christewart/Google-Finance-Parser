%token <string> Key Value Billion Percent  
%token  Feed EndFeed 
%token <string> Id
%token Feeds EndFeeds
%token Comma,Colon,Quote
%token <string> Time,Datetime 
%token Map
%token Emptystring 
%token <float>  Float, 
%token <int> Int 
%token EOL
%nonassoc UMINUS        /* highest precedence */
%left Key Value Id 
%start main             /* the entry point */
%type <unit> main

%%
main:

	|	expr EOL {}  	
	| EOL {}	
expr:   	 
	| feeds 
		{}    
  | feed  
		{}					
 	| map	  
		{(*print_string $1*) }	
	| quote 
		{} 		
	| Comma expr 
		{print_string ","} 	
	| Comma 
		{print_string ","}	
	| value 
		{} 		
feeds: 
	| feed Comma feeds 
		{(*print_string "Feeds is composed of Feed \n"*)}	
	| Feeds feed EndFeeds 
		{ (*print_string "found a single feed \n"*)}  
	| Feeds 
		{print_string "["}
	| EndFeeds 
		{print_string "]"}	
feed:
	| Feed 	maps EndFeed 
		{ (* print_string "Found map inside of feed! \n" *) } 
	| Feed  maps EndFeed Comma feed 
		{ (* print_string "A Feed is composed of Maps. \n" *) } 
	| Feed  
		{print_string "{"}
	| EndFeed 
		{print_string "}"}  	
maps: 
	| map Comma maps {  } 
	| map {} 	
map: 
	| value Map value { print_string  (String.concat "" [$1;":"; $3]) }
value: 
	| Int 
		{ (*print_string "printing Int\n";*) string_of_int $1 }
	| Float  
			{(*print_string "printing Float\n";*) string_of_float $1} 
	| Key  
		{ (*print_string "printing Key\n";*) $1 } 
	| Value
		{(*print_string "printing Value\n";*) $1 } 
	| Time 
		{ $1 }	
	| Datetime 
		{ $1 }
	| Emptystring
		{""} 
	| Billion	
		{ $1 }
	| Percent 
		{ $1 }  
quote: 
	| Quote {print_string "\""} 	
	;
