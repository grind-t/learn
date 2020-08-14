onerror {exit -code 1}
vlib work
vcom -work work TEST_OY.vho
vcom -work work MY_OY/test_for_stand.vwf.vht
vsim -novopt -c -t 1ps -L cycloneiv -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.TEST_OY_vhd_vec_tst
vcd file -direction TEST_OY.msim.vcd
vcd add -internal TEST_OY_vhd_vec_tst/*
vcd add -internal TEST_OY_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
