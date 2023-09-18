# Configuring Domain Password and Account Lockout Policies with Group Policy

### In Group Policy Management, right-click Default Domain Policy GPO and select "Edit."
### In Group Policy Management Editor, navigate to Computer Configuration/Policies/Windows Settings/Security Settings/Account Policies/ Password Policy and alter the policies to the following policy settings as shown below.
![Domain](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Configuring%20Domain%20Password%20and%20Account%20Lockout%20Policies%20with%20Group%20Policy/sub/1.png)

### In Account Lockout Policy, set Account Lockout Threshold for 3 invalid logon attempts. Then on client machine, open Command Prompt and run the following command:

```
gpupdate /force
```

### Then logout.
![Domain](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Configuring%20Domain%20Password%20and%20Account%20Lockout%20Policies%20with%20Group%20Policy/sub/2.png)

### When the number of failed logon attempts reach the threshold, the user will see the following lockout screen. 
![Domain](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Configuring%20Domain%20Password%20and%20Account%20Lockout%20Policies%20with%20Group%20Policy/sub/3.png)

### To unlock the account, in Active Directory Users and Computers, navigate to the locked out user object. Open the user object's properties, select the Account tab, check the Unlock account box, and click "OK." 
![Domain](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Configuring%20Domain%20Password%20and%20Account%20Lockout%20Policies%20with%20Group%20Policy/sub/4.png)
