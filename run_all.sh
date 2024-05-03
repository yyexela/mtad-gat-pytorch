for ds in SMAP MSL WADI SMD SWaT DSN_1k
do
	echo "Running \"python -u train.py --dataset \"mypkg_$ds\" 2>&1 | tee logs/\"mypkg_$ds.txt\"\""
	python -u train.py --dataset "mypkg_$ds" 2>&1 | tee logs/"mypkg_$ds.txt"
done
