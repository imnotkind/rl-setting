eval "$(command conda 'shell.bash' 'hook' 2> /dev/null)"

conda activate metaworld


root="$(pwd)"
first=0
nfs=1


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



if [ $nfs ]
then
        ln -s /input/rl /root/nfs
        sudo apt update
        sudo apt install -y libosmesa6-dev libgl1-mesa-glx libglfw3 patchelf
        sudo ln -s /usr/lib/x86_64-linux-gnu/libGL.so.1 /usr/lib/x86_64-linux-gnu/libGL.so
        mkdir /root/.mujoco && cp /root/nfs/mujoco210-linux-x86_64.tar.gz /root/.mujoco && cd /root/.mujoco && tar zxf mujoco210-linux-x86_64.tar.gz
        sed -i "s|x86_64-linux-gnu|x86_64-linux-gnu:/root/.mujoco/mujoco210/bin|" /root/.profile
        /etc/init.d/jupyter restart
fi
