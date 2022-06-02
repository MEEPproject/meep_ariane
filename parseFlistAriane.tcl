#VAS Tile Core: list
#set_param project.singleFileAddWarning.Threshold 500 
set fp [open "$ARIANE_ROOT/Flist.ariane" r]
puts "$ARIANE_ROOT/Flist.ariane"
set file_data [read $fp]
set data [split $file_data "\n"]
set ARIANE_RTL_FILES {}
foreach line $data {
 set line [regsub -all  {\r} $line ""]
 set line [regsub -all  {\+.*} $line ""]
 set line [regsub {cpp.*} $line ""]
 set line [regsub {//.*} $line ""]
 set line [regsub {#.*} $line ""]
 set line [regsub {../*} $line ""]
 if  {[string trim $line] eq ""} then continue
 lappend ARIANE_RTL_FILES "${ARIANE_ROOT}/${line}" 
 puts "${line}"
} 
close $fp
