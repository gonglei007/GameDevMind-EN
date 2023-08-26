#!/usr/bin/env bash
#montage $(ls ../exports/*.png | grep -v "0.") 	\
#	-auto-orient 	\
#	-resize 200x *  \
#	-mode Concatenate	\
#	-tile 6x	\
#	-border 1 	\
#	-shadow 	\
#	-background DarkSlateGray4 	\
#	-geometry +20+40 	\
#	../overview/overview.png

# all-in-one
echo "合成overview-竖向"
montage \
    "../overview/1.Basic Capability.png" \
    "../overview/2.Technical Capability.png" \
    "../overview/3.Development Capability.png" \
    "../overview/4.Production Capability.png" \
    "../overview/5.Management Capability.png" \
    "../overview/6.Operation Capability.png" \
\
	-auto-orient 	\
	-resize 1280x *  \
	-mode Concatenate	\
	-tile 1x	\
	-border 1 	\
	-shadow 	\
	-background black 	\
	-geometry +10+10 	\
	../overview/overview-v.png

echo "合成overview-横向"
montage \
    "../overview/1.Basic Capability.png" \
    "../overview/2.Technical Capability.png" \
    "../overview/3.Development Capability.png" \
    "../overview/4.Production Capability.png" \
    "../overview/5.Management Capability.png" \
    "../overview/6.Operation Capability.png" \
\
	-auto-orient 	\
	-resize 480x *  \
	-mode Concatenate	\
	-tile 6x	\
	-border 10 	\
	-shadow 	\
	-background black 	\
	-geometry +20+20 	\
	../overview/overview-h.png
