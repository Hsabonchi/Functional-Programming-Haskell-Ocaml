
#### Records
<pre>
▶ Hetergeneous with named fields, Like C struct / Java object.
▶ Introduced via the type keyword, each field is given a type.
▶ Constructed with {..}, assign each field.
▶ Dot notation is used to access record field values  like sam.age;;
▶ Fields declared mutable are changeable using <- operator.
▶ Fields declared mutable are changeable using <- operator
  
   # type mut_hob = {
    mutable name : string; (*changable*)
    age : int (*not*)
    };;
  
  ▶ Before making a record, however, you must give its type a name, using the type keyword. 
   To declare a record type, the type must be enclosed in braces and each field must be given 
    a name and a type of its own. 
    
  type hobbit = {name : string; age : int};; (* two fields *)
  type hobbit = { name : string; age : int; }
  
 let h = {name="Smeagol"; age=25};;
 val h: mut_hob = {name="Smeagol"; age=25}
 h.name <- "Gollum";; (* assignment *)
 </pre>
 
