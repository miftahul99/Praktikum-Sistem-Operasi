#!/bin/bash

echo "Program Tempat Duduk"

select pilihan in "Menu Utama" "Exit Program"
do
	case $pilihan in
		"Menu Utama")
		echo -n  "Masukkan Inputan :"
		read masuk;
		for ((angka=1;angka<=$masuk;angka=angka+1))
		do
			if [[ $angka%5 -eq 0 ]]
			then
				printf  "Kode -$angka Khusus \n"
			elif [[ $angka%2 -eq 0 ]]
			then
				printf "Kode -$angka Genap  "
			else
				printf "Kode -$angka Ganjil  "
			fi
		done
		;;
		"Exit Program")
		break
		;;
*) echo "tidak ada dalam daftar"
;;
esac
done
