DIR="/home/cdac/BB_Code_1_5/Code/"
if [ -d "$DIR" ]; then
  echo "'/home/cdac/BB_Code_1_5/' folder exist ..."
  chown -R cdac:cdac /home/cdac/BB_Code_1_5/
  mv -f BB-Code/Code/* /home/cdac/BB_Code_1_5/Code/
  mv -f BB-Code/ReadMe.txt /home/cdac/BB_Code_1_5/
  cd /home/cdac/BB_Code_1_5/
  make clean
  make
  rm -rf logs/*
else
  DIR="/home/cdac/Desktop/Client-Code/BB_Code_1_5/Code/"
  if [ -d "$DIR" ]; then
    echo "'/home/cdac/Desktop/Client-Code/BB_Code_1_5/Code/' folder doesn't exist ..."
    chown -R cdac:cdac /home/cdac/Desktop/Client-Code/
    mv -f BB-Code/Code/* /home/cdac/Desktop/Client-Code/BB_Code_1_5/Code/
    mv -f BB-Code/ReadMe.txt /home/cdac/Desktop/Client-Code/BB_Code_1_5/
    cd /home/cdac/Desktop/Client-Code/BB_Code_1_5/
    make clean
    make
    rm -rf logs/*
  else
    echo "'/home/cdac/BB_Code_1_5/' folder doesn't exist ..."
    echo "'/home/cdac/Desktop/Client-Code/BB_Code_1_5/Code/' folder doesn't exist ..."
   fi
fi
