eval "$(command conda 'shell.bash' 'hook' 2> /dev/null)"

conda activate metaworld


root="$(pwd)"
first=0
nfs=1


if [ $first -eq 1 ]
then
        cd $root
        git clone git@github.com:namsan96/fewtask.git
        git clone git@github.com:namsan96/metaworld.git
        git clone git@github.com:namsan96/SiMPL.git -b fewtask
fi


cd $root/fewtask
git pull
pip install -e .
cd $root/metaworld
git pull
pip install -e .
cd $root/SiMPL
git pull origin fewtask
pip install -e .



if [ $nfs -eq 1 ]
then
        ln -s /input/rl /root/nfs
        
        pip install -r /root/nfs/requirements.txt
        sudo apt update
        sudo apt install -y libosmesa6-dev libgl1-mesa-glx libglfw3 patchelf
        sudo ln -s /usr/lib/x86_64-linux-gnu/libGL.so.1 /usr/lib/x86_64-linux-gnu/libGL.so
        mkdir /root/.mujoco && cp /root/nfs/mujoco210-linux-x86_64.tar.gz /root/.mujoco && cd /root/.mujoco && tar zxf mujoco210-linux-x86_64.tar.gz
        sed -i "s|x86_64-linux-gnu|x86_64-linux-gnu:/root/.mujoco/mujoco210/bin|" /root/.profile
fi
