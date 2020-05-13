onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /moore/set
add wave -noupdate /moore/clk
add wave -noupdate /moore/x
add wave -noupdate /moore/s
add wave -noupdate /moore/NEXT_s
add wave -noupdate /moore/y
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {158840 ps}
