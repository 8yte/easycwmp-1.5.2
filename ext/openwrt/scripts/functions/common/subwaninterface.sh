#!/bin/sh

get_subwan_ifname_by_interface()
{
    local subwan_index=0
    local wan_iface=""
    local if_name=""
    local subwan_index=`echo $1 | cut -d . -f 5`
    if [ $subwan_index = 1 ];then                                         
        wan_iface="subwan"                                                
    else                                                                
        wan_iface="subwan$subwan_index"         
    fi                             
    if_name=`uci get network.$wan_iface.ifname`

    echo $if_name
}
