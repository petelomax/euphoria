# Tests

## From the command line
 
Simply type `p test`. It is assumed that the path to the phix binaries has been declared in the PATH environment variable.
Should an exercise contain test.exw, test01.exw, test02.exw, and test03.exw, that indicates the parts can be run separately,
and test.exw simply runs the other three, with no other tests itself. Should there be any test_extra[nn].exw files, those
are optional, CLI-only, and not run by test.exw, and may have a similar numbered/not-numbered pattern.

(planned but not yet written) Alternatively run `p exercism` from the phix install directory, and specify where exercism 
has been(or should be) installed, to run a more modern GUI wrapper of the CLI.

See [Unit Testing][unit-testing] for details of the testing framework normally used.
  
## Editing the test.exw file(s)
 
This is encouraged at the beginning of your journey. Insert a `--` before all but the first one or two tests. Save the test file. 
Write your code to solve the first test or two. Then progressively enable more tests until you can pass all of them.

[unit-testing]: http://phix.x10.mx/docs/html/unit_test.htm
