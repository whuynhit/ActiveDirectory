<h1>Enabling Script Execution for Powershell</h1>

### By default. script execution for Powershell is disabled. In Group Policy Management, right-click Default Domain Policy and select "Edit." In the Group Policy Management Editor, navigate to Computer Configuration/Policies/Administrative Templates/Windows Components/Windows Powershell. Then enable the "Turn on script execution" policy and set execution policy to Allow all script."
![ExecutionPolicy](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Enabling%20Script%20Execution%20for%20Powershell/sub/1.png)

### The policy state should be "Enabled."
![ExecutionPolicy](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Enabling%20Script%20Execution%20for%20Powershell/sub/2.png)

### Alternatively, you can enable script execution by running the following the Powershell script in Powershell as an administrative user:
```Powershell
Set-ExecutionPolicy Unrestricted
```
### Select "Yes to All" when the Execution Policy Change window pops up.
![ExecutionPolicy](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Enabling%20Script%20Execution%20for%20Powershell/sub/3.png)

### With script execution enabled, we can now run the following Powershell script:
```Powershell
echo "Hello World"
```
![ExecutionPolicy](https://github.com/whuynhit/ActiveDirectory/blob/main/How%20to%20use%20Powershell%20with%20Active%20Directory/Enabling%20Script%20Execution%20for%20Powershell/sub/4.png)
