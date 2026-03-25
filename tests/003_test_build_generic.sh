#
cd "$(dirname "$0")"
cd ..
make build_generic >> /dev/null 2>&1
#check if the patched generic_superfastboot.efi is generated
if [ ! -f dist/generic_superfastboot.efi ]; then
    echo "Test failed: Patched generic_superfastboot.efi not found."
    ls -l dist
    make clean >> /dev/null 2>&1
    exit 1
else
    echo "Test passed: Patched generic_superfastboot.efi generated successfully."
    make clean >> /dev/null 2>&1
fi