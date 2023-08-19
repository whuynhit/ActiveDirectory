<h1>Deploying Fine Grained Password Policies (PSOs)</h1>

![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/1.png)
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/2.png)
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/3.png)
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/4.png)
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/5.png)
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/6.png)
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/7.png)
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/8.png)
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/9.png)
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/10.png)
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/11.png)
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/12.png)
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/13.png)
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/14.png)
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/15.png)
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/16.png)
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/17.png)
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/18.png)
![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/19.png)

```
import-module Active Directory
Get-ADUser -f {GivenName -eq 'Jason'} –Properties "DisplayName", "msDS-UserPasswordExpiryTimeComputed" | Select-Object -Property "Displayname",@{Name="ExpiryDate";Expression={[datetime]::FromFileTime($_."msDS-UserPasswordExpiryTimeComputed")}}
```

![FGPP](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Deploying%20Fine%20Grained%20Password%20Policies%20(PSOs)/sub/20.png)
