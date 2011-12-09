#!/usr/bin/perl -w

$gnuplot="gnuplot"; # or complete path

$preamble="preamble.gpi";
$function=$ARGV[0];

unless($function) {
    print STDERR "usage: $0 <function_definition_file.gpi>\n";
    exit 1;
}

$dir="$function.d";
$plot="plot.gpi";
$format='png';
$t_i=0;
$t_f=7;
$step=0.0075;   # time step

mkdir $dir;

open(GNUPLOT,"|$gnuplot");

print GNUPLOT "load \"$preamble\"\n";
print GNUPLOT "load \"$function\"\n";

for($t=$t_i;$t<=$t_f;$t+=$step) {
    $n=sprintf("%07.4f",$t);
    $n_f=sprintf("%07.4f",$t_f);
    print GNUPLOT "
    	set title \"t=$n\" offset 0,-1
        t=$t
    	unset multiplot
        set output \"$dir/frame.$n.$format\"
        load \"$plot\"
        print \"t = $n / $n_f \"
    ";
}
print GNUPLOT "\n";

close(GNUPLOT);

