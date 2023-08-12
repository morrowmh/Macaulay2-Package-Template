-- -*- coding: utf-8 -*-

newPackage("M2Template",
    Headline => "One line description",
    Version => "0.0.0", -- See https://semver.org
    Date => "(Month) (Day), (Year)",
    Authors => {
        { Name => "Author1 Name", HomePage => "Author1 HomePage URL", Email => "Author1 Email" },
        { Name => "Author2 Name", HomePage => "Author2 HomePage URL", Email => "Author2 Email" }
    },
    DebuggingMode => true,
    HomePage => "Package HomePage URL"
)

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- EXPORT AND PROTECT ----------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

export {
    -- Methods
    "exampleFunction1", "exampleFunction2"
}

scan({
    -- List symbols to be protected here
}, protect)

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- BODY ------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

exampleFunction1 = method()
exampleFunction1 ZZ := (a) -> (
    if isPrime a then a + 1
    else exampleFunction2 a
)

exampleFunction2 = method()
exampleFunction2 ZZ := (a) -> (
    gcd(a, 2)
)

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- DOCUMENTATION ---------------------------------------------------------------
--------------------------------------------------------------------------------
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
--------------------------------------------------------------------------------
-- TESTS -----------------------------------------------------------------------
--------------------------------------------------------------------------------
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