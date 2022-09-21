# rl-setting
just some setting 


## vessl

- update_setting.sh (first=1)  
- simpl/requirements.txt에서 torch빼고다  
  - pip install gym==0.25.2  
- mujoco 파일 놓기  
  - tar zxf mujoc.tar.gz  
  - .profile LD_LIBRARY_PATH에 :/root/.mujoco/mujoco210/bin 추가  
  - sed "s|x86_64-linux-gnu|x86_64-linux-gnu:/root/.mujoco/mujoco210/bin|" /tmp/vessl/config-map/run.sh
  - ssh로 접속 후 `bash /tmp/vessl/config-map/run.sh`
