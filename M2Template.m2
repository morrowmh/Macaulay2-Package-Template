-- -*- coding: utf-8 -*-

-- Edit the following as necessary. See https://faculty.math.illinois.edu/Macaulay2/doc/Macaulay2-1.18/share/doc/Macaulay2/Macaulay2Doc/html/_new__Package.html for more information.

newPackage("M2Template",
    Headline => "One line description",
    Version => "0.1",
    Date => "Month XX, 20XX",
    Authors => {
        { Name => "Author1 Name", HomePage => "Author1 HomePage URL", Email => "Author1 Email" },
        { Name => "Author2 Name", HomePage => "Author2 HomePage URL", Email => "Author2 Email" }
    },
    DebuggingMode => true,
    HomePage => "Package HomePage URL"
)

--------------------------------------------------------------------------------
-- EXPORTS
--------------------------------------------------------------------------------

-- From ExampleCode1.m2
export { "exampleFunction1" }

-- From ExampleCode2.m2
export { "exampleFunction2" }

--------------------------------------------------------------------------------
-- BODY
--------------------------------------------------------------------------------

exampleFunction2 = method()
exampleFunction2 ZZ := (a) -> (
    gcd(a, 2)
)

exampleFunction1 = method()
exampleFunction1 ZZ := (a) -> (
    if isPrime a then a + 1
    else exampleFunction2 a
)

--------------------------------------------------------------------------------
-- DOCUMENTATION
--------------------------------------------------------------------------------

beginDocumentation()

doc ///
Node
    Key
        M2Template
    Headline
        A template for writing and organizing Macaulay2 packages
    Description
        Text
            This package is a minimal example template.
    Subnodes
        exampleFunction1
        exampleFunction2
Node
    Key
        exampleFunction1
        (exampleFunction1, ZZ)
    Headline
        Example function 1
    Description
        Text
            Given an integer $a$, output $a+1$ if $a$ is prime, or $\gcd(a,2)$ if $a$ is not prime.
Node
    Key
        exampleFunction2
        (exampleFunction2, ZZ)
    Headline
        Example function 2
    Description
        Text
            Computes $\gcd(a,2)$ and is used in exampleFunction1.
///

--------------------------------------------------------------------------------
-- TESTS
--------------------------------------------------------------------------------

-- Test 0
-- Checking exampleFunction1
TEST ///
assert(exampleFunction1(5) == 6)
///

-- Test 1
-- Checking exampleFunction2
TEST ///
assert(exampleFunction2(8) == 2)
///

end