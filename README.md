## Prequesites
- gh

## Usage
# First we need to setup gh client in our local by auth using 
```
gh auth login
```


# Then we can use bash script to create a repo & Add the following lines to your .bashrc or .zshrc

```
alias pushit='bash <path to Pushit>/pushit.bash $(basename "$PWD") "$PWD"'
```

# Problems

- If you run it for the first time it shows following  error 
```
ERROR: Repository not found.
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
```
But it works on second time. I don't know why it happens. If you know the reason please let me know.
