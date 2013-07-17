open Lwt;;
open Cohttp;;
open List;;
(* a simple function to access the content of the response *)

let pull l = (
let ticker_list = tl l in  
let ticker_string = String.concat "," ticker_list in 

let content = function
| Some (_, body) -> Cohttp_lwt_body.string_of_body body
| None -> assert false in  

let base_uri = "https://www.google.com/finance/info?infotype=infoquoteall&q=" in 
 
let request_uri = String.concat "" [base_uri;ticker_string] in 	  
(* launch both requests in parallel *)
let t = Lwt_list.map_p Cohttp_lwt_unix.Client.get
(List.map Uri.of_string [request_uri] ) in 

(* maps the result through the content function *)
let t2 = t >>= Lwt_list.map_p content in  

(* launch the event loop *)
let v = Lwt_main.run t2 in 

let f = open_out "pull.txt" in  
let os x = output_string f x in  

List.map os v
);;

if Array.length(Sys.argv) > 1 then (  
pull ( Array.to_list(Sys.argv) );
print_string "Results are in pull.txt!\n" 
) 
else ( 
print_string "You did not provide any tickers!\n";
print_string "Here is a correct example: \n"; 
print_string "./pull.native tsla goog \n";
)  
;; 
