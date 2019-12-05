#!/bin/bash

echo "Konversi Jam,Menit dan Detik"
echo -n  "Masukkan nilai yang anda ingin konversikan :"
read sec;
	
if [ $sec -ge 3600 ]
then 
	let jam=$sec/3600;
	let sec=$sec-$jam*3600;
echo "$jam jam"
fi
if [ $sec -ge 60 ]
then 
	let menit=$sec/60;
	let sec=sec-$menit*60;
echo "$menit menit"
fi
echo "$sec detik"

