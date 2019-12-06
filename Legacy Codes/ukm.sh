#!/bin/sh
r=0
ukm(){
   echo " "
   echo "==============================="
   echo "    UNIT KEGIATAN MAHASISWA    "
   echo "==============================="
   echo "1. TARI "
   echo "2. KARAWITAN "
   echo "3. UKKI "
   echo "4. UK3 "
   echo "5. BASKET "
   echo " "
}

aggtbr(){
let r=$r+1
   echo "==============================="
   echo "	ISI DATA DIRI ANDA	"
   echo "==============================="
   echo "Nb. Isi dengan Huruf Kapital "
   echo "==============================="
   echo "UKM		  : "
   read km[$r]
   echo " "
   echo "Nama Lengkap	  : "
   read nama[$r]
   echo " "
   echo "NPM		  : "
   read npm[$r]
   echo " "
   echo "Fakultas	  : "
   read fk[$r]
   echo " "
   echo "Jurusan	  : "
   read jrs[$r]
   echo " "
   echo "Alamat		  : "
   read almt[$r]
   echo " "
   echo "Alasan bergabung : "
   read alsn[$r]
   echo " "
}
view(){
 echo "================================="
 echo "             Anggota             "
 echo "================================="
 for((a=1;a<=r;a++))
   do
echo " "
echo "UKM                 : ${km[$a]}"
echo "Nama Lengkap        : ${nama[$a]}"
echo "NPM                 : ${npm[$a]}"
echo "Fakultas            : ${fk[$a]}"
echo "Jurusan             : ${jrs[$a]}"
echo "Alamat              : ${almt[$a]}"
echo "Alasan bergabung    : ${alsn[$a]}"
echo " "
echo "==================================="
  done

}

cari(){
echo -n "Masukkan NPM : "
read cari
a=0
b=0
while [ $a -le $r ] && [ $b == 0 ]
do
let a=$a+1
if [ "${npm[a]}" == $cari ]
then
b=1
fi
done
}
cetak(){
cari
if [ $a -le $r ]
then
echo "================================="
echo "             Anggota             "
echo "================================="
echo " "
echo "UKM                 : ${km[$a]}"
echo "Nama Lengkap        : ${nama[$a]}"
echo "NPM                 : ${npm[$a]}"
echo "Fakultas            : ${fk[$a]}"
echo "Jurusan             : ${jrs[$a]}"
echo "Alamat              : ${almt[$a]}"
echo "Alasan bergabung    : ${alsn[$a]}"
echo " "
echo "==================================="
  fi
}

fyi(){
ukm
echo -n "Masukkan Pilihan : "
read pilih

if [ $pilih -eq 1 ]
   then
clear
 echo " "
 echo "	================================="
 echo "		     UKM TRI "
 echo "	================================="
 cat tari.txt
 echo " "

elif [ $pilih -eq 2 ]
   then
clear
 echo " "
 echo "	=================================="
 echo "		 UKM KARAWITAN "
 echo "	=================================="
 cat karwit.txt
 echo " "

elif [ $pilih -eq 3 ]
   then
clear
 echo " "
 echo "	================================="
 echo "		    UKM UKKI "
 echo "	================================="
 cat ukki.txt
 echo " "


elif [ $pilih -eq 4 ]
   then
clear
 echo " "
 echo "	================================"
 echo "		   UKM UK3 "
 echo "	================================"
 cat uk3.txt
 echo " "


elif [ $pilih -eq 5 ]
   then
clear
 echo " "
 echo "	==============================="
 echo "		  UKM BASKET "
 echo "	==============================="
 cat bskt.txt
 echo " "

else 
echo " tidak ada dalam pilihan "
fi
}

dftr(){
ukm
echo -n "Masukkan Pilihan : "
read pilih

if [ $pilih -eq 1 ]
   then
	clear
      aggtbr
   echo "=================================="
   echo "SELAMAT BERGABUNG DENGAN UKM TARI"
   echo "=================================="

elif [ $pilih -eq 2 ]
   then
	clear
      aggtbr
   echo "======================================"
   echo "SELAMAT BERGABUNG DENGAN UKM KARAWITAN"
   echo "======================================"

elif [ $pilih -eq 3 ]
   then
	clear
	 aggtbr
   echo "=================================="
   echo "SELAMAT BERGABUNG DENGAN UKM UKKI"
   echo "=================================="

elif [ $pilih -eq 4 ]
   then
	clear
	aggtbr
   echo "================================"
   echo "SELAMAT BERGABUNG DENGAN UKM UK3"
   echo "================================"

elif [ $pilih -eq 5 ]
   then
	clear
	aggtbr
   echo "==================================="
   echo "SELAMAT BERGABUNG DENGAN UKM BASKET"
   echo "==================================="

else
echo " tidak ada dalam pilihan "
fi
}

while :;
do

   echo " "
   echo "==============================="
   echo "   SELAMAT DATANG DIINFORMASI"
   echo "==============================="
   echo "    UNIT KEGIATAN MAHASISWA"
   echo "==============================="
   echo "1. Informasi Tentang UKM "
   echo "2. Daftar Anggota Baru "
   echo "3. Data Anggota "
   echo "4. Cari Anggota "
   echo "5. Keluar "
   echo " "
echo -n " Masukkan Pilihanmu :  "
read pil

if [ $pil -eq 1 ]
   then
      fyi
elif [ $pil -eq 2 ]
   then
      dftr
elif [ $pil -eq 3 ]
   then
      if [ $r -lt 1 ]
       then
         echo "Data kosong "
      else
         view
      fi
elif [ $pil -eq 4 ]
   then
      cetak
else
echo "TERIMA KASIH TELAH BERKUNJUNG"
exit
fi
done