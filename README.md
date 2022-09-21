# rl-setting
just some setting 


## vessl

- sudo apt update
- ln -s /input/rl nfs
- update_setting.sh (first=1)  
- simpl/requirements.txt에서 torch빼고다  
  - pip install gym==0.25.2  
- mujoco 파일 놓기  
  - sudo apt install -y libosmesa6-dev libgl1-mesa-glx libglfw3 patchelf
  - sudo ln -s /usr/lib/x86_64-linux-gnu/libGL.so.1 /usr/lib/x86_64-linux-gnu/libGL.so
  - tar zxf mujoc.tar.gz  
  - 둘 중 하나?
    - .profile LD_LIBRARY_PATH에 :/root/.mujoco/mujoco210/bin 추가  && `/etc/init.d/jupyter start`
    - sed "s|x86_64-linux-gnu|x86_64-linux-gnu:/root/.mujoco/mujoco210/bin|" /tmp/vessl/config-map/run.sh && ssh로 접속 후 `bash /tmp/vessl/config-map/run.sh`

