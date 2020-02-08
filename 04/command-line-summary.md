## Keyboard commands
- `tab`
- `cmd + c`
- `up arrow`, `down arrow`

## Relative directories

- `/` Computer's root folder
- `~` User's root folder
- `.` Current folder
- `..` Parent folder


## CLI commands

A summary of the most useful commands for our purposes. Numerous _summary_ documents can be found for [all of the available unix commands](http://cheatsheetworld.com/programming/unix-linux-cheat-sheet/).

### Miscellaneous

- `whoami` Your username
- `date` Current date
- `clear` Clears the terminal
- `man [command]` Read the manual for any command

### File system

- `pwd` Present working director (path)
- `ls -l` List the files in the folder (`-l` = long form)
- `cd [path/folder]` Change directory
- `mkdir [path/folder]` Make a directory
- `touch [path/file]` Make a file
- `cp [file] [path/folder]` Copy a file
- `cp -r [folder] [path]` Copy a folder and all of its containing files (`-r` = recursively)
- `mv [file] [path/file]` Move a file
  - Note: file names must be the same or the first will be renamed to the second. This of course is also how you rename files, for example: `mv old.md new.md` renames `old.md` to `new.md` without moving it
- `rm [path/file]` Remove a file
- `rm -r [path/folder]` Remove a folder an all containing files (`-r` = recursively)

### Output content

- `echo "[output]"` Write output to the terminal ("standard output")
- `cat [path/file]` Write file content to the terminal ("standard output")

#### Input/Output redirection (`>`, `>>`, `<<`)
- `[output] > [path/file]` Overwrites an entire file with output content
- `[output] >> [path/file]` Appends output content to the end of a file
- `[path/file] << [delimiter]` Writes to a file from input content until the delimiter
*Note*: Both commands will create a new file if it does not already exist.

Some example uses of `>`, `>>` and `<<` with `echo` and `cat`:
- `echo "Hello world" > [path/file]` Write (replace) the file content with "Hello world"
- `echo "Hello world" >> [path/file]` Append "Hello world" to the end of the file
- Writes (replaces) file content with "Hello world" (creates the file if it doesn't exist)
   ```shell
   cat > [path/file] << EOF
   Hello world
   EOF
   ```
- Append "Hello world" to the end of file content (creates the file if it doesn't exist)
   ```shell
   cat >> [path/file] << EOF
   Hello world
   EOF
   ```
*Note*: The `[delimiter]` can be any string of text (EOF just stand for "end of file")
