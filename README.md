# firmware_oneplus
##### Extract firmware from OnePlus stock zip files.

This script re-compresses the contents of `RADIO` and `firmware-update` into another zip file under the directory `firmware.zip/firmware-update`, so you can update the devices firmware and baseband without wiping the system.
The default output file is `firmware.zip` and temporary file operations are done in `.tmp/`.

# Usage
##### Generate the firmware files:
	./extract.sh OnePlus5TOxygen_43_OTA_034_all_1804201221_6d7a5834eb364dc6.zip
##### Sideload them to your device
	adb sideload firmware.zip
