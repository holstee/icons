#!/bin/bash
fontcustom compile ./svg
cp ./dist/font-holstee.css ./dist/font-holstee.less
perl -pi -w -e 's/\(\"\.\/font-holstee/\(\"\@\{fontHolsteePath\}/g' ./dist/font-holstee.less
mv ./dist/font-holstee-preview.html ./index.html
perl -pi -w -e 's/\(\"\.\/font-holstee/\(\"\.\/dist\/font-holstee/g' ./index.html