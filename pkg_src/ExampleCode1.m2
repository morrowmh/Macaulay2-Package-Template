load "ExampleCode2.m2"

--------------------------------------------------------------------------------
-- BEGIN: ExampleCode1.m2 ------------------------------------------------------
--------------------------------------------------------------------------------

exampleFunction1 = method()
exampleFunction1 ZZ := (a) -> (
    if isPrime a then a + 1
    else exampleFunction2 a
)

--------------------------------------------------------------------------------
-- END: ExampleCode1.m2 --------------------------------------------------------
--------------------------------------------------------------------------------