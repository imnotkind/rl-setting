eval "$(command conda 'shell.bash' 'hook' 2> /dev/null)"

conda activate metaworld


root="$(pwd)"
first=1


echo "fewtask update"
if [ $first ]
then
        cd $root
        git clone git@github.com:namsan96/fewtask.git
fi
cd $root/fewtask
git pull
pip install -e .

echo "metaworld update"
if [ $first ]
then
        cd $root
        git clone git@github.com:namsan96/metaworld.git
fi
cd $root/metaworld
git pull
pip install -e .


echo "simpl update"
if [ $first ]
then
        cd $root
        git clone git@github.com:namsan96/SiMPL.git -b fewtask
fi
cd $root/SiMPL
git pull origin fewtask
pip install -e .
