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

### Spin up postgres server / db

- Run postgres server

```
sudo -u postgres pg_ctl -D /Library/PostgreSQL/18/data/ start
```

- Run postgres instance from terminal

```
psql -U postgres
```
### Commands

- List databases

```
\l
```

- Connect to db
```
\c <db_name>
```

- List tables in db

```
\dt
```