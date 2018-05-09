# oneplus-extract-firmware
Extracts firmware from OnePlus stock zip files
This script re-compresses the contents of `/RADIO` and `/firmware-update` into another zip file under the directory /firmware-update.
The default output file is firmware.zip and temporary file operations are done in `.tmp/`.

# Usage
	./extract.sh <FILE>
	./extract.sh OnePlus5TOxygen_43_OTA_034_all_1804201221_6d7a5834eb364dc6.zip oneplus5t out/oneplus5t/firmware.zip
