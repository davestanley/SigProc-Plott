
for f in  `ls plot_*`
do
	fnew=$(echo $f | sed s/plot_/plott_/)
	echo git mv $f $fnew
	git mv $f $fnew

done

