# rl-setting
just some setting 


## vessl
- ssh key (id_rsa)
- cd /root && update_setting.sh (first=1, nfs=0)
- pip install -r requirements.txt (in this repo)
- download mujoco and save extract to .mujoco/
- restart jupyter with mujoco env (LD_LIBRARY_PATH)
  - login workspace to ssh
  - assure env LD_LIBRARY_PATH has mujoco path (if not, `sed -i "s|x86_64-linux-gnu|x86_64-linux-gnu:/root/.mujoco/mujoco210/bin|" /root/.profile` and relogin)
  - `/etc/init.d/jupyter restart`


## vessl-nfs
- ln -s /input/rl nfs
- ssh key (id_rsa)
- cd /root/nfs && update_setting.sh (first=0, nfs=1)  
- restart jupyter with mujoco env (LD_LIBRARY_PATH)
  - login workspace to ssh
  - assure env LD_LIBRARY_PATH has mujoco path (if not, `sed -i "s|x86_64-linux-gnu|x86_64-linux-gnu:/root/.mujoco/mujoco210/bin|" /root/.profile` and relogin)
  - `/etc/init.d/jupyter restart`
