rm ./buildlog &>> /dev/null
echo "Building DWM ..."
make clean install -C ./dwm/ &>> ./buildlog
echo "Building DMenu ..."
make clean install -D ./dmenu/ &>> ./buildlog
echo "Building slstatus ..."
make clean install -C ./slstatus/ &>>./buildlog
echo "Building st ..."
make clean install -C ./st/ &>> ./buildlog
