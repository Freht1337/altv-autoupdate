BRANCH="release"

rm -r AltV.Net.Host.dll # delete core modules folder
rm -r AltV.Net.Host.runtimeconfig.json
rm -r altv-server
rm -r modules
rm -r data
echo "[DELETE] deleted AltV.Net.Host.dll"
echo "[DELETE] deleted AltV.Net.Host.runtimeconfig.json"
echo "[DELETE] deleted altv-server file"
echo "[DELETE] deleted modules folder"
echo "[DELETE] deleted data folder"

## core server files

wget -q --show-progress https://cdn.alt-mp.com/coreclr-module/$BRANCH/x64_linux/AltV.Net.Host.dll # download module
#echo "downloaded altv.net.host.dll"

wget -q --show-progress https://cdn.alt-mp.com/coreclr-module/$BRANCH/x64_linux/AltV.Net.Host.runtimeconfig.json # download module
#echo "downloaded altv.net.host.runtimeconfig.json"

wget -q --show-progress https://cdn.alt-mp.com/server/$BRANCH/x64_linux/altv-server
#echo "downloaded main altv-server file"

## core modules
mkdir "modules"

wget -q --show-progress https://cdn.alt-mp.com/coreclr-module/$BRANCH/x64_linux/modules/libcsharp-module.so # download module
mv libcsharp-module.so ./modules # move module
#echo "downloaded libcsharp-module.so"

wget -q --show-progress https://cdn.alt-mp.com/js-bytecode-module/$BRANCH/x64_linux/modules/libjs-bytecode-module.so
mv libjs-bytecode-module.so ./modules # move module
#echo "downloaded libjs-bytecode-module.so"
cd "./modules"

## js modules
mkdir "js-module"

wget -q --show-progress https://cdn.alt-mp.com/js-module/$BRANCH/x64_linux/modules/js-module/libjs-module.so # download module
mv libjs-module.so ./js-module # move module
#echo "downloaded libjs-module.so"

wget -q --show-progress https://cdn.alt-mp.com/js-module/$BRANCH/x64_linux/modules/js-module/libnode.so.108 # download module
mv libnode.so.108 ./js-module # move module
#echo "downloaded libjs-module.so"
cd ".."


# data files
mkdir "data"

wget -q --show-progress https://cdn.alt-mp.com/data/$BRANCH/data/vehmodels.bin # download data
mv vehmodels.bin ./data # move module

wget -q --show-progress https://cdn.alt-mp.com/data/$BRANCH/data/vehmods.bin # download data
mv vehmods.bin ./data # move module

wget -q --show-progress https://cdn.alt-mp.com/data/$BRANCH/data/clothes.bin # download data
mv clothes.bin ./data # move module

wget -q --show-progress https://cdn.alt-mp.com/data/$BRANCH/data/pedmodels.bin # download data
mv pedmodels.bin ./data # move module

wget -q --show-progress https://cdn.alt-mp.com/data/$BRANCH/data/rpfdata.bin # download data
mv rpfdata.bin ./data # move module

wget -q --show-progress https://cdn.alt-mp.com/data/$BRANCH/data/weaponmodels.bin # download data
mv weaponmodels.bin ./data # move module
echo "[UPDATE] Server updated successfully"
