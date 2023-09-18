# Configuring Windows Registry Settings with Group Policy

### Create and link new GPO named "Registry Settings" to the domain.
![Registry](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Configuring%20Windows%20Registry%20Settings%20with%20Group%20Policy/sub/1.png)

### Righ-click the newly created GPO and select "Edit." In the Group Policy Management Editor, navigate to Computer Configuration/Preferences/Windows Settings/Registry and create a new Registry Item.
![Registry](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Configuring%20Windows%20Registry%20Settings%20with%20Group%20Policy/sub/2.png)

### In the New Registry Properties, set the following settings:
```
Action: Create
Hive: HKEY_CLASSES_ROOT
```
### Then browse the key path.
![Registry](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Configuring%20Windows%20Registry%20Settings%20with%20Group%20Policy/sub/3.png)

### In the key path, navigate to:
```
HKEY_CLASSES_ROOT\*\shell
```

### Then click "Select."
![Registry](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Configuring%20Windows%20Registry%20Settings%20with%20Group%20Policy/sub/4.png)

### Key path value should then be:
```
*\shell\Open with Notepad\command
```
### Value name: Default
### Value type: REG_SZ
### Value data: notepad.exe %1
### Then click "OK."
![Registry](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Configuring%20Windows%20Registry%20Settings%20with%20Group%20Policy/sub/5.png)

### On the DC Server, open the Command Prompt, then run the following command:
```
gpupdate /force
```
![Registry](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Configuring%20Windows%20Registry%20Settings%20with%20Group%20Policy/sub/6.png)

### When right-clicking a file, we can now select the newly created option of "Open with Notepad."
![Registry](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Configuring%20Windows%20Registry%20Settings%20with%20Group%20Policy/sub/7.png)

### Opening an image file in Notepad will look like this.
![Registry](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Configuring%20Windows%20Registry%20Settings%20with%20Group%20Policy/sub/8.png)
