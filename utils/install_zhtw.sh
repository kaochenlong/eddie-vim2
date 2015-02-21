# my VIMRC and plugins installer
#
# created by Eddie Kao <eddie@digik.com.tw>
# just for installing my .vim configurations and plugins in one command.
#

vim_folder=~/.vim
vim_rc=~/.vimrc
backup_rand=$RANDOM

# detect if there's a .vim folder
if [ -d $vim_folder ]
then
  echo "\033[0;31m您已經有一個 .vim 目錄..\033[0;m"
  read -p "請問要先替您進行備份嗎? [y/n] " ans
  if [ "$ans" == "y" ]
  then
    echo "您原本的 $vim_folder 備份至 $vim_folder-$(date +%Y%m%d)-$backup_rand"
    mv $vim_folder $vim_folder-$(date +%Y%m%d)-$backup_rand
  fi
fi

echo $vim_rc

# check if vimrc is already exist
if [ -L $vim_rc ] || [ -f $vim_rc ]
then
  echo "\033[0;31m您已經有一個 .vimrc 設定檔..\033[0;m"
  read -p "請問要先替您進行備份嗎? [y/n] " ans
  if [ "$ans" == "y" ]
  then
    echo "您原本的 $vim_rc 備份至 $vim_rc-$(date +%Y%m%d)-$backup_rand"
    mv $vim_rc $vim_rc$(date +%Y%m%d)-$backup_rand
  fi
fi

# check if git is installed
hash git >/dev/null && /usr/bin/env git clone git://github.com/kaochenlong/eddie-vim2.git ~/.vim || {
  echo "您必須先安裝 Git!"
  exit
}

# make a symbolic link
echo ""
echo "以下有四種 Vim 設定："
echo "1. \033[0;31m標準版：\033[0;m 標準版本設定。"
echo "2. \033[0;31m簡單版：\033[0;m 同 1，但加了一些給新手的對應鍵(例如 Ctrl+c、Ctrl+v 的複製貼上)。"
echo "3. \033[0;31m專家版：\033[0;m 同 1，但把方向鍵拿掉了(就是強迫自己使用 h, j, k, l)。"
echo "4. \033[0;31m實驗版：\033[0;m 同 3，但有時候會試一些實驗性的功能。"
echo ""
read -p "你打算要哪一種? [1/2/3/4] " ans

case $ans in
  1)
    echo "使用標準版本.."
    ln -s $vim_folder/vimrc $vim_rc
    ;;
  2)
    echo "使用簡單版本.."
    ln -s $vim_folder/vimrc_easy $vim_rc
    ;;
  3)
    echo "使用專家版本.."
    ln -s $vim_folder/vimrc_pro $vim_rc
    ;;
  4)
    echo "使用實驗版本.."
    ln -s $vim_folder/vimrc_experimental $vim_rc
    ;;
  *)
    echo "使用標準版本.."
    ln -s $vim_folder/vimrc $vim_rc
    ;;
esac

echo ""
echo "\033[0;34m好!看起來沒什麼問題!\033[0m"
echo "\033[0;34mGithub Repository: https://github.com/kaochenlong/eddie-vim2\033[0m"
echo "\033[0;34m歡迎 fork :)\033[0m"
echo "\033[0;34m<Eddie Kao> eddie@digik.com.tw\033[0m"
echo ""

exit

