#!/bin/bash
fontcustom compile ./svg --no-hash
cp ./dist/font-holstee.css ./dist/font-holstee.less
perl -pi -w -e 's/\.\/dist/\@\{fontHolsteePath\}\/dist/g' ./dist/font-holstee.less