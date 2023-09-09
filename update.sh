rm -r core # delete core modules folder
rm -r js-modules
rm -r core-modules
rm -r data
echo "[DELETE] deleted old core folder"
echo "[DELETE] deleted old js modules folder"
echo "[DELETE] deleted old core modules folder"
echo "[DELETE] deleted old data folder"

## core server files

mkdir "core" # Create core modules folder

wget -q --show-progress https://cdn.alt-mp.com/coreclr-module/release/x64_linux/AltV.Net.Host.dll # download module
mv AltV.Net.Host.dll ./core # move module
#echo "downloaded altv.net.host.dll"

wget -q --show-progress https://cdn.alt-mp.com/coreclr-module/release/x64_linux/AltV.Net.Host.runtimeconfig.json # download module
mv AltV.Net.Host.runtimeconfig.json ./core # move module
#echo "downloaded altv.net.host.runtimeconfig.json"


## core modules
mkdir "core-modules"

wget -q --show-progress https://cdn.alt-mp.com/coreclr-module/release/x64_linux/modules/libcsharp-module.so # download module
mv libcsharp-module.so ./core-modules # move module
#echo "downloaded libcsharp-module.so"

wget -q --show-progress https://cdn.alt-mp.com/js-bytecode-module/release/x64_linux/modules/libjs-bytecode-module.so
mv libjs-bytecode-module.so ./core-modules # move module
#echo "downloaded libjs-bytecode-module.so"


## js modules
mkdir "js-modules"

wget -q --show-progress https://cdn.alt-mp.com/js-module/release/x64_linux/modules/js-module/libjs-module.so # download module
mv libjs-module.so ./js-modules # move module
#echo "downloaded libjs-module.so"

wget -q --show-progress https://cdn.alt-mp.com/js-module/release/x64_linux/modules/js-module/libnode.so.108 # download module
mv libnode.so.108 ./js-modules # move module
#echo "downloaded libjs-module.so"


# data files
mkdir "data"

wget -q --show-progress https://cdn.alt-mp.com/data/release/data/vehmodels.bin # download data
mv vehmodels.bin ./data # move module

wget -q --show-progress https://cdn.alt-mp.com/data/release/data/vehmods.bin # download data
mv vehmods.bin ./data # move module

wget -q --show-progress https://cdn.alt-mp.com/data/release/data/clothes.bin # download data
mv clothes.bin ./data # move module

wget -q --show-progress https://cdn.alt-mp.com/data/release/data/pedmodels.bin # download data
mv pedmodels.bin ./data # move module

wget -q --show-progress https://cdn.alt-mp.com/data/release/data/rpfdata.bin # download data
mv rpfdata.bin ./data # move module

wget -q --show-progress https://cdn.alt-mp.com/data/release/data/weaponmodels.bin # download data
mv weaponmodels.bin ./data # move module
echo "[UPDATE] Server updated successfully"
