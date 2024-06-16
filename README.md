# Haskell

## Core concepts

### Basic Concepts

1. **Function**: A mapping from inputs to outputs. Functions are first-class citizens in Haskell, meaning they can be passed as arguments and returned as values.
2. **Expression**: Any combination of variables, constants, and functions that can be evaluated to produce a value.
3. **Variable**: A name that refers to a value.
4. **Constant**: A value that does not change.

### Types and Type System

5. **Type**: A label for a set of values. Every expression in Haskell has a type.
6. **Type Inference**: The automatic deduction of the type of an expression by the Haskell compiler.
7. **Type Annotation**: Explicitly specifying the type of an expression using `::`.
8. **Type Variable**: A placeholder for any type, used in polymorphic functions (e.g., `a` in `id :: a -> a`).
9. **Type Constraint**: A restriction that specifies that a type must be an instance of a particular type class (e.g., `Ord a => a -> a`).
10. **Type Class**: A collection of types that support certain operations (e.g., `Eq`, `Ord`, `Show`).

### Functions and Operations

11. **Higher-Order Function**: A function that takes other functions as arguments or returns a function as a result.
12. **Currying**: The process of transforming a function that takes multiple arguments into a sequence of functions that each take a single argument.
13. **Partial Application**: Providing fewer than the total number of arguments to a function, producing another function that takes the remaining arguments.
14. **Lambda Function**: An anonymous function defined using a backslash (`\`) followed by parameters and an expression (e.g., `\x -> x + 1`).

### Data Structures

15. **List**: An ordered collection of elements of the same type.
16. **Tuple**: A fixed-size collection of elements that can be of different types.
17. **Maybe**: A type that represents an optional value (either `Just a` or `Nothing`).
18. **Either**: A type that represents a value that can be one of two types (either `Left a` or `Right b`).

### Pattern Matching and Guards

19. **Pattern Matching**: A mechanism for checking a value against a pattern and binding variables to successful matches.
20. **Guard**: A boolean expression used to choose between different patterns in function definitions and case expressions.

### Modules and Imports

21. **Module**: A collection of related functions, types, and type classes.
22. **Import**: Bringing functions, types, and type classes from another module into scope.

### Monads and Functors

23. **Functor**: A type class for types that can be mapped over (e.g., lists).
24. **Monad**: A type class for types that represent computations, allowing for the chaining of operations.
25. **Monad Transformer**: A type that combines the effects of multiple monads.

### Advanced Concepts

26. **GADT (Generalized Algebraic Data Type)**: A generalization of algebraic data types that allows more precise type annotations.
27. **Type Family**: A way to define functions at the type level, allowing type-level computation.
28. **Kind**: The type of a type, classifying types into various categories.

### Syntax and Constructs

29. **Let Binding**: A local binding of variables within an expression (`let x = 5 in x + 3`).
30. **Where Clause**: A way to bind variables at the end of a function definition.
31. **Do Notation**: Syntactic sugar for sequencing monadic operations.
32. **List Comprehension**: A concise way to generate lists based on existing lists.

### Compilation and Execution

33. **GHC (Glasgow Haskell Compiler)**: The most commonly used Haskell compiler.
34. **REPL (Read-Eval-Print Loop)**: An interactive environment for evaluating Haskell expressions (e.g., GHCi).

### Miscellaneous

35. **Laziness**: Evaluation strategy where expressions are not evaluated until their values are needed.
36. **Pure Function**: A function that has no side effects and always produces the same output for the same input.
37. **Side Effect**: An observable interaction with the outside world (e.g., IO operations).
38. **IO**: A monad used for input and output operations, which involve side effects.

## Function declaration concepts

1. **Function Name and Parameters:**
   A function in Haskell starts with the function name followed by its
   parameters.
2. **Type Signature:**
   The type signature specifies the types of the parameters and the return type.
   It is written before the function definition and is optional but highly
   recommended for clarity and type checking.
3. Function Definition:
   The function definition specifies how the function operates on its
   parameters. This can be done using equations, pattern matching, guards, or a
   combination.
4. Combining Components:
   Here's a complete example combining type signatures, pattern matching, and guards:

```haskell
describeList :: [a] -> String
describeList xs
  | null xs   = "The list is empty."
  | otherwise = "The list is non-empty."
```

5. Lambda Functions:
   Lambda functions are anonymous functions defined using the \ syntax.
6. Currying:
   Haskell functions are curried by default, meaning they take arguments one at a time.


## GHCI Commands

### Basic Commands

1. **`:load` or `:l`** - Loads a Haskell file:
   ```haskell
   :load MyFile.hs
   ```

2. **`:reload` or `:r`** - Reloads the current file:
   ```haskell
   :reload
   ```

3. **`:module` or `:m`** - Changes the module context:
   ```haskell
   :module Data.List
   ```

4. **`:quit` or `:q`** - Exits GHCi:
   ```haskell
   :quit
   ```

### Information Commands

5. **`:type` or `:t`** - Shows the type of an expression:
   ```haskell
   :type map
   ```

6. **`:info` or `:i`** - Provides information about a module, class, or function:
   ```haskell
   :info Maybe
   ```

7. **`:kind` or `:k`** - Shows the kind of a type:
   ```haskell
   :kind Maybe
   ```

### Debugging Commands

8. **`:trace`** - Executes an expression, showing the evaluation steps:
   ```haskell
   :trace (\x -> x + 1) 5
   ```

9. **`:backtrace` or `:bt`** - Displays the current call stack:
   ```haskell
   :backtrace
   ```

10. **`:force`** - Forces evaluation of an expression to the weak head normal form:
   ```haskell
   :force [1, 2, 3]
   ```