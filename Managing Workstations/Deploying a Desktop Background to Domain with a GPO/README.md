# Deploying a Desktop Background to Domain with a GPO

### Create a folder named "Desktop Backgrounds" in the C:\ directory of DC Server. And place an image that will be the new Desktop Background into the folder.
![bg](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Deploying%20a%20Desktop%20Background%20to%20Domain%20with%20a%20GPO/sub/1.png)

### Open the Desktop Backgrounds folder properties. And click on the Sharing tab. Then click on Advanced Sharing. 
![bg](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Deploying%20a%20Desktop%20Background%20to%20Domain%20with%20a%20GPO/sub/2.png)

### Check the box that says "Share this folder."
![bg](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Deploying%20a%20Desktop%20Background%20to%20Domain%20with%20a%20GPO/sub/3.png)

### Click Permissions. In the Share Permissions window, click Add. In the Select Users window, search for Authenticated Users and click OK. Then in the Share Permissions window, remove the "Everyone" group.
![bg](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Deploying%20a%20Desktop%20Background%20to%20Domain%20with%20a%20GPO/sub/4.png)

### Log on to the Client machine and make sure the user on the client machine is able to access the UNC path. The UNC path in this case is:

```
\\WS22DC\Desktop Backgrounds
```

![bg](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Deploying%20a%20Desktop%20Background%20to%20Domain%20with%20a%20GPO/sub/5.png)

### Back on the DC Server, in Group Policy Management, create and link the new GPO named Desktop Backgrounds to the domain.
![bg](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Deploying%20a%20Desktop%20Background%20to%20Domain%20with%20a%20GPO/sub/6.png)

### Right-click Desktop Backgrounds GPO and select "Edit." In the Group Policy Management Editor, navigate to User Configuration/Policies/Administrative Templates/Desktop/Desktop/Desktop Wallpaper. Enable Desktop Wallpaper and enter the UNC Path to the wallpaper in box that says "Wallpaper Name" and then click "Apply." The UNC Path in this example is:

```
\\WS22DC\Desktop Backgrounds\Contoso Background.png
```
![bg](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Deploying%20a%20Desktop%20Background%20to%20Domain%20with%20a%20GPO/sub/7.png)

### On the client machine, open Command Prompt and run the following commands to apply the Desktop Background GPO to the user account on the client machine. 

```
gpupdate /force

gpresult /r
```

### Once GPO is applied, the Desktop Background should now be updated
![bg](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Deploying%20a%20Desktop%20Background%20to%20Domain%20with%20a%20GPO/sub/8.png)

### As seen below.
![bg](https://github.com/whuynhit/ActiveDirectory/blob/main/Managing%20Workstations/Deploying%20a%20Desktop%20Background%20to%20Domain%20with%20a%20GPO/sub/9.png)
