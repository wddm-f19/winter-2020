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

### Writing content (to files)
- `echo "[content]"` Output to the command line
- `echo "[content]" > [path/file]` Write (replace) file content (creates the file if it doesn't exist)
- `echo "[content]" >> [path/file]` Append file content (creates the file if it doesn't exist)
- Write (replace) file content (creates the file if it doesn't exist)
   ```
   cat > [path/file] << EOF
   [content]
   EOF
   ```
- Append file content (creates the file if it doesn't exist)
   ```
   cat >> [path/file] << EOF
   [content]
   EOF
   ```

### 
- `sh [path/file]`
- `alias [name]='[command]'`
- `unalias [name]`
- `man [command]` Read the manual for any command


## Shell commands

Read input
```shell
read -rp "Project name: " name
```

File input
```shell
```

Operators
```shell
```

Condition statements
```shell
if [ condition ]
then

else

fi
```

While loop
```shell
```