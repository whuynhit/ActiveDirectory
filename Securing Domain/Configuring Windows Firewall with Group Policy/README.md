<h1>Configuring Windows Firewall with Group Policy</h1>

### In Group Policy Management, create and link a new GPO called "Firewall - Test 1234" to the Domain Computers OU (where the Client1 machine is located).
![WF](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Configuring%20Windows%20Firewall%20with%20Group%20Policy/sub/1.png)

### Right-click the newly created GPO, select "Edit." In the Group Policy Management Editor, navigate to Computer Configuration/Policies/Windows Settings/Security Settings/Windows Defender Firewall with Advanced Security/Windows Defender Firewall with Advanced Security-LDAP.
![WF](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Configuring%20Windows%20Firewall%20with%20Group%20Policy/sub/2.png)

### Create a new Inbound Rule.
![WF](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Configuring%20Windows%20Firewall%20with%20Group%20Policy/sub/3.png)

### Rule type: Port.
![WF](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Configuring%20Windows%20Firewall%20with%20Group%20Policy/sub/4.png)

### Protocols and PortsL: TCP 1234.
![WF](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Configuring%20Windows%20Firewall%20with%20Group%20Policy/sub/5.png)

### Action: Allow the connection.
![WF](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Configuring%20Windows%20Firewall%20with%20Group%20Policy/sub/6.png)

### Rule applies to Domain, Private, and Public.
![WF](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Configuring%20Windows%20Firewall%20with%20Group%20Policy/sub/7.png)

### Name it "Test 1234." Then click "Finish."
![WF](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Configuring%20Windows%20Firewall%20with%20Group%20Policy/sub/8.png)

### On the client machine, open Command Prompt and run the following command:
```
gpupdate /force
```
![WF](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Configuring%20Windows%20Firewall%20with%20Group%20Policy/sub/9.png)

### On the client machine, run "rsop.msc," then navigate to Computer Configuration/Administrative Templates/Extra Registry Settings. There, you will find the newly created Firewall GPO taking effect.
![WF](https://github.com/whuynhit/ActiveDirectory/blob/main/Securing%20Domain/Configuring%20Windows%20Firewall%20with%20Group%20Policy/sub/10.png)
