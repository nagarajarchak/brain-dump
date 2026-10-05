### Adding postgres to path on mac

- Read terminal configuration script
```
nano ~/.zshrc
```
- Add to end of script file
```
export PATH="/Library/PostgreSQL/18/bin:$PATH"
```
- Refresh terminal file
```
source ~/.zshrc
```