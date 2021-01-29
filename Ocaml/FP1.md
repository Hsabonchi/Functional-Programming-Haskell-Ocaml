 <pre>
    Some distinguishing features of Functional Programming?:
    
    1. Recursion instead of iteration.
    2. Pattern matching on values.
    3. Expressions instead of statements.
    4. Functions as first-class citizens.
    
    ▶ You can write “functional code” in almost any language.
    
  
     What is a statically typed?
     A language is statically typed if the type of a variable is known at compile time.
     
     ▶ Every expression and function has a type.
     ▶ The compiler prevents wrong combinations.
    
    
     <h4> OCamel </h4> 
     ▶ OCaml eliminates many of the type-related runtime problems associated with dynamically typed languages.
     ▶ OCaml t's used in environments where <a href="https://ocaml.org/learn/companies.html"> a single mistake can cost millions and speed matters</a>
     ▶ OCaml is pretty simple, which is one reason it's often used as a teaching language.
     
     <h3> Strengths </h3>
     - A powerful type system
     - Automatic memory management, thanks to a fast, unobtrusive, incremental garbage collector.
     - Efficient native code compilers. In addition to its bytecode compiler, OCaml offers a compiler that produces efficient machine code for many architectures.
     
     Functions
       OCaml is a functional programming language: there is no restriction on the definition and use of functions. In other words, functions are ordinary values: a        function can be passed as an argument to a function or returned by a function.
       
     Imperative features
       
        OCaml offers a full array of imperative features. In particular, variables, arrays, and record components can be declared as modifiable. Several varieties           of loops are available.
        
     Data Types
      OCaml offers numerous built-in data types, including:
      basic types: integers, floating point numbers, booleans, characters, strings.
      more sophisticated data types: tuples, arrays, lists, sets, hash tables, queues, stacks, data streams.
      
     Why Ocamel
    Small, orthogonal core based on the lambda calculus.
    –Control is based on (recursive) functions.
    –Instead of for-loops, while-loops, do-loops, iterators, etc.
      • can be defined as library functions.–Makes it easy to define semantics Supports first-class, lexically scoped, higher-orderprocedures–a.k.a. first-class          functions or closures or lambdas
      .–first-class:  functions are data values like any other data value
       • like numbers, they can be stored, defined anonymously, ...  
      – lexically scoped:  meaning of variables determined statically.
      – higher-order:  functions as arguments and results
       • programs passed to programs; generated from programs
 </pre>
