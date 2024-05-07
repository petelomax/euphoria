# Tests

If you have the phix binary on your path, enter the command:

```bash
p test 
```
This will run the test file (test.exw).

If the phix binary is not on the PATH, in Windows enter

```cmd
\path\to\p.exw test
```

Linux:

```bash
/path/to/p test
```

## Skipped tests

Solving an exercise means making all its tests pass.
By default, all the tests in the test.exw file are executed.
To skip a test, prepend two dashes (the standard Phix comment marker) to the beginning of the line.

