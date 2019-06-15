#! /bin/bash 

# Wake up device
# adb shell input keyevent KEYCODE_WAKEUP
# adb shell input keyevent 26

cd ~/Dropbox/report/literature_survey
adb push literature_survey.pdf /storage/sdcard0/Download/literature_survey.pdf
mv *.aux logfiles
#mv *.log logfiles
mv *.fdb_latexmk logfiles
mv *.blg logfiles
mv *.gz logfiles
mv *.bbl logfiles
mv *.fls logfiles 
adb shell am start -a "android.intent.action.VIEW" -d "file:///storage/sdcard0/Download/literature_survey2.pdf"
adb shell am start -a "android.intent.action.VIEW" -d "file:///storage/sdcard0/Download/literature_survey.pdf"

