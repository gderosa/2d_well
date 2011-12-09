Time evolution of a complex function psi(x, y, t). Grahical repersentation.
Application to Quantum Mechanics.  

***

This small guide take the Linux/Unix user point of view, but it's probably 
adaptable to other systems. Any contribution/experience is welcome.

Guido De Rosa <guidoderosa@gmail.com> @ Sat Jun 21 18:36:39 CEST 2008

***

You will need:

Perl

Gnuplot v 4.3 or higher (currently via CVS only). Uses the pseudodata 
special file '+' and '++' feature. More infos here:

http://gnuplot.sourceforge.net/demo_4.3/heatmaps.html (last plot)

http://sourceforge.net/tracker/index.php?func=detail&aid=1872528&group_id=2055&atid=302055  (message by 'sfeam' @ 2008-01-24 06:43)  

***

Example usage:

perl plot.pl function2.gpi

A directory function2.gpi.d/ will be created, containing PNG pictures,
each representing a frame of you animation.

***

Use a media player or a video encoder to see the animation or export
to a video file. I recommend MPlayer/Mencoder. Example:

cd function2.gpi.d/

mplayer mf://*.png   (to see the animation)

mencoder mf://*.png -o video.avi -ovc lavc -lavcopts vcodec=ffv1 

The last statement encodes the *.png images to a lossless AVI file 
which you can safely use as a 'master' to produce smaller files.

I recommend OGG/Theora to share your video through the network, etc.. Here's
an example usage og ffmpeg2theora:

ffmpeg2theora [options] video.avi

Another player/encoder I suggest is VideoLAN/VLC http://www.videolan.org/ .

***

SEE ALSO (in Italian):
http://people.na.infn.it/~pq-qp/pages/simulations.html


