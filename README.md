

# Prepomax under Linux using Wine from Appimage
Here is a set of instructions to install PrePoMax  FEA software (a great Calculix prepost) on  Linux using Wine

## Install process
1. Make app directory
```
mkdir prepomax_wine
cd prepomax_wine
```
2. Get wine appimage (simplest way of getting a given Wine version in my opinion)
```
#get Wine staging appimage
wget https://github.com/mmtrt/WINE_AppImage/releases/download/continuous-staging/wine-staging_10.12-x86_64.AppImage

chmod a+x wine-staging*.AppImage
```
 
3. install prepomax = download & unzip 
``` 
wget https://prepomax.fs.um.si/Files/Downloads/PrePoMax%20v2.3.5%20dev.zip

unzip PrePoMax\ v2.3.5\ dev.zip 
mv PrePoMax\ v2.3.5\ dev/ PrePoMax
rm PrePoMax\ v2.3.5\ dev.zip 
```

4. create wine prefix
```
mkdir pfx
export WINEPREFIX=`pwd`/pfx/
```
5. Install dotnet48 and fonts in Wine 
```
# setup requirement for prepomax
./wine-staging*.AppImage winetricks corefonts dotnet48
```

6.  DONE !

Now you can run PrePoMax with 

_cd to the prepomax_wine path first_
```
#set location of Wine "prefix" = Windows files
export WINEPREFIX=`pwd`/pfx/

#set number of threads for solver
export OMP_NUM_THREADS=8 

# run PrePoMax
./wine-staging*.AppImage PrePoMax/PrePoMax.exe
```
_or use the "run.sh" script in this repo_

make it executable with "chmod a+x run.sh" before use

This script can be exectued from anywhere, as it changes directory automatically. 

You can even double click to run it if you want or create a "launcher" to add it to your desktop.

