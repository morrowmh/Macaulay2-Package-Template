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

load "ExportAndProtect.m2"

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- BODY ------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

load "ExampleCode1.m2"

load "ExampleCode2.m2"

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- DOCUMENTATION ---------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

beginDocumentation()

load "Documentation.m2"

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- TESTS -----------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

load "Tests.m2"

end