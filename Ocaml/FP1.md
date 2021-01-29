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
      
   
    OCaml carefully distinguishes between float, the type for floating-point numbers,. 
    The types have different literals (6.instead of 6) and different infix operators (+. instead of +),
    and OCaml doesn’t automatically cast between thesetypes. 
    This can be a bit of a nuisance, but it has its benefits,since it prevents some kinds of bugs that 
    arise in other languages due to unexpected differences between the behavior of int and float. 
    For example, in many languages, 1 / 3 is zero, but 1.0 /. 3.0 is a third.
  </pre>
