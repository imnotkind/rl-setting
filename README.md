# rl-setting
just some setting 


## vessl

- sudo apt update
- ln -s /input/rl nfs
- ssh key (id_rsa)
- update_setting.sh (first=1)  
- pip install -r requirements.txt
- mujoco 파일 놓기  
  - sudo apt install -y libosmesa6-dev libgl1-mesa-glx libglfw3 patchelf
  - sudo ln -s /usr/lib/x86_64-linux-gnu/libGL.so.1 /usr/lib/x86_64-linux-gnu/libGL.so
  - tar zxf mujoc.tar.gz  
  - 둘 중 하나?
    - `sed -i "s|x86_64-linux-gnu|x86_64-linux-gnu:/root/.mujoco/mujoco210/bin|" /root/.profile  && nohup /etc/init.d/jupyter restart &`
    - `sed -i "s|x86_64-linux-gnu|x86_64-linux-gnu:/root/.mujoco/mujoco210/bin|" /tmp/vessl/config-map/run.sh && bash /tmp/vessl/config-map/run.sh`

## vessl-nfs
- sudo apt update
- ln -s /input/rl nfs
- ssh key (id_rsa)
- update_setting.sh (first=0)  
- pip install -r requirements.txt
- mujoco 파일 놓기  
  - `mkdir /root/.mujoco && cp /root/nfs/mujoco210-linux-x86_64.tar.gz /root/.mujoco && cd /root/.mujoco && tar zxf mujoco210-linux-x86_64.tar.gz`
