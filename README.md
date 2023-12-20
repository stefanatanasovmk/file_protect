# Use the scripts in Windows enviroment

1. Add the path of the scripts to system environment variable `PATH` as `/path/to/the/script/`

2. find the .bashrc file in the home directory, and add the following line to the file:

```
alias encrypt='~/path/to/the/script/encrypt.sh'
alias decrypt='~/path/to/the/script/decrypt.sh'
```

!NOTE: If you don't have the .bashrc file, you can create one in the home directory

3. Save the file and restart the terminal

4. Now you can use the scripts in the terminal by typing `encrypt path/to/file` or `decrypt path/to/the/file`
