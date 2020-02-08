## Shell scripting

### Execution
- `sh [path/file]` Executes a shell script in a new thread
- `source [path/file]` Execute a shell script in the current thread
- `alias [name]='[command]'` Stores a longer command as a single short name
- `unalias [name]` Releases a keyword as a shortcut


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

```shell
case $letter in
    y|Y)
      echo "Yes";;
    n|N)
      echo "No";;
    *)
      echo "Woops!";;
      exit;;
esac
```

While loop
```shell
```
