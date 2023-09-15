<h1>Setting Up a Logon Banner (Interactive Logon)</h1>

### In Group Policy Management, create and link a new GPO named "Interactive Logon" to the domain. Then right-click and select "Edit."
![Logon](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Setting%20Up%20a%20Logon%20Banner%20(Interactive%20Logon)/sub/1.png)

### In the Group Policy Management Editor, navigate to Computer Configuration/Policies/Windows Settings/Security Settings/Local Policies/Security Options. Open properties for "Interactive Logon: Message title for users attempting to log on" and check the box that says "define this policy settings" and insert text of your choice and click "Apply."
![Logon](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Setting%20Up%20a%20Logon%20Banner%20(Interactive%20Logon)/sub/2.png)

### And do the same for "Interactive Logon: Message text for users attempting to log on."
![Logon](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Setting%20Up%20a%20Logon%20Banner%20(Interactive%20Logon)/sub/3.png)

### Run the following command in the Command Prompt on the client machine:

```
gpupdate /force
```
### Then log out.
![Logon](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Setting%20Up%20a%20Logon%20Banner%20(Interactive%20Logon)/sub/4.png)

### Signing back into the user account should display the Interactive Logon Banner as shown below.
![Logon](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Setting%20Up%20a%20Logon%20Banner%20(Interactive%20Logon)/sub/5.png)
