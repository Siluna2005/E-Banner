#color
r='\e[1;31m'
g='\e[1;32m'
y='\e[1;33m'
b='\e[1;34m'
p='\e[1;35m'
lb='\e[1;36m'




echo

echo -e $lb "███████╗      ██████╗  █████╗ ███╗  ██╗███╗  ██╗███████╗██████╗"
echo -e $lb "██╔════╝      ██╔══██╗██╔══██╗████╗ ██║████╗ ██║██╔════╝██╔══██╗"
echo -e $lb "█████╗  █████╗██████╦╝███████║██╔██╗██║██╔██╗██║█████╗  ██████╔╝"
echo -e $lb "██╔══╝  ╚════╝██╔══██╗██╔══██║██║╚████║██║╚████║██╔══╝  ██╔══██╗"
echo -e $lb "███████╗      ██████╦╝██║  ██║██║ ╚███║██║ ╚███║███████╗██║  ██║"         
echo -e $lb "╚══════╝      ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚══╝╚═╝  ╚══╝╚══════╝╚═╝  ╚═╝"
echo -e $r  "                                          Tool By - Dark Ghost"
echo
echo -e $y "What is Your Banner name ? : \c"
read Bname
echo
echo -e $y "What is Your name ? : \c"
read name

echo "cowsay -f eyes "$name" | lolcat " > name.txt
echo "figlet "$Bname" |lolcat" > Bname.txt
echo "clear" > clear.txt
echo "PS1='\$ '" > Temp.txt


#remove old files
rm -rf /data/data/com.termux/files/user/etc/zshrc
rm -rf /data/data/com.termux/files/user/etc/bash.bashrc

# inject files to zshrc
cat "clear.txt" >> /data/data/com.termux/files/user/etc/zshrc
cat "name.txt" >> /data/data/com.termux/files/user/etc/zshrc
cat "Bname.txt" >> /data/data/com.termux/files/user/etc/zshrc
cat "Temp.txt" >> /data/data/com.termux/files/user/etc/zshrc

# inject files to bash.bashrc
cat "clear.txt" >> /data/data/com.termux/files/user/etc/bash.bashrc
cat "name.txt" >> /data/data/com.termux/files/user/etc/bash.bashrc
cat "Bname.txt" >> /data/data/com.termux/files/user/etc/bash.bashrc
cat "Temp.txt" >> /data/data/com.termux/files/user/etc/bash.bashrc

rm -ft name.txt Bname.txt clear.txt Temp.txt
echo
figlet Finish | lolcat
echo -e $r "Please Restart Your Termux"
