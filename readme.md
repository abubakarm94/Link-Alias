# Link Alias Script

> xxx: The goal of this script is to ease the process of creating permanent aliases on Linux based computers

> xxx: Before ['linkalias.sh'] if you wanted to create a permanent alias you had to open the ['.bashrc'] file in the root of your system and manually type the alias there

> xxx: ['linkalias.sh'] is here to simplify the process.

Pull requests with more features is welcome.

## Set up

To use you will need to set up the first first:

```sh
# After downloading 'linkalias.sh', you will first need to make it an executable file
chmod +x linkalias.sh

# You will run 'linkalias.sh' for the first time so it can place itself in the correct directory
./linkalias.sh
```

After set up, can now be used by just calling linkalias: 


## Usage

```sh
# For example -- we will make a alias that will print 'hello world'
linkalias print_test to "echo hello world"

# this can also done by:
linkalias print_test = "echo hello world"

# now simply typing print_test in the command line will print out 'hello world'
print_test
```

---
