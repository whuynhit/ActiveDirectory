# Creating Non-inheriting Organizational Units for GPO Testing/Troubleshooting

### For this example, in Active Directory Users and Computers under Contoso OU, I created a new OU and named it "Test (Non-Inheriting)."
![Non-inherit](https://github.com/whuynhit/ActiveDirectory/blob/main/Group%20Policy%20Troubleshooting/Creating%20Non-inheriting%20Organizational%20Units%20for%20GPO%20TestingTroubleshooting/sub/1.png)
### And then I moved a user into the new OU.
![Non-inherit](https://github.com/whuynhit/ActiveDirectory/blob/main/Group%20Policy%20Troubleshooting/Creating%20Non-inheriting%20Organizational%20Units%20for%20GPO%20TestingTroubleshooting/sub/2.png)
### From the Server Manager Tools, open Group Policy Management. And right-click **Default Domain Policy** and select Edit. 
![Non-inherit](https://github.com/whuynhit/ActiveDirectory/blob/main/Group%20Policy%20Troubleshooting/Creating%20Non-inheriting%20Organizational%20Units%20for%20GPO%20TestingTroubleshooting/sub/3.png)
### With the Group Policy Management Editor and navigate to User Configuration/Policies/Administrative Template/Desktop/Desktop/Disable Active Desktop. And enable Disable Active Desktop.
![Non-inherit](https://github.com/whuynhit/ActiveDirectory/blob/main/Group%20Policy%20Troubleshooting/Creating%20Non-inheriting%20Organizational%20Units%20for%20GPO%20TestingTroubleshooting/sub/4.png)
### On the client machine, run the following commands in the Command Prompt:

```
gpupdate /force

gpresult /r
```
### You can then see that User Settings from the Default Domain Policy have now taken effect on this client machine.
![Non-inherit](https://github.com/whuynhit/ActiveDirectory/blob/main/Group%20Policy%20Troubleshooting/Creating%20Non-inheriting%20Organizational%20Units%20for%20GPO%20TestingTroubleshooting/sub/5.png)

### In Group Policy Management, create and link a new GPO in the "Test (Non-Inheriting)" OU. For this example, I named it Test GPO1. Then right-click and select "Edit."
![Non-inherit](https://github.com/whuynhit/ActiveDirectory/blob/main/Group%20Policy%20Troubleshooting/Creating%20Non-inheriting%20Organizational%20Units%20for%20GPO%20TestingTroubleshooting/sub/6.png)

### In the Group Policy Management Editor, navigate to User Configuration/Preferences/Windows Settings/Folders. Then right-click and create a new folder.
![Non-inherit](https://github.com/whuynhit/ActiveDirectory/blob/main/Group%20Policy%20Troubleshooting/Creating%20Non-inheriting%20Organizational%20Units%20for%20GPO%20TestingTroubleshooting/sub/7.png)

### For this example, I created a new folder named "TestGPOFolder" in the C:\ directory.
![Non-inherit](https://github.com/whuynhit/ActiveDirectory/blob/main/Group%20Policy%20Troubleshooting/Creating%20Non-inheriting%20Organizational%20Units%20for%20GPO%20TestingTroubleshooting/sub/8.png)

### On the client machine, run the following commands in the Command Prompt:

```
gpupdate /force

gpresult /r
```
### You can then see that User Settings from the "Test GPO1" GPO have now taken effect on this client machine.
![Non-inherit](https://github.com/whuynhit/ActiveDirectory/blob/main/Group%20Policy%20Troubleshooting/Creating%20Non-inheriting%20Organizational%20Units%20for%20GPO%20TestingTroubleshooting/sub/9.png)

### Back on over to the Group Policy Management, right-click the "Test (Non-Inheriting)" OU and select "Block Inheritance."
![Non-inherit](https://github.com/whuynhit/ActiveDirectory/blob/main/Group%20Policy%20Troubleshooting/Creating%20Non-inheriting%20Organizational%20Units%20for%20GPO%20TestingTroubleshooting/sub/10.png)

### On the client machine, run the following commands in the Command Prompt:

```
gpupdate /force

gpresult /r
```
### You can then see that User Settings from the Default Domain Policy GPO no long effects this client machine. And only the Test GPO1 remains in effect.
![Non-inherit](https://github.com/whuynhit/ActiveDirectory/blob/main/Group%20Policy%20Troubleshooting/Creating%20Non-inheriting%20Organizational%20Units%20for%20GPO%20TestingTroubleshooting/sub/11.png)

### In Group Policy Management, right-click Default Domain Policy and select "Enforced."
![Non-inherit](https://github.com/whuynhit/ActiveDirectory/blob/main/Group%20Policy%20Troubleshooting/Creating%20Non-inheriting%20Organizational%20Units%20for%20GPO%20TestingTroubleshooting/sub/12.png)

### On the client machine, run the following commands in the Command Prompt:

```
gpupdate /force

gpresult /r
```
### You can then see that User Settings from the Default Domain Policy GPO have once again taken effect on this client machine.
![Non-inherit](https://github.com/whuynhit/ActiveDirectory/blob/main/Group%20Policy%20Troubleshooting/Creating%20Non-inheriting%20Organizational%20Units%20for%20GPO%20TestingTroubleshooting/sub/13.png)
