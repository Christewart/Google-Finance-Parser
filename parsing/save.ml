
let create_table dbh  = 
	PGSQL(dbh) "database=stocks" "execute" 
		"create temporary table temp  
		(
		id serial not null primary key,
		google_id int not null, 
		ticker text not null,	
		exchange text not null,
		l decimal, 	
		l_cur decimal, 
		s int,
		ltt time not null, 
		lt timestamp not null, 
		c decimal, 
		cp decimal, 
		ccol text,
		eo text,
		delay text,
		op decimal not null,
		hi decimal not null,
		lo decimal not null,
		vo decimal not null, 
		hi52 decimal not null,
		lo52 decimal not null,
		mc decimal not null,
		pe text,
		fwpe text,
		beta decimal,
		eps decimal, 
		shares decimal not null,
		inst_own text not null,
		name text not null,	
		type text not null ); "  
let drop_table dbh table_name = 
	PGSQL(dbh) "database=stocks" "execute" "drop table $table_name" 
 
let _ =
	let dbh = PGOCaml.connect () ~database:"stocks" in
	let () = create_table dbh in () 
	
