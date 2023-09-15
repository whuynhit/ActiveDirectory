<h1>Deploying Fine Grained Password Policies (PSOs)</h1>

### In the Domain Groups OU, create a new group called "7 Day Password Age." 
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/1.png)

### Then add a member to the group.
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/2.png)

### In Server Manager > Tools > ADSI Edit, navigate to DC=mydomain,DC=com/CN=System/CN=Password Settings Container. Right-click > New > Object.
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/3.png)

### Click "Next."
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/4.png)

### Common-Name value: "7DayPasswordAge." Then click "Next."
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/5.png)

### Password Settings Precedence Value: 1
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/6.png)

### Password reversible encryption status for user accounts value: False
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/7.png)

### Password History Length for user accounts; 24
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/8.png)

### Password complexity status for user accounts: TRUE
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/9.png)

### Minimum password length for user accounts: 14
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/10.png)

### Minimum Password Age for user accounts: 00:00:00:00
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/11.png)

### Maximum Password Age for user accounts: 07:00:00:00
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/12.png)

### Lockout threshold for lockout of user accounts: 3
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/13.png)

### Observation Window for lockout of user accounts: 00:00:15:00
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/14.png)

### Lockout duration for locked out user accounts: 00:00:15:00
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/15.png)

### Click "Finish."
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/16.png)

### In the properties of CN=7DaysPasswordAge, find "msDS-PSOAppliesTo" and select "Edit." 
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/17.png)

### And choose "Add Windows Account." Search and select the "7 Day Password Age" group and click "OK."
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/18.png)

### Click "OK" and "Apply."
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/19.png)

### To confirm that the new policy has taken effect, open Powershell and run the following command:
```
import-module Active Directory
Get-ADUser -f {GivenName -eq 'Jason'} –Properties "DisplayName", "msDS-UserPasswordExpiryTimeComputed" | Select-Object -Property "Displayname",@{Name="ExpiryDate";Expression={[datetime]::FromFileTime($_."msDS-UserPasswordExpiryTimeComputed")}}
```
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/20.png)
