open Array;; 

let process_file input = ( 
	try 
		let lexbuf = Lexing.from_channel input in 
		while true do 	
			Parser.main (Lexer.token) (lexbuf); 
			print_newline(); flush stdout 
		done ;  
	with Lexer.Eof -> exit 0	
	)	
;;

(*let init () = ( *) 
if Array.length(Sys.argv) > 1 then
 	(print_string "I have an input file!\n";	
	process_file (open_in Sys.argv.(1)) ;	
	print_string (Sys.argv.(1));
	print_string "\n";
	)
else 
	print_string "I don't have an input file!\n"
 (* )

init();;*)
	
