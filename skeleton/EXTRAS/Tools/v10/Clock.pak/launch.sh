#!/bin/sh                                                                                                                                                                                        
                                                                                                                                                                                                 
source /etc/profile                                                                                                                                                                              
                                                                                                                                                                                                 
export PLATFORM="v10"                                                                                                                                                                            
export SDCARD_PATH="/storage"                                                                                                                                                                
export SYSTEM_PATH="$SDCARD_PATH/.system/$PLATFORM"                                                                                                                                              
export LD_LIBRARY_PATH=$SYSTEM_PATH/lib:$LD_LIBRARY_PATH                                                                                                                                         
                                                                                                                                                                                                 
cd $(dirname "$0")                                                                                                                                                                               
                                                                                                                                                                                                 
# set_kill set "clock.elf"                                                                                                                                                                         
                                                                                                                                                                                                 
# sway_fullscreen "clock.elf" &                                                                                                                                                                    
                                                                                                                                                                                                 
./clock.elf >/dev/null 2>&1