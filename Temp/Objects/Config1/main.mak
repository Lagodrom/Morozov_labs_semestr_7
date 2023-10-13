SHELL := cmd.exe
CYGWIN=nontsec
export PATH := C:\RoboDK\Python37\Scripts\;C:\RoboDK\Python37\;C:\Program Files (x86)\NVIDIA Corporation\PhysX\Common;C:\Program Files (x86)\Common Files\Oracle\Java\javapath;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;c:\Program Files (x86)\Microsoft SQL Server\100\Tools\Binn\;c:\Program Files (x86)\Microsoft SQL Server\100\DTS\Binn\;C:\Program Files\Git\cmd;c:\altera\90sp2\quartus\bin;C:\Users\admin\AppData\Local\Programs\Python\Python36\Scripts\;C:\Users\admin\AppData\Local\Programs\Python\Python36\;C:\Users\admin\AppData\Local\Microsoft\WindowsApps;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Users\admin\AppData\Local\GitHubDesktop\bin;C:\Users\admin\AppData\Local\Microsoft\WindowsApps;C:\Users\admin\AppData\Local\Programs\Microsoft VS Code\bin;C:\Users\admin\AppData\Local\Programs\Python\Python36\Scripts\;C:\Users\admin\AppData\Local\Programs\Python\Python36\;C:\Users\admin\AppData\Local\Microsoft\WindowsApps;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Users\admin\AppData\Local\GitHubDesktop\bin;C:\Users\admin\AppData\Local\Microsoft\WindowsApps;C:\Users\admin\AppData\Local\Programs\Microsoft VS Code\bin
export AS_BUILD_MODE := Build
export AS_VERSION := 4.5.2.102
export AS_COMPANY_NAME :=  
export AS_USER_NAME := admin
export AS_PATH := C:/BrAutomation/AS45
export AS_BIN_PATH := C:/BrAutomation/AS45/Bin-en
export AS_PROJECT_PATH := C:/Users/admin/SW/KRBO-04-20/laba1\ (2)/laba1
export AS_PROJECT_NAME := laba1
export AS_SYSTEM_PATH := C:/BrAutomation/AS/System
export AS_VC_PATH := C:/BrAutomation/AS45/AS/VC
export AS_TEMP_PATH := C:/Users/admin/SW/KRBO-04-20/laba1\ (2)/laba1/Temp
export AS_CONFIGURATION := Config1
export AS_BINARIES_PATH := C:/Users/admin/SW/KRBO-04-20/laba1\ (2)/laba1/Binaries
export AS_GNU_INST_PATH := C:/BrAutomation/AS45/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH := $(AS_GNU_INST_PATH)/bin
export AS_GNU_INST_PATH_SUB_MAKE := C:/BrAutomation/AS45/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH_SUB_MAKE := $(AS_GNU_INST_PATH_SUB_MAKE)/bin
export AS_INSTALL_PATH := C:/BrAutomation/AS45
export WIN32_AS_PATH := "C:\BrAutomation\AS45"
export WIN32_AS_BIN_PATH := "C:\BrAutomation\AS45\Bin-en"
export WIN32_AS_PROJECT_PATH := "C:\Users\admin\SW\KRBO-04-20\laba1 (2)\laba1"
export WIN32_AS_SYSTEM_PATH := "C:\BrAutomation\AS\System"
export WIN32_AS_VC_PATH := "C:\BrAutomation\AS45\AS\VC"
export WIN32_AS_TEMP_PATH := "C:\Users\admin\SW\KRBO-04-20\laba1 (2)\laba1\Temp"
export WIN32_AS_BINARIES_PATH := "C:\Users\admin\SW\KRBO-04-20\laba1 (2)\laba1\Binaries"
export WIN32_AS_GNU_INST_PATH := "C:\BrAutomation\AS45\AS\GnuInst\V4.1.2"
export WIN32_AS_GNU_BIN_PATH := "$(WIN32_AS_GNU_INST_PATH)\\bin" 
export WIN32_AS_INSTALL_PATH := "C:\BrAutomation\AS45"

.suffixes:

ProjectMakeFile:

	@'$(AS_BIN_PATH)/BR.AS.AnalyseProject.exe' '$(AS_PROJECT_PATH)/laba1.apj' -t '$(AS_TEMP_PATH)' -c '$(AS_CONFIGURATION)' -o '$(AS_BINARIES_PATH)'   -sfas -buildMode 'Build'   

