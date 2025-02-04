# Obsidian Sync


1. Edit `obsidian-sync.sh` to your needs, make it executed, and put it somewhere that makes sense.

2. Edit `com.obsidian-sync.plist` to your needs and put it in /Library/<USERNAME>/LaunchAgents.

3. Run the service

```
launchctl load ~/Library/LaunchAgents/com.obsidian.sync.plist
```

4. Verify that the job is running:
```
launchctl list | grep obsidian

```


# obsidian-sync
