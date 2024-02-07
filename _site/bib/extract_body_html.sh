#!/bin/bash

ls *html | while read infile
do
        outfile=`echo $infile | sed 's/.html/_html_body.txt/'`
        awk '$0~"</body>"{print $0;exit}$0~"<body>"{c++}c==1{print $0}' $infile > $outfile
done

