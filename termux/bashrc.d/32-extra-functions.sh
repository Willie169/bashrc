#!/data/data/com.termux/files/usr/bin/bash
# shellcheck disable=2103

mvic() {
	mv -- "$DOW"/"$1" ./
}

mvoc() {
	mv -- ./"$1" "$DOW"/
}

mvih() {
	mv -- "$DOW"/"$1" ~/
}

mvoh() {
	mv -- ~/"$1" "$DOW"/
}

mvib() {
	mv -- "$DOW"/"$1" ../
}

mvob() {
	mv -- ../"$1" "$DOW"/
}

mvir() {
	mv -- "$DOW"/"$2" "$1"/
}

mvor() {
	mv -- "$1"/"$2" "$DOW"/
}

mvip() {
	mv -- "$DOW"/"$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

mvop() {
	mv -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$DOW"/
}

mvidc() {
	mv -- "$DOC"/"$1" ./
}

mvodc() {
	mv -- ./"$1" "$DOC"/
}

mvidh() {
	mv -- "$DOC"/"$1" ~/
}

mvodh() {
	mv -- ~/"$1" "$DOC"/
}

mvidb() {
	mv -- "$DOC"/"$1" ../
}

mvodb() {
	mv -- ../"$1" "$DOC"/
}

mvidr() {
	mv -- "$DOC"/"$2" "$1"/
}

mvodr() {
	mv -- "$1"/"$2" "$DOC"/
}

mvidp() {
	mv -- "$DOC"/"$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

mvodp() {
	mv -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$DOC"/
}

mvisc() {
	mv -- "$SCR"/"$1" ./
}

mvosc() {
	mv -- ./"$1" "$SCR"/
}

mvish() {
	mv -- "$SCR"/"$1" ~/
}

mvosh() {
	mv -- ~/"$1" "$SCR"/
}

mvisb() {
	mv -- "$SCR"/"$1" ../
}

mvosb() {
	mv -- ../"$1" "$SCR"/
}

mvisr() {
	mv -- "$SCR"/"$2" "$1"/
}

mvosr() {
	mv -- "$1"/"$2" "$SCR"/
}

mvisp() {
	mv -- "$SCR"/"$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

mvosp() {
	mv -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$SCR"/
}

mviec() {
	mv -- "$EMU"/"$1" ./
}

mvoec() {
	mv -- ./"$1" "$EMU"/
}

mvieh() {
	mv -- "$EMU"/"$1" ~/
}

mvoeh() {
	mv -- ~/"$1" "$EMU"/
}

mvieb() {
	mv -- "$EMU"/"$1" ../
}

mvoeb() {
	mv -- ../"$1" "$EMU"/
}

mvier() {
	mv -- "$EMU"/"$2" "$1"/
}

mvoer() {
	mv -- "$1"/"$2" "$EMU"/
}

mviep() {
	mv -- "$EMU"/"$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

mvoep() {
	mv -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$EMU"/
}

cpic() {
	cp -- "$DOW"/"$1" ./
}

cpoc() {
	cp -- ./"$1" "$DOW"/
}

cpih() {
	cp -- "$DOW"/"$1" ~/
}

cpoh() {
	cp -- ~/"$1" "$DOW"/
}

cpib() {
	cp -- "$DOW"/"$1" ../
}

cpob() {
	cp -- ../"$1" "$DOW"/
}

cpir() {
	cp -- "$DOW"/"$2" "$1"/
}

cpor() {
	cp -- "$1"/"$2" "$DOW"/
}

cpip() {
	cp -- "$DOW"/"$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

cpop() {
	cp -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$DOW"/
}

cpidc() {
	cp -- "$DOC"/"$1" ./
}

cpodc() {
	cp -- ./"$1" "$DOC"/
}

cpidh() {
	cp -- "$DOC"/"$1" ~/
}

cpodh() {
	cp -- ~/"$1" "$DOC"/
}

cpidb() {
	cp -- "$DOC"/"$1" ../
}

cpodb() {
	cp -- ../"$1" "$DOC"/
}

cpidr() {
	cp -- "$DOC"/"$2" "$1"/
}

cpodr() {
	cp -- "$1"/"$2" "$DOC"/
}

cpidp() {
	cp -- "$DOC"/"$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

cpodp() {
	cp -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$DOC"/
}

cpisc() {
	cp -- "$SCR"/"$1" ./
}

cposc() {
	cp -- ./"$1" "$SCR"/
}

cpish() {
	cp -- "$SCR"/"$1" ~/
}

cposh() {
	cp -- ~/"$1" "$SCR"/
}

cpisb() {
	cp -- "$SCR"/"$1" ../
}

cposb() {
	cp -- ../"$1" "$SCR"/
}

cpisr() {
	cp -- "$SCR"/"$2" "$1"/
}

cposr() {
	cp -- "$1"/"$2" "$SCR"/
}

cpisp() {
	cp -- "$SCR"/"$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

cposp() {
	cp -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$SCR"/
}

cpiec() {
	cp -- "$EMU"/"$1" ./
}

cpoec() {
	cp -- ./"$1" "$EMU"/
}

cpieh() {
	cp -- "$EMU"/"$1" ~/
}

cpoeh() {
	cp -- ~/"$1" "$EMU"/
}

cpieb() {
	cp -- "$EMU"/"$1" ../
}

cpoeb() {
	cp -- ../"$1" "$EMU"/
}

cpier() {
	cp -- "$EMU"/"$2" "$1"/
}

cpoer() {
	cp -- "$1"/"$2" "$EMU"/
}

cpiep() {
	cp -- "$EMU"/"$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

cpoep() {
	cp -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$EMU"/
}

cpric() {
	cp -r -- "$DOW"/"$1" ./
}

cproc() {
	cp -r -- ./"$1" "$DOW"/
}

cprih() {
	cp -r -- "$DOW"/"$1" ~/
}

cproh() {
	cp -r -- ~/"$1" "$DOW"/
}

cprib() {
	cp -r -- "$DOW"/"$1" ../
}

cprob() {
	cp -r -- ../"$1" "$DOW"/
}

cprir() {
	cp -r -- "$DOW"/"$2" "$1"/
}

cpror() {
	cp -r -- "$1"/"$2" "$DOW"/
}

cprip() {
	cp -r -- "$DOW"/"$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

cprop() {
	cp -r -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$DOW"/
}

cpridc() {
	cp -r -- "$DOC"/"$1" ./
}

cprodc() {
	cp -r -- ./"$1" "$DOC"/
}

cpridh() {
	cp -r -- "$DOC"/"$1" ~/
}

cprodh() {
	cp -r -- ~/"$1" "$DOC"/
}

cpridb() {
	cp -r -- "$DOC"/"$1" ../
}

cprodb() {
	cp -r -- ../"$1" "$DOC"/
}

cpridr() {
	cp -r -- "$DOC"/"$2" "$1"/
}

cprodr() {
	cp -r -- "$1"/"$2" "$DOC"/
}

cpridp() {
	cp -r -- "$DOC"/"$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

cprodp() {
	cp -r -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$DOC"/
}

cprisc() {
	cp -r -- "$SCR"/"$1" ./
}

cprosc() {
	cp -r -- ./"$1" "$SCR"/
}

cprish() {
	cp -r -- "$SCR"/"$1" ~/
}

cprosh() {
	cp -r -- ~/"$1" "$SCR"/
}

cprisb() {
	cp -r -- "$SCR"/"$1" ../
}

cprosb() {
	cp -r -- ../"$1" "$SCR"/
}

cprisr() {
	cp -r -- "$SCR"/"$2" "$1"/
}

cprosr() {
	cp -r -- "$1"/"$2" "$SCR"/
}

cprisp() {
	cp -r -- "$SCR"/"$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

cprosp() {
	cp -r -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$SCR"/
}

cpriec() {
	cp -r -- "$EMU"/"$1" ./
}

cproec() {
	cp -r -- ./"$1" "$EMU"/
}

cprieh() {
	cp -r -- "$EMU"/"$1" ~/
}

cproeh() {
	cp -r -- ~/"$1" "$EMU"/
}

cprieb() {
	cp -r -- "$EMU"/"$1" ../
}

cproeb() {
	cp -r -- ../"$1" "$EMU"/
}

cprier() {
	cp -r -- "$EMU"/"$2" "$1"/
}

cproer() {
	cp -r -- "$1"/"$2" "$EMU"/
}

cpriep() {
	cp -r -- "$EMU"/"$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

cproep() {
	cp -r -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2" "$EMU"/
}

mviac() {
	(
		cd . || exit
		LOCAL=$(pwd)
		cd "$DOW" || exit
		for f in *; do
			mv -- "$f" "$LOCAL"/
		done
	)
}

mviah() {
	(
		cd ~ || exit
		LOCAL=$(pwd)
		cd "$DOW" || exit
		for f in *; do
			mv -- "$f" "$LOCAL"/
		done
	)
}

mviab() {
	(
		cd .. || exit
		LOCAL=$(pwd)
		cd "$DOW" || exit
		for f in *; do
			mv -- "$f" "$LOCAL"/
		done
	)
}

mviar() {
	(
		cd "$1" || exit
		LOCAL=$(pwd)
		cd "$DOW" || exit
		for f in *; do
			mv -- "$f" "$LOCAL"/
		done
	)
}

mviap() {
	(
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		LOCAL=$(pwd)
		cd "$DOW" || exit
		for f in *; do
			mv -- "$f" "$LOCAL"/
		done
	)
}

mviadc() {
	(
		cd . || exit
		LOCAL=$(pwd)
		cd "$DOC" || exit
		for f in *; do
			mv -- "$f" "$LOCAL"/
		done
	)
}

mviadh() {
	(
		cd ~ || exit
		LOCAL=$(pwd)
		cd "$DOC" || exit
		for f in *; do
			mv -- "$f" "$LOCAL"/
		done
	)
}

mviadb() {
	(
		cd .. || exit
		LOCAL=$(pwd)
		cd "$DOC" || exit
		for f in *; do
			mv -- "$f" "$LOCAL"/
		done
	)
}

mviadr() {
	(
		cd "$1" || exit
		LOCAL=$(pwd)
		cd "$DOC" || exit
		for f in *; do
			mv -- "$f" "$LOCAL"/
		done
	)
}

mviadp() {
	(
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		LOCAL=$(pwd)
		cd "$DOC" || exit
		for f in *; do
			mv -- "$f" "$LOCAL"/
		done
	)
}

mviasc() {
	(
		cd . || exit
		LOCAL=$(pwd)
		cd "$SCR" || exit
		for f in *; do
			mv -- "$f" "$LOCAL"/
		done
	)
}

mviash() {
	(
		cd ~ || exit
		LOCAL=$(pwd)
		cd "$SCR" || exit
		for f in *; do
			mv -- "$f" "$LOCAL"/
		done
	)
}

mviasb() {
	(
		cd .. || exit
		LOCAL=$(pwd)
		cd "$SCR" || exit
		for f in *; do
			mv -- "$f" "$LOCAL"/
		done
	)
}

mviasr() {
	(
		cd "$1" || exit
		LOCAL=$(pwd)
		cd "$SCR" || exit
		for f in *; do
			mv -- "$f" "$LOCAL"/
		done
	)
}

mviasp() {
	(
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		LOCAL=$(pwd)
		cd "$SCR" || exit
		for f in *; do
			mv -- "$f" "$LOCAL"/
		done
	)
}

mviaec() {
	(
		cd . || exit
		LOCAL=$(pwd)
		cd "$EMU" || exit
		for f in *; do
			mv -- "$f" "$LOCAL"/
		done
	)
}

mviaeh() {
	(
		cd ~ || exit
		LOCAL=$(pwd)
		cd "$EMU" || exit
		for f in *; do
			mv -- "$f" "$LOCAL"/
		done
	)
}

mviaeb() {
	(
		cd .. || exit
		LOCAL=$(pwd)
		cd "$EMU" || exit
		for f in *; do
			mv -- "$f" "$LOCAL"/
		done
	)
}

mviaer() {
	(
		cd "$1" || exit
		LOCAL=$(pwd)
		cd "$EMU" || exit
		for f in *; do
			mv -- "$f" "$LOCAL"/
		done
	)
}

mviaep() {
	(
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		LOCAL=$(pwd)
		cd "$EMU" || exit
		for f in *; do
			mv -- "$f" "$LOCAL"/
		done
	)
}

cpiac() {
	(
		cd . || exit
		LOCAL=$(pwd)
		cd "$DOW" || exit
		for f in *; do
			cp -r -- "$f" "$LOCAL"/
		done
	)
}

cpiah() {
	(
		cd ~ || exit
		LOCAL=$(pwd)
		cd "$DOW" || exit
		for f in *; do
			cp -r -- "$f" "$LOCAL"/
		done
	)
}

cpiab() {
	(
		cd .. || exit
		LOCAL=$(pwd)
		cd "$DOW" || exit
		for f in *; do
			cp -r -- "$f" "$LOCAL"/
		done
	)
}

cpiar() {
	(
		cd "$1" || exit
		LOCAL=$(pwd)
		cd "$DOW" || exit
		for f in *; do
			cp -r -- "$f" "$LOCAL"/
		done
	)
}

cpiap() {
	(
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		LOCAL=$(pwd)
		cd "$DOW" || exit
		for f in *; do
			cp -r -- "$f" "$LOCAL"/
		done
	)
}

cpiadc() {
	(
		cd . || exit
		LOCAL=$(pwd)
		cd "$DOC" || exit
		for f in *; do
			cp -r -- "$f" "$LOCAL"/
		done
	)
}

cpiadh() {
	(
		cd ~ || exit
		LOCAL=$(pwd)
		cd "$DOC" || exit
		for f in *; do
			cp -r -- "$f" "$LOCAL"/
		done
	)
}

cpiadb() {
	(
		cd .. || exit
		LOCAL=$(pwd)
		cd "$DOC" || exit
		for f in *; do
			cp -r -- "$f" "$LOCAL"/
		done
	)
}

cpiadr() {
	(
		cd "$1" || exit
		LOCAL=$(pwd)
		cd "$DOC" || exit
		for f in *; do
			cp -r -- "$f" "$LOCAL"/
		done
	)
}

cpiadp() {
	(
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		LOCAL=$(pwd)
		cd "$DOC" || exit
		for f in *; do
			cp -r -- "$f" "$LOCAL"/
		done
	)
}

cpiasc() {
	(
		cd . || exit
		LOCAL=$(pwd)
		cd "$SCR" || exit
		for f in *; do
			cp -r -- "$f" "$LOCAL"/
		done
	)
}

cpiash() {
	(
		cd ~ || exit
		LOCAL=$(pwd)
		cd "$SCR" || exit
		for f in *; do
			cp -r -- "$f" "$LOCAL"/
		done
	)
}

cpiasb() {
	(
		cd .. || exit
		LOCAL=$(pwd)
		cd "$SCR" || exit
		for f in *; do
			cp -r -- "$f" "$LOCAL"/
		done
	)
}

cpiasr() {
	(
		cd "$1" || exit
		LOCAL=$(pwd)
		cd "$SCR" || exit
		for f in *; do
			cp -r -- "$f" "$LOCAL"/
		done
	)
}

cpiasp() {
	(
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		LOCAL=$(pwd)
		cd "$SCR" || exit
		for f in *; do
			cp -r -- "$f" "$LOCAL"/
		done
	)
}

cpiaec() {
	(
		cd . || exit
		LOCAL=$(pwd)
		cd "$EMU" || exit
		for f in *; do
			cp -r -- "$f" "$LOCAL"/
		done
	)
}

cpiaeh() {
	(
		cd ~ || exit
		LOCAL=$(pwd)
		cd "$EMU" || exit
		for f in *; do
			cp -r -- "$f" "$LOCAL"/
		done
	)
}

cpiaeb() {
	(
		cd .. || exit
		LOCAL=$(pwd)
		cd "$EMU" || exit
		for f in *; do
			cp -r -- "$f" "$LOCAL"/
		done
	)
}

cpiaer() {
	(
		cd "$1" || exit
		LOCAL=$(pwd)
		cd "$EMU" || exit
		for f in *; do
			cp -r -- "$f" "$LOCAL"/
		done
	)
}

cpiaep() {
	(
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		LOCAL=$(pwd)
		cd "$EMU" || exit
		for f in *; do
			cp -r -- "$f" "$LOCAL"/
		done
	)
}

mvaic() {
	(
		mvic "$1"
		cd . || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

mvaih() {
	(
		mvih "$1"
		cd ~ || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

mvaib() {
	(
		mvib "$1"
		cd .. || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

mvair() {
	(
		mvir "$1" "$2"
		cd "$1" || exit
		cp -r -- "$2"/* ./
		rm -r "$2"
	)
}

mvaip() {
	(
		mvip "$1" "$2"
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		cp -r -- "$2"/* ./
		rm -r "$2"
	)
}

mvaidc() {
	(
		mvidc "$1"
		cd . || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

mvaidh() {
	(
		mvidh "$1"
		cd ~ || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

mvaidb() {
	(
		mvidb "$1"
		cd .. || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

mvaidr() {
	(
		mvidr "$1" "$2"
		cd "$1" || exit
		cp -r -- "$2"/* ./
		rm -r "$2"
	)
}

mvaidp() {
	(
		mvidp "$1" "$2"
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		cp -r -- "$2"/* ./
		rm -r "$2"
	)
}

mvaisc() {
	(
		mvisc "$1"
		cd . || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

mvaish() {
	(
		mvish "$1"
		cd ~ || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

mvaisb() {
	(
		mvisb "$1"
		cd .. || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

mvaisr() {
	(
		mvisr "$1" "$2"
		cd "$1" || exit
		cp -r -- "$2"/* ./
		rm -r "$2"
	)
}

mvaisp() {
	(
		mvisp "$1" "$2"
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		cp -r -- "$2"/* ./
		rm -r "$2"
	)
}

mvaiec() {
	(
		mviec "$1"
		cd . || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

mvaieh() {
	(
		mvieh "$1"
		cd ~ || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

mvaieb() {
	(
		mvieb "$1"
		cd .. || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

mvaier() {
	(
		mvier "$1" "$2"
		cd "$1" || exit
		cp -r -- "$2"/* ./
		rm -r "$2"
	)
}

mvaiep() {
	(
		mviep "$1" "$2"
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		cp -r -- "$2"/* ./
		rm -r "$2"
	)
}

cpaic() {
	(
		cpric "$1"
		cd . || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

cpaih() {
	(
		cprih "$1"
		cd ~ || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

cpaib() {
	(
		cprib "$1"
		cd .. || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

cpair() {
	(
		cprir "$1" "$2"
		cd "$1" || exit
		cp -r -- "$2"/* ./
		rm -r "$2"
	)
}

cpaip() {
	(
		cprip "$1" "$2"
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		cp -r -- "$2"/* ./
		rm -r "$2"
	)
}

cpaidc() {
	(
		cpridc "$1"
		cd . || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

cpaidh() {
	(
		cpridh "$1"
		cd ~ || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

cpaidb() {
	(
		cpridb "$1"
		cd .. || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

cpaidr() {
	(
		cpridr "$1" "$2"
		cd "$1" || exit
		cp -r -- "$2"/* ./
		rm -r "$2"
	)
}

cpaidp() {
	(
		cpridp "$1" "$2"
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		cp -r -- "$2"/* ./
		rm -r "$2"
	)
}

cpaisc() {
	(
		cprisc "$1"
		cd . || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

cpaish() {
	(
		cprish "$1"
		cd ~ || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

cpaisb() {
	(
		cprisb "$1"
		cd .. || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

cpaisr() {
	(
		cprisr "$1" "$2"
		cd "$1" || exit
		cp -r -- "$2"/* ./
		rm -r "$2"
	)
}

cpaisp() {
	(
		cprisp "$1" "$2"
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		cp -r -- "$2"/* ./
		rm -r "$2"
	)
}

cpaiec() {
	(
		cpriec "$1"
		cd . || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

cpaieh() {
	(
		cprieh "$1"
		cd ~ || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

cpaieb() {
	(
		cprieb "$1"
		cd .. || exit
		cp -r -- "$1"/* ./
		rm -r "$1"
	)
}

cpaier() {
	(
		cprier "$1" "$2"
		cd "$1" || exit
		cp -r -- "$2"/* ./
		rm -r "$2"
	)
}

cpaiep() {
	(
		cpriep "$1" "$2"
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		cp -r -- "$2"/* ./
		rm -r "$2"
	)
}

mvycr() {
	mv -- "$2" "$1"/
}

mvucr() {
	mv -- "$1"/"$2"
}

mvycp() {
	mv -- "$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

mvucp() {
	mv -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2"
}

mvyhr() {
	mv -- "$2" "$1"/
}

mvuhr() {
	mv -- "$1"/"$2"
}

mvyhp() {
	mv -- "$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

mvuhp() {
	mv -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2"
}

mvybr() {
	mv -- "$2" "$1"/
}

mvubr() {
	mv -- "$1"/"$2"
}

mvybp() {
	mv -- "$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

mvubp() {
	mv -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2"
}

cpycr() {
	cp -- "$2" "$1"/
}

cpucr() {
	cp -- "$1"/"$2"
}

cpycp() {
	cp -- "$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

cpucp() {
	cp -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2"
}

cpyhr() {
	cp -- "$2" "$1"/
}

cpuhr() {
	cp -- "$1"/"$2"
}

cpyhp() {
	cp -- "$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

cpuhp() {
	cp -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2"
}

cpybr() {
	cp -- "$2" "$1"/
}

cpubr() {
	cp -- "$1"/"$2"
}

cpybp() {
	cp -- "$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

cpubp() {
	cp -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2"
}

cprycr() {
	cp -r -- "$2" "$1"/
}

cprucr() {
	cp -r -- "$1"/"$2"
}

cprycp() {
	cp -r -- "$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

cprucp() {
	cp -r -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2"
}

cpryhr() {
	cp -r -- "$2" "$1"/
}

cpruhr() {
	cp -r -- "$1"/"$2"
}

cpryhp() {
	cp -r -- "$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

cpruhp() {
	cp -r -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2"
}

cprybr() {
	cp -r -- "$2" "$1"/
}

cprubr() {
	cp -r -- "$1"/"$2"
}

cprybp() {
	cp -r -- "$2" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
}

cprubp() {
	cp -r -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$2"
}

mvyacr() {
	(
		cd "$1" || exit
		LOCAL=$(pwd)
		cd . || exit
		for f in *; do
			mv -- "$f" "$LOCAL"/
		done
	)
}

mvyacp() {
	(
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		LOCAL=$(pwd)
		cd . || exit
		for f in *; do
			mv -- "$f" "$LOCAL"/
		done
	)
}

mvyahr() {
	(
		cd "$1" || exit
		LOCAL=$(pwd)
		cd ~ || exit
		for f in *; do
			mv -- "$f" "$LOCAL"/
		done
	)
}

mvyahp() {
	(
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		LOCAL=$(pwd)
		cd ~ || exit
		for f in *; do
			mv -- "$f" "$LOCAL"/
		done
	)
}

mvyabr() {
	(
		cd "$1" || exit
		LOCAL=$(pwd)
		cd .. || exit
		for f in *; do
			mv -- "$f" "$LOCAL"/
		done
	)
}

mvyabp() {
	(
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		LOCAL=$(pwd)
		cd .. || exit
		for f in *; do
			mv -- "$f" "$LOCAL"/
		done
	)
}

cpyacr() {
	(
		cd "$1" || exit
		LOCAL=$(pwd)
		cd . || exit
		for f in *; do
			cp -r -- "$f" "$LOCAL"/
		done
	)
}

cpyacp() {
	(
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		LOCAL=$(pwd)
		cd . || exit
		for f in *; do
			cp -r -- "$f" "$LOCAL"/
		done
	)
}

cpyahr() {
	(
		cd "$1" || exit
		LOCAL=$(pwd)
		cd ~ || exit
		for f in *; do
			cp -r -- "$f" "$LOCAL"/
		done
	)
}

cpyahp() {
	(
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		LOCAL=$(pwd)
		cd ~ || exit
		for f in *; do
			cp -r -- "$f" "$LOCAL"/
		done
	)
}

cpyabr() {
	(
		cd "$1" || exit
		LOCAL=$(pwd)
		cd .. || exit
		for f in *; do
			cp -r -- "$f" "$LOCAL"/
		done
	)
}

cpyabp() {
	(
		cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
		LOCAL=$(pwd)
		cd .. || exit
		for f in *; do
			cp -r -- "$f" "$LOCAL"/
		done
	)
}

rmp() {
	rm -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root/$2"
}

rmrp() {
	rm -r -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root/$2"
}

rmrfp() {
	rm -rf -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root/$2"
}

mkdirp() {
	mkdir -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root/$2"
}

mkdirpp() {
	mkdir -p -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root/$2"
}
mvipt() {
	if [ -n "$PROOT_TERMUX" ]; then
		mvip "$PROOT_TERMUX" "$1"
	else
		mvip "termux" "$1"
	fi
}

mvipu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		mvip "$PROOT_UBUNTU" "$1"
	else
		mvip "ubuntu" "$1"
	fi
}

mvipd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		mvip "$PROOT_DEBIAN" "$1"
	else
		mvip "debian" "$1"
	fi
}

mvipub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		mvip "$PROOT_UBUNTUBOX" "$1"
	else
		mvip "ubuntubox" "$1"
	fi
}

mvipdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		mvip "$PROOT_DEBIANBOX" "$1"
	else
		mvip "debianbox" "$1"
	fi
}

mvidpt() {
	if [ -n "$PROOT_TERMUX" ]; then
		mvidp "$PROOT_TERMUX" "$1"
	else
		mvidp "termux" "$1"
	fi
}

mvidpu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		mvidp "$PROOT_UBUNTU" "$1"
	else
		mvidp "ubuntu" "$1"
	fi
}

mvidpd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		mvidp "$PROOT_DEBIAN" "$1"
	else
		mvidp "debian" "$1"
	fi
}

mvidpub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		mvidp "$PROOT_UBUNTUBOX" "$1"
	else
		mvidp "ubuntubox" "$1"
	fi
}

mvidpdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		mvidp "$PROOT_DEBIANBOX" "$1"
	else
		mvidp "debianbox" "$1"
	fi
}

mvispt() {
	if [ -n "$PROOT_TERMUX" ]; then
		mvisp "$PROOT_TERMUX" "$1"
	else
		mvisp "termux" "$1"
	fi
}

mvispu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		mvisp "$PROOT_UBUNTU" "$1"
	else
		mvisp "ubuntu" "$1"
	fi
}

mvispd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		mvisp "$PROOT_DEBIAN" "$1"
	else
		mvisp "debian" "$1"
	fi
}

mvispub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		mvisp "$PROOT_UBUNTUBOX" "$1"
	else
		mvisp "ubuntubox" "$1"
	fi
}

mvispdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		mvisp "$PROOT_DEBIANBOX" "$1"
	else
		mvisp "debianbox" "$1"
	fi
}

mviept() {
	if [ -n "$PROOT_TERMUX" ]; then
		mviep "$PROOT_TERMUX" "$1"
	else
		mviep "termux" "$1"
	fi
}

mviepu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		mviep "$PROOT_UBUNTU" "$1"
	else
		mviep "ubuntu" "$1"
	fi
}

mviepd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		mviep "$PROOT_DEBIAN" "$1"
	else
		mviep "debian" "$1"
	fi
}

mviepub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		mviep "$PROOT_UBUNTUBOX" "$1"
	else
		mviep "ubuntubox" "$1"
	fi
}

mviepdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		mviep "$PROOT_DEBIANBOX" "$1"
	else
		mviep "debianbox" "$1"
	fi
}

mvopt() {
	if [ -n "$PROOT_TERMUX" ]; then
		mvop "$PROOT_TERMUX" "$1"
	else
		mvop "termux" "$1"
	fi
}

mvopu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		mvop "$PROOT_UBUNTU" "$1"
	else
		mvop "ubuntu" "$1"
	fi
}

mvopd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		mvop "$PROOT_DEBIAN" "$1"
	else
		mvop "debian" "$1"
	fi
}

mvopub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		mvop "$PROOT_UBUNTUBOX" "$1"
	else
		mvop "ubuntubox" "$1"
	fi
}

mvopdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		mvop "$PROOT_DEBIANBOX" "$1"
	else
		mvop "debianbox" "$1"
	fi
}

mvodpt() {
	if [ -n "$PROOT_TERMUX" ]; then
		mvodp "$PROOT_TERMUX" "$1"
	else
		mvodp "termux" "$1"
	fi
}

mvodpu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		mvodp "$PROOT_UBUNTU" "$1"
	else
		mvodp "ubuntu" "$1"
	fi
}

mvodpd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		mvodp "$PROOT_DEBIAN" "$1"
	else
		mvodp "debian" "$1"
	fi
}

mvodpub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		mvodp "$PROOT_UBUNTUBOX" "$1"
	else
		mvodp "ubuntubox" "$1"
	fi
}

mvodpdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		mvodp "$PROOT_DEBIANBOX" "$1"
	else
		mvodp "debianbox" "$1"
	fi
}

mvospt() {
	if [ -n "$PROOT_TERMUX" ]; then
		mvosp "$PROOT_TERMUX" "$1"
	else
		mvosp "termux" "$1"
	fi
}

mvospu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		mvosp "$PROOT_UBUNTU" "$1"
	else
		mvosp "ubuntu" "$1"
	fi
}

mvospd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		mvosp "$PROOT_DEBIAN" "$1"
	else
		mvosp "debian" "$1"
	fi
}

mvospub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		mvosp "$PROOT_UBUNTUBOX" "$1"
	else
		mvosp "ubuntubox" "$1"
	fi
}

mvospdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		mvosp "$PROOT_DEBIANBOX" "$1"
	else
		mvosp "debianbox" "$1"
	fi
}

mvoept() {
	if [ -n "$PROOT_TERMUX" ]; then
		mvoep "$PROOT_TERMUX" "$1"
	else
		mvoep "termux" "$1"
	fi
}

mvoepu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		mvoep "$PROOT_UBUNTU" "$1"
	else
		mvoep "ubuntu" "$1"
	fi
}

mvoepd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		mvoep "$PROOT_DEBIAN" "$1"
	else
		mvoep "debian" "$1"
	fi
}

mvoepub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		mvoep "$PROOT_UBUNTUBOX" "$1"
	else
		mvoep "ubuntubox" "$1"
	fi
}

mvoepdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		mvoep "$PROOT_DEBIANBOX" "$1"
	else
		mvoep "debianbox" "$1"
	fi
}

cpipt() {
	if [ -n "$PROOT_TERMUX" ]; then
		cpip "$PROOT_TERMUX" "$1"
	else
		cpip "termux" "$1"
	fi
}

cpipu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cpip "$PROOT_UBUNTU" "$1"
	else
		cpip "ubuntu" "$1"
	fi
}

cpipd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cpip "$PROOT_DEBIAN" "$1"
	else
		cpip "debian" "$1"
	fi
}

cpipub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cpip "$PROOT_UBUNTUBOX" "$1"
	else
		cpip "ubuntubox" "$1"
	fi
}

cpipdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cpip "$PROOT_DEBIANBOX" "$1"
	else
		cpip "debianbox" "$1"
	fi
}

cpidpt() {
	if [ -n "$PROOT_TERMUX" ]; then
		cpidp "$PROOT_TERMUX" "$1"
	else
		cpidp "termux" "$1"
	fi
}

cpidpu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cpidp "$PROOT_UBUNTU" "$1"
	else
		cpidp "ubuntu" "$1"
	fi
}

cpidpd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cpidp "$PROOT_DEBIAN" "$1"
	else
		cpidp "debian" "$1"
	fi
}

cpidpub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cpidp "$PROOT_UBUNTUBOX" "$1"
	else
		cpidp "ubuntubox" "$1"
	fi
}

cpidpdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cpidp "$PROOT_DEBIANBOX" "$1"
	else
		cpidp "debianbox" "$1"
	fi
}

cpispt() {
	if [ -n "$PROOT_TERMUX" ]; then
		cpisp "$PROOT_TERMUX" "$1"
	else
		cpisp "termux" "$1"
	fi
}

cpispu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cpisp "$PROOT_UBUNTU" "$1"
	else
		cpisp "ubuntu" "$1"
	fi
}

cpispd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cpisp "$PROOT_DEBIAN" "$1"
	else
		cpisp "debian" "$1"
	fi
}

cpispub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cpisp "$PROOT_UBUNTUBOX" "$1"
	else
		cpisp "ubuntubox" "$1"
	fi
}

cpispdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cpisp "$PROOT_DEBIANBOX" "$1"
	else
		cpisp "debianbox" "$1"
	fi
}

cpiept() {
	if [ -n "$PROOT_TERMUX" ]; then
		cpiep "$PROOT_TERMUX" "$1"
	else
		cpiep "termux" "$1"
	fi
}

cpiepu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cpiep "$PROOT_UBUNTU" "$1"
	else
		cpiep "ubuntu" "$1"
	fi
}

cpiepd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cpiep "$PROOT_DEBIAN" "$1"
	else
		cpiep "debian" "$1"
	fi
}

cpiepub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cpiep "$PROOT_UBUNTUBOX" "$1"
	else
		cpiep "ubuntubox" "$1"
	fi
}

cpiepdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cpiep "$PROOT_DEBIANBOX" "$1"
	else
		cpiep "debianbox" "$1"
	fi
}

cpopt() {
	if [ -n "$PROOT_TERMUX" ]; then
		cpop "$PROOT_TERMUX" "$1"
	else
		cpop "termux" "$1"
	fi
}

cpopu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cpop "$PROOT_UBUNTU" "$1"
	else
		cpop "ubuntu" "$1"
	fi
}

cpopd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cpop "$PROOT_DEBIAN" "$1"
	else
		cpop "debian" "$1"
	fi
}

cpopub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cpop "$PROOT_UBUNTUBOX" "$1"
	else
		cpop "ubuntubox" "$1"
	fi
}

cpopdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cpop "$PROOT_DEBIANBOX" "$1"
	else
		cpop "debianbox" "$1"
	fi
}

cpodpt() {
	if [ -n "$PROOT_TERMUX" ]; then
		cpodp "$PROOT_TERMUX" "$1"
	else
		cpodp "termux" "$1"
	fi
}

cpodpu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cpodp "$PROOT_UBUNTU" "$1"
	else
		cpodp "ubuntu" "$1"
	fi
}

cpodpd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cpodp "$PROOT_DEBIAN" "$1"
	else
		cpodp "debian" "$1"
	fi
}

cpodpub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cpodp "$PROOT_UBUNTUBOX" "$1"
	else
		cpodp "ubuntubox" "$1"
	fi
}

cpodpdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cpodp "$PROOT_DEBIANBOX" "$1"
	else
		cpodp "debianbox" "$1"
	fi
}

cpospt() {
	if [ -n "$PROOT_TERMUX" ]; then
		cposp "$PROOT_TERMUX" "$1"
	else
		cposp "termux" "$1"
	fi
}

cpospu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cposp "$PROOT_UBUNTU" "$1"
	else
		cposp "ubuntu" "$1"
	fi
}

cpospd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cposp "$PROOT_DEBIAN" "$1"
	else
		cposp "debian" "$1"
	fi
}

cpospub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cposp "$PROOT_UBUNTUBOX" "$1"
	else
		cposp "ubuntubox" "$1"
	fi
}

cpospdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cposp "$PROOT_DEBIANBOX" "$1"
	else
		cposp "debianbox" "$1"
	fi
}

cpoept() {
	if [ -n "$PROOT_TERMUX" ]; then
		cpoep "$PROOT_TERMUX" "$1"
	else
		cpoep "termux" "$1"
	fi
}

cpoepu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cpoep "$PROOT_UBUNTU" "$1"
	else
		cpoep "ubuntu" "$1"
	fi
}

cpoepd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cpoep "$PROOT_DEBIAN" "$1"
	else
		cpoep "debian" "$1"
	fi
}

cpoepub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cpoep "$PROOT_UBUNTUBOX" "$1"
	else
		cpoep "ubuntubox" "$1"
	fi
}

cpoepdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cpoep "$PROOT_DEBIANBOX" "$1"
	else
		cpoep "debianbox" "$1"
	fi
}

cpript() {
	if [ -n "$PROOT_TERMUX" ]; then
		cprip "$PROOT_TERMUX" "$1"
	else
		cprip "termux" "$1"
	fi
}

cpripu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cprip "$PROOT_UBUNTU" "$1"
	else
		cprip "ubuntu" "$1"
	fi
}

cpripd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cprip "$PROOT_DEBIAN" "$1"
	else
		cprip "debian" "$1"
	fi
}

cpripub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cprip "$PROOT_UBUNTUBOX" "$1"
	else
		cprip "ubuntubox" "$1"
	fi
}

cpripdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cprip "$PROOT_DEBIANBOX" "$1"
	else
		cprip "debianbox" "$1"
	fi
}

cpridpt() {
	if [ -n "$PROOT_TERMUX" ]; then
		cpridp "$PROOT_TERMUX" "$1"
	else
		cpridp "termux" "$1"
	fi
}

cpridpu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cpridp "$PROOT_UBUNTU" "$1"
	else
		cpridp "ubuntu" "$1"
	fi
}

cpridpd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cpridp "$PROOT_DEBIAN" "$1"
	else
		cpridp "debian" "$1"
	fi
}

cpridpub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cpridp "$PROOT_UBUNTUBOX" "$1"
	else
		cpridp "ubuntubox" "$1"
	fi
}

cpridpdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cpridp "$PROOT_DEBIANBOX" "$1"
	else
		cpridp "debianbox" "$1"
	fi
}

cprispt() {
	if [ -n "$PROOT_TERMUX" ]; then
		cprisp "$PROOT_TERMUX" "$1"
	else
		cprisp "termux" "$1"
	fi
}

cprispu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cprisp "$PROOT_UBUNTU" "$1"
	else
		cprisp "ubuntu" "$1"
	fi
}

cprispd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cprisp "$PROOT_DEBIAN" "$1"
	else
		cprisp "debian" "$1"
	fi
}

cprispub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cprisp "$PROOT_UBUNTUBOX" "$1"
	else
		cprisp "ubuntubox" "$1"
	fi
}

cprispdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cprisp "$PROOT_DEBIANBOX" "$1"
	else
		cprisp "debianbox" "$1"
	fi
}

cpriept() {
	if [ -n "$PROOT_TERMUX" ]; then
		cpriep "$PROOT_TERMUX" "$1"
	else
		cpriep "termux" "$1"
	fi
}

cpriepu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cpriep "$PROOT_UBUNTU" "$1"
	else
		cpriep "ubuntu" "$1"
	fi
}

cpriepd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cpriep "$PROOT_DEBIAN" "$1"
	else
		cpriep "debian" "$1"
	fi
}

cpriepub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cpriep "$PROOT_UBUNTUBOX" "$1"
	else
		cpriep "ubuntubox" "$1"
	fi
}

cpriepdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cpriep "$PROOT_DEBIANBOX" "$1"
	else
		cpriep "debianbox" "$1"
	fi
}

cpropt() {
	if [ -n "$PROOT_TERMUX" ]; then
		cprop "$PROOT_TERMUX" "$1"
	else
		cprop "termux" "$1"
	fi
}

cpropu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cprop "$PROOT_UBUNTU" "$1"
	else
		cprop "ubuntu" "$1"
	fi
}

cpropd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cprop "$PROOT_DEBIAN" "$1"
	else
		cprop "debian" "$1"
	fi
}

cpropub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cprop "$PROOT_UBUNTUBOX" "$1"
	else
		cprop "ubuntubox" "$1"
	fi
}

cpropdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cprop "$PROOT_DEBIANBOX" "$1"
	else
		cprop "debianbox" "$1"
	fi
}

cprodpt() {
	if [ -n "$PROOT_TERMUX" ]; then
		cprodp "$PROOT_TERMUX" "$1"
	else
		cprodp "termux" "$1"
	fi
}

cprodpu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cprodp "$PROOT_UBUNTU" "$1"
	else
		cprodp "ubuntu" "$1"
	fi
}

cprodpd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cprodp "$PROOT_DEBIAN" "$1"
	else
		cprodp "debian" "$1"
	fi
}

cprodpub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cprodp "$PROOT_UBUNTUBOX" "$1"
	else
		cprodp "ubuntubox" "$1"
	fi
}

cprodpdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cprodp "$PROOT_DEBIANBOX" "$1"
	else
		cprodp "debianbox" "$1"
	fi
}

cprospt() {
	if [ -n "$PROOT_TERMUX" ]; then
		cprosp "$PROOT_TERMUX" "$1"
	else
		cprosp "termux" "$1"
	fi
}

cprospu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cprosp "$PROOT_UBUNTU" "$1"
	else
		cprosp "ubuntu" "$1"
	fi
}

cprospd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cprosp "$PROOT_DEBIAN" "$1"
	else
		cprosp "debian" "$1"
	fi
}

cprospub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cprosp "$PROOT_UBUNTUBOX" "$1"
	else
		cprosp "ubuntubox" "$1"
	fi
}

cprospdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cprosp "$PROOT_DEBIANBOX" "$1"
	else
		cprosp "debianbox" "$1"
	fi
}

cproept() {
	if [ -n "$PROOT_TERMUX" ]; then
		cproep "$PROOT_TERMUX" "$1"
	else
		cproep "termux" "$1"
	fi
}

cproepu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cproep "$PROOT_UBUNTU" "$1"
	else
		cproep "ubuntu" "$1"
	fi
}

cproepd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cproep "$PROOT_DEBIAN" "$1"
	else
		cproep "debian" "$1"
	fi
}

cproepub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cproep "$PROOT_UBUNTUBOX" "$1"
	else
		cproep "ubuntubox" "$1"
	fi
}

cproepdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cproep "$PROOT_DEBIANBOX" "$1"
	else
		cproep "debianbox" "$1"
	fi
}

mviapt() {
	if [ -n "$PROOT_TERMUX" ]; then
		mviap "$PROOT_TERMUX" "$1"
	else
		mviap "termux" "$1"
	fi
}

mviapu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		mviap "$PROOT_UBUNTU" "$1"
	else
		mviap "ubuntu" "$1"
	fi
}

mviapd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		mviap "$PROOT_DEBIAN" "$1"
	else
		mviap "debian" "$1"
	fi
}

mviapub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		mviap "$PROOT_UBUNTUBOX" "$1"
	else
		mviap "ubuntubox" "$1"
	fi
}

mviapdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		mviap "$PROOT_DEBIANBOX" "$1"
	else
		mviap "debianbox" "$1"
	fi
}

mviadpt() {
	if [ -n "$PROOT_TERMUX" ]; then
		mviadp "$PROOT_TERMUX" "$1"
	else
		mviadp "termux" "$1"
	fi
}

mviadpu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		mviadp "$PROOT_UBUNTU" "$1"
	else
		mviadp "ubuntu" "$1"
	fi
}

mviadpd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		mviadp "$PROOT_DEBIAN" "$1"
	else
		mviadp "debian" "$1"
	fi
}

mviadpub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		mviadp "$PROOT_UBUNTUBOX" "$1"
	else
		mviadp "ubuntubox" "$1"
	fi
}

mviadpdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		mviadp "$PROOT_DEBIANBOX" "$1"
	else
		mviadp "debianbox" "$1"
	fi
}

mviaspt() {
	if [ -n "$PROOT_TERMUX" ]; then
		mviasp "$PROOT_TERMUX" "$1"
	else
		mviasp "termux" "$1"
	fi
}

mviaspu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		mviasp "$PROOT_UBUNTU" "$1"
	else
		mviasp "ubuntu" "$1"
	fi
}

mviaspd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		mviasp "$PROOT_DEBIAN" "$1"
	else
		mviasp "debian" "$1"
	fi
}

mviaspub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		mviasp "$PROOT_UBUNTUBOX" "$1"
	else
		mviasp "ubuntubox" "$1"
	fi
}

mviaspdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		mviasp "$PROOT_DEBIANBOX" "$1"
	else
		mviasp "debianbox" "$1"
	fi
}

mviaept() {
	if [ -n "$PROOT_TERMUX" ]; then
		mviaep "$PROOT_TERMUX" "$1"
	else
		mviaep "termux" "$1"
	fi
}

mviaepu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		mviaep "$PROOT_UBUNTU" "$1"
	else
		mviaep "ubuntu" "$1"
	fi
}

mviaepd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		mviaep "$PROOT_DEBIAN" "$1"
	else
		mviaep "debian" "$1"
	fi
}

mviaepub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		mviaep "$PROOT_UBUNTUBOX" "$1"
	else
		mviaep "ubuntubox" "$1"
	fi
}

mviaepdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		mviaep "$PROOT_DEBIANBOX" "$1"
	else
		mviaep "debianbox" "$1"
	fi
}

cpiapt() {
	if [ -n "$PROOT_TERMUX" ]; then
		cpiap "$PROOT_TERMUX" "$1"
	else
		cpiap "termux" "$1"
	fi
}

cpiapu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cpiap "$PROOT_UBUNTU" "$1"
	else
		cpiap "ubuntu" "$1"
	fi
}

cpiapd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cpiap "$PROOT_DEBIAN" "$1"
	else
		cpiap "debian" "$1"
	fi
}

cpiapub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cpiap "$PROOT_UBUNTUBOX" "$1"
	else
		cpiap "ubuntubox" "$1"
	fi
}

cpiapdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cpiap "$PROOT_DEBIANBOX" "$1"
	else
		cpiap "debianbox" "$1"
	fi
}

cpiadpt() {
	if [ -n "$PROOT_TERMUX" ]; then
		cpiadp "$PROOT_TERMUX" "$1"
	else
		cpiadp "termux" "$1"
	fi
}

cpiadpu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cpiadp "$PROOT_UBUNTU" "$1"
	else
		cpiadp "ubuntu" "$1"
	fi
}

cpiadpd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cpiadp "$PROOT_DEBIAN" "$1"
	else
		cpiadp "debian" "$1"
	fi
}

cpiadpub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cpiadp "$PROOT_UBUNTUBOX" "$1"
	else
		cpiadp "ubuntubox" "$1"
	fi
}

cpiadpdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cpiadp "$PROOT_DEBIANBOX" "$1"
	else
		cpiadp "debianbox" "$1"
	fi
}

cpiaspt() {
	if [ -n "$PROOT_TERMUX" ]; then
		cpiasp "$PROOT_TERMUX" "$1"
	else
		cpiasp "termux" "$1"
	fi
}

cpiaspu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cpiasp "$PROOT_UBUNTU" "$1"
	else
		cpiasp "ubuntu" "$1"
	fi
}

cpiaspd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cpiasp "$PROOT_DEBIAN" "$1"
	else
		cpiasp "debian" "$1"
	fi
}

cpiaspub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cpiasp "$PROOT_UBUNTUBOX" "$1"
	else
		cpiasp "ubuntubox" "$1"
	fi
}

cpiaspdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cpiasp "$PROOT_DEBIANBOX" "$1"
	else
		cpiasp "debianbox" "$1"
	fi
}

cpiaept() {
	if [ -n "$PROOT_TERMUX" ]; then
		cpiaep "$PROOT_TERMUX" "$1"
	else
		cpiaep "termux" "$1"
	fi
}

cpiaepu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cpiaep "$PROOT_UBUNTU" "$1"
	else
		cpiaep "ubuntu" "$1"
	fi
}

cpiaepd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cpiaep "$PROOT_DEBIAN" "$1"
	else
		cpiaep "debian" "$1"
	fi
}

cpiaepub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cpiaep "$PROOT_UBUNTUBOX" "$1"
	else
		cpiaep "ubuntubox" "$1"
	fi
}

cpiaepdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cpiaep "$PROOT_DEBIANBOX" "$1"
	else
		cpiaep "debianbox" "$1"
	fi
}

mvaipt() {
	if [ -n "$PROOT_TERMUX" ]; then
		mvaip "$PROOT_TERMUX" "$1"
	else
		mvaip "termux" "$1"
	fi
}

mvaipu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		mvaip "$PROOT_UBUNTU" "$1"
	else
		mvaip "ubuntu" "$1"
	fi
}

mvaipd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		mvaip "$PROOT_DEBIAN" "$1"
	else
		mvaip "debian" "$1"
	fi
}

mvaipub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		mvaip "$PROOT_UBUNTUBOX" "$1"
	else
		mvaip "ubuntubox" "$1"
	fi
}

mvaipdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		mvaip "$PROOT_DEBIANBOX" "$1"
	else
		mvaip "debianbox" "$1"
	fi
}

mvaidpt() {
	if [ -n "$PROOT_TERMUX" ]; then
		mvaidp "$PROOT_TERMUX" "$1"
	else
		mvaidp "termux" "$1"
	fi
}

mvaidpu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		mvaidp "$PROOT_UBUNTU" "$1"
	else
		mvaidp "ubuntu" "$1"
	fi
}

mvaidpd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		mvaidp "$PROOT_DEBIAN" "$1"
	else
		mvaidp "debian" "$1"
	fi
}

mvaidpub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		mvaidp "$PROOT_UBUNTUBOX" "$1"
	else
		mvaidp "ubuntubox" "$1"
	fi
}

mvaidpdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		mvaidp "$PROOT_DEBIANBOX" "$1"
	else
		mvaidp "debianbox" "$1"
	fi
}

mvaispt() {
	if [ -n "$PROOT_TERMUX" ]; then
		mvaisp "$PROOT_TERMUX" "$1"
	else
		mvaisp "termux" "$1"
	fi
}

mvaispu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		mvaisp "$PROOT_UBUNTU" "$1"
	else
		mvaisp "ubuntu" "$1"
	fi
}

mvaispd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		mvaisp "$PROOT_DEBIAN" "$1"
	else
		mvaisp "debian" "$1"
	fi
}

mvaispub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		mvaisp "$PROOT_UBUNTUBOX" "$1"
	else
		mvaisp "ubuntubox" "$1"
	fi
}

mvaispdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		mvaisp "$PROOT_DEBIANBOX" "$1"
	else
		mvaisp "debianbox" "$1"
	fi
}

mvaiept() {
	if [ -n "$PROOT_TERMUX" ]; then
		mvaiep "$PROOT_TERMUX" "$1"
	else
		mvaiep "termux" "$1"
	fi
}

mvaiepu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		mvaiep "$PROOT_UBUNTU" "$1"
	else
		mvaiep "ubuntu" "$1"
	fi
}

mvaiepd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		mvaiep "$PROOT_DEBIAN" "$1"
	else
		mvaiep "debian" "$1"
	fi
}

mvaiepub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		mvaiep "$PROOT_UBUNTUBOX" "$1"
	else
		mvaiep "ubuntubox" "$1"
	fi
}

mvaiepdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		mvaiep "$PROOT_DEBIANBOX" "$1"
	else
		mvaiep "debianbox" "$1"
	fi
}

cpaipt() {
	if [ -n "$PROOT_TERMUX" ]; then
		cpaip "$PROOT_TERMUX" "$1"
	else
		cpaip "termux" "$1"
	fi
}

cpaipu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cpaip "$PROOT_UBUNTU" "$1"
	else
		cpaip "ubuntu" "$1"
	fi
}

cpaipd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cpaip "$PROOT_DEBIAN" "$1"
	else
		cpaip "debian" "$1"
	fi
}

cpaipub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cpaip "$PROOT_UBUNTUBOX" "$1"
	else
		cpaip "ubuntubox" "$1"
	fi
}

cpaipdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cpaip "$PROOT_DEBIANBOX" "$1"
	else
		cpaip "debianbox" "$1"
	fi
}

cpaidpt() {
	if [ -n "$PROOT_TERMUX" ]; then
		cpaidp "$PROOT_TERMUX" "$1"
	else
		cpaidp "termux" "$1"
	fi
}

cpaidpu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cpaidp "$PROOT_UBUNTU" "$1"
	else
		cpaidp "ubuntu" "$1"
	fi
}

cpaidpd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cpaidp "$PROOT_DEBIAN" "$1"
	else
		cpaidp "debian" "$1"
	fi
}

cpaidpub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cpaidp "$PROOT_UBUNTUBOX" "$1"
	else
		cpaidp "ubuntubox" "$1"
	fi
}

cpaidpdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cpaidp "$PROOT_DEBIANBOX" "$1"
	else
		cpaidp "debianbox" "$1"
	fi
}

cpaispt() {
	if [ -n "$PROOT_TERMUX" ]; then
		cpaisp "$PROOT_TERMUX" "$1"
	else
		cpaisp "termux" "$1"
	fi
}

cpaispu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cpaisp "$PROOT_UBUNTU" "$1"
	else
		cpaisp "ubuntu" "$1"
	fi
}

cpaispd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cpaisp "$PROOT_DEBIAN" "$1"
	else
		cpaisp "debian" "$1"
	fi
}

cpaispub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cpaisp "$PROOT_UBUNTUBOX" "$1"
	else
		cpaisp "ubuntubox" "$1"
	fi
}

cpaispdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cpaisp "$PROOT_DEBIANBOX" "$1"
	else
		cpaisp "debianbox" "$1"
	fi
}

cpaiept() {
	if [ -n "$PROOT_TERMUX" ]; then
		cpaiep "$PROOT_TERMUX" "$1"
	else
		cpaiep "termux" "$1"
	fi
}

cpaiepu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cpaiep "$PROOT_UBUNTU" "$1"
	else
		cpaiep "ubuntu" "$1"
	fi
}

cpaiepd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cpaiep "$PROOT_DEBIAN" "$1"
	else
		cpaiep "debian" "$1"
	fi
}

cpaiepub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cpaiep "$PROOT_UBUNTUBOX" "$1"
	else
		cpaiep "ubuntubox" "$1"
	fi
}

cpaiepdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cpaiep "$PROOT_DEBIANBOX" "$1"
	else
		cpaiep "debianbox" "$1"
	fi
}

rmpt() {
	if [ -n "$PROOT_TERMUX" ]; then
		rmp "$PROOT_TERMUX" "$1"
	else
		rmp "termux" "$1"
	fi
}

rmpu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		rmp "$PROOT_UBUNTU" "$1"
	else
		rmp "ubuntu" "$1"
	fi
}

rmpd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		rmp "$PROOT_DEBIAN" "$1"
	else
		rmp "debian" "$1"
	fi
}

rmpub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		rmp "$PROOT_UBUNTUBOX" "$1"
	else
		rmp "ubuntubox" "$1"
	fi
}

rmpdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		rmp "$PROOT_DEBIANBOX" "$1"
	else
		rmp "debianbox" "$1"
	fi
}

rmrpt() {
	if [ -n "$PROOT_TERMUX" ]; then
		rmrp "$PROOT_TERMUX" "$1"
	else
		rmrp "termux" "$1"
	fi
}

rmrpu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		rmrp "$PROOT_UBUNTU" "$1"
	else
		rmrp "ubuntu" "$1"
	fi
}

rmrpd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		rmrp "$PROOT_DEBIAN" "$1"
	else
		rmrp "debian" "$1"
	fi
}

rmrpub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		rmrp "$PROOT_UBUNTUBOX" "$1"
	else
		rmrp "ubuntubox" "$1"
	fi
}

rmrpdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		rmrp "$PROOT_DEBIANBOX" "$1"
	else
		rmrp "debianbox" "$1"
	fi
}

rmrfpt() {
	if [ -n "$PROOT_TERMUX" ]; then
		rmrfp "$PROOT_TERMUX" "$1"
	else
		rmrfp "termux" "$1"
	fi
}

rmrfpu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		rmrfp "$PROOT_UBUNTU" "$1"
	else
		rmrfp "ubuntu" "$1"
	fi
}

rmrfpd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		rmrfp "$PROOT_DEBIAN" "$1"
	else
		rmrfp "debian" "$1"
	fi
}

rmrfpub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		rmrfp "$PROOT_UBUNTUBOX" "$1"
	else
		rmrfp "ubuntubox" "$1"
	fi
}

rmrfpdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		rmrfp "$PROOT_DEBIANBOX" "$1"
	else
		rmrfp "debianbox" "$1"
	fi
}

mkdirpt() {
	if [ -n "$PROOT_TERMUX" ]; then
		mkdirp "$PROOT_TERMUX" "$1"
	else
		mkdirp "termux" "$1"
	fi
}

mkdirpu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		mkdirp "$PROOT_UBUNTU" "$1"
	else
		mkdirp "ubuntu" "$1"
	fi
}

mkdirpd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		mkdirp "$PROOT_DEBIAN" "$1"
	else
		mkdirp "debian" "$1"
	fi
}

mkdirpub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		mkdirp "$PROOT_UBUNTUBOX" "$1"
	else
		mkdirp "ubuntubox" "$1"
	fi
}

mkdirpdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		mkdirp "$PROOT_DEBIANBOX" "$1"
	else
		mkdirp "debianbox" "$1"
	fi
}

mkdirppt() {
	if [ -n "$PROOT_TERMUX" ]; then
		mkdirpp "$PROOT_TERMUX" "$1"
	else
		mkdirpp "termux" "$1"
	fi
}

mkdirppu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		mkdirpp "$PROOT_UBUNTU" "$1"
	else
		mkdirpp "ubuntu" "$1"
	fi
}

mkdirppd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		mkdirpp "$PROOT_DEBIAN" "$1"
	else
		mkdirpp "debian" "$1"
	fi
}

mkdirppub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		mkdirpp "$PROOT_UBUNTUBOX" "$1"
	else
		mkdirpp "ubuntubox" "$1"
	fi
}

mkdirppdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		mkdirpp "$PROOT_DEBIANBOX" "$1"
	else
		mkdirpp "debianbox" "$1"
	fi
}

mvypt() {
	if [ -n "$PROOT_TERMUX" ]; then
		mvycp "$PROOT_TERMUX" "$1"
	else
		mvycp "termux" "$1"
	fi
}

mvypu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		mvycp "$PROOT_UBUNTU" "$1"
	else
		mvycp "ubuntu" "$1"
	fi
}

mvypd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		mvycp "$PROOT_DEBIAN" "$1"
	else
		mvycp "debian" "$1"
	fi
}

mvypub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		mvycp "$PROOT_UBUNTUBOX" "$1"
	else
		mvycp "ubuntubox" "$1"
	fi
}

mvypdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		mvycp "$PROOT_DEBIANBOX" "$1"
	else
		mvycp "debianbox" "$1"
	fi
}

mvydpt() {
	if [ -n "$PROOT_TERMUX" ]; then
		mvyhp "$PROOT_TERMUX" "$1"
	else
		mvyhp "termux" "$1"
	fi
}

mvydpu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		mvyhp "$PROOT_UBUNTU" "$1"
	else
		mvyhp "ubuntu" "$1"
	fi
}

mvydpd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		mvyhp "$PROOT_DEBIAN" "$1"
	else
		mvyhp "debian" "$1"
	fi
}

mvydpub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		mvyhp "$PROOT_UBUNTUBOX" "$1"
	else
		mvyhp "ubuntubox" "$1"
	fi
}

mvydpdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		mvyhp "$PROOT_DEBIANBOX" "$1"
	else
		mvyhp "debianbox" "$1"
	fi
}

mvyspt() {
	if [ -n "$PROOT_TERMUX" ]; then
		mvybp "$PROOT_TERMUX" "$1"
	else
		mvybp "termux" "$1"
	fi
}

mvyspu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		mvybp "$PROOT_UBUNTU" "$1"
	else
		mvybp "ubuntu" "$1"
	fi
}

mvyspd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		mvybp "$PROOT_DEBIAN" "$1"
	else
		mvybp "debian" "$1"
	fi
}

mvyspub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		mvybp "$PROOT_UBUNTUBOX" "$1"
	else
		mvybp "ubuntubox" "$1"
	fi
}

mvyspdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		mvybp "$PROOT_DEBIANBOX" "$1"
	else
		mvybp "debianbox" "$1"
	fi
}

mvupt() {
	if [ -n "$PROOT_TERMUX" ]; then
		mvucp "$PROOT_TERMUX" "$1"
	else
		mvucp "termux" "$1"
	fi
}

mvupu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		mvucp "$PROOT_UBUNTU" "$1"
	else
		mvucp "ubuntu" "$1"
	fi
}

mvupd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		mvucp "$PROOT_DEBIAN" "$1"
	else
		mvucp "debian" "$1"
	fi
}

mvupub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		mvucp "$PROOT_UBUNTUBOX" "$1"
	else
		mvucp "ubuntubox" "$1"
	fi
}

mvupdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		mvucp "$PROOT_DEBIANBOX" "$1"
	else
		mvucp "debianbox" "$1"
	fi
}

mvudpt() {
	if [ -n "$PROOT_TERMUX" ]; then
		mvuhp "$PROOT_TERMUX" "$1"
	else
		mvuhp "termux" "$1"
	fi
}

mvudpu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		mvuhp "$PROOT_UBUNTU" "$1"
	else
		mvuhp "ubuntu" "$1"
	fi
}

mvudpd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		mvuhp "$PROOT_DEBIAN" "$1"
	else
		mvuhp "debian" "$1"
	fi
}

mvudpub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		mvuhp "$PROOT_UBUNTUBOX" "$1"
	else
		mvuhp "ubuntubox" "$1"
	fi
}

mvudpdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		mvuhp "$PROOT_DEBIANBOX" "$1"
	else
		mvuhp "debianbox" "$1"
	fi
}

mvuspt() {
	if [ -n "$PROOT_TERMUX" ]; then
		mvubp "$PROOT_TERMUX" "$1"
	else
		mvubp "termux" "$1"
	fi
}

mvuspu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		mvubp "$PROOT_UBUNTU" "$1"
	else
		mvubp "ubuntu" "$1"
	fi
}

mvuspd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		mvubp "$PROOT_DEBIAN" "$1"
	else
		mvubp "debian" "$1"
	fi
}

mvuspub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		mvubp "$PROOT_UBUNTUBOX" "$1"
	else
		mvubp "ubuntubox" "$1"
	fi
}

mvuspdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		mvubp "$PROOT_DEBIANBOX" "$1"
	else
		mvubp "debianbox" "$1"
	fi
}

cpypt() {
	if [ -n "$PROOT_TERMUX" ]; then
		cpycp "$PROOT_TERMUX" "$1"
	else
		cpycp "termux" "$1"
	fi
}

cpypu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cpycp "$PROOT_UBUNTU" "$1"
	else
		cpycp "ubuntu" "$1"
	fi
}

cpypd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cpycp "$PROOT_DEBIAN" "$1"
	else
		cpycp "debian" "$1"
	fi
}

cpypub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cpycp "$PROOT_UBUNTUBOX" "$1"
	else
		cpycp "ubuntubox" "$1"
	fi
}

cpypdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cpycp "$PROOT_DEBIANBOX" "$1"
	else
		cpycp "debianbox" "$1"
	fi
}

cpydpt() {
	if [ -n "$PROOT_TERMUX" ]; then
		cpyhp "$PROOT_TERMUX" "$1"
	else
		cpyhp "termux" "$1"
	fi
}

cpydpu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cpyhp "$PROOT_UBUNTU" "$1"
	else
		cpyhp "ubuntu" "$1"
	fi
}

cpydpd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cpyhp "$PROOT_DEBIAN" "$1"
	else
		cpyhp "debian" "$1"
	fi
}

cpydpub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cpyhp "$PROOT_UBUNTUBOX" "$1"
	else
		cpyhp "ubuntubox" "$1"
	fi
}

cpydpdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cpyhp "$PROOT_DEBIANBOX" "$1"
	else
		cpyhp "debianbox" "$1"
	fi
}

cpyspt() {
	if [ -n "$PROOT_TERMUX" ]; then
		cpybp "$PROOT_TERMUX" "$1"
	else
		cpybp "termux" "$1"
	fi
}

cpyspu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cpybp "$PROOT_UBUNTU" "$1"
	else
		cpybp "ubuntu" "$1"
	fi
}

cpyspd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cpybp "$PROOT_DEBIAN" "$1"
	else
		cpybp "debian" "$1"
	fi
}

cpyspub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cpybp "$PROOT_UBUNTUBOX" "$1"
	else
		cpybp "ubuntubox" "$1"
	fi
}

cpyspdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cpybp "$PROOT_DEBIANBOX" "$1"
	else
		cpybp "debianbox" "$1"
	fi
}

cpupt() {
	if [ -n "$PROOT_TERMUX" ]; then
		cpucp "$PROOT_TERMUX" "$1"
	else
		cpucp "termux" "$1"
	fi
}

cpupu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cpucp "$PROOT_UBUNTU" "$1"
	else
		cpucp "ubuntu" "$1"
	fi
}

cpupd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cpucp "$PROOT_DEBIAN" "$1"
	else
		cpucp "debian" "$1"
	fi
}

cpupub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cpucp "$PROOT_UBUNTUBOX" "$1"
	else
		cpucp "ubuntubox" "$1"
	fi
}

cpupdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cpucp "$PROOT_DEBIANBOX" "$1"
	else
		cpucp "debianbox" "$1"
	fi
}

cpudpt() {
	if [ -n "$PROOT_TERMUX" ]; then
		cpuhp "$PROOT_TERMUX" "$1"
	else
		cpuhp "termux" "$1"
	fi
}

cpudpu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cpuhp "$PROOT_UBUNTU" "$1"
	else
		cpuhp "ubuntu" "$1"
	fi
}

cpudpd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cpuhp "$PROOT_DEBIAN" "$1"
	else
		cpuhp "debian" "$1"
	fi
}

cpudpub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cpuhp "$PROOT_UBUNTUBOX" "$1"
	else
		cpuhp "ubuntubox" "$1"
	fi
}

cpudpdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cpuhp "$PROOT_DEBIANBOX" "$1"
	else
		cpuhp "debianbox" "$1"
	fi
}

cpuspt() {
	if [ -n "$PROOT_TERMUX" ]; then
		cpubp "$PROOT_TERMUX" "$1"
	else
		cpubp "termux" "$1"
	fi
}

cpuspu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cpubp "$PROOT_UBUNTU" "$1"
	else
		cpubp "ubuntu" "$1"
	fi
}

cpuspd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cpubp "$PROOT_DEBIAN" "$1"
	else
		cpubp "debian" "$1"
	fi
}

cpuspub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cpubp "$PROOT_UBUNTUBOX" "$1"
	else
		cpubp "ubuntubox" "$1"
	fi
}

cpuspdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cpubp "$PROOT_DEBIANBOX" "$1"
	else
		cpubp "debianbox" "$1"
	fi
}

cprypt() {
	if [ -n "$PROOT_TERMUX" ]; then
		cprycp "$PROOT_TERMUX" "$1"
	else
		cprycp "termux" "$1"
	fi
}

cprypu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cprycp "$PROOT_UBUNTU" "$1"
	else
		cprycp "ubuntu" "$1"
	fi
}

cprypd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cprycp "$PROOT_DEBIAN" "$1"
	else
		cprycp "debian" "$1"
	fi
}

cprypub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cprycp "$PROOT_UBUNTUBOX" "$1"
	else
		cprycp "ubuntubox" "$1"
	fi
}

cprypdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cprycp "$PROOT_DEBIANBOX" "$1"
	else
		cprycp "debianbox" "$1"
	fi
}

cprydpt() {
	if [ -n "$PROOT_TERMUX" ]; then
		cpryhp "$PROOT_TERMUX" "$1"
	else
		cpryhp "termux" "$1"
	fi
}

cprydpu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cpryhp "$PROOT_UBUNTU" "$1"
	else
		cpryhp "ubuntu" "$1"
	fi
}

cprydpd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cpryhp "$PROOT_DEBIAN" "$1"
	else
		cpryhp "debian" "$1"
	fi
}

cprydpub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cpryhp "$PROOT_UBUNTUBOX" "$1"
	else
		cpryhp "ubuntubox" "$1"
	fi
}

cprydpdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cpryhp "$PROOT_DEBIANBOX" "$1"
	else
		cpryhp "debianbox" "$1"
	fi
}

cpryspt() {
	if [ -n "$PROOT_TERMUX" ]; then
		cprybp "$PROOT_TERMUX" "$1"
	else
		cprybp "termux" "$1"
	fi
}

cpryspu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cprybp "$PROOT_UBUNTU" "$1"
	else
		cprybp "ubuntu" "$1"
	fi
}

cpryspd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cprybp "$PROOT_DEBIAN" "$1"
	else
		cprybp "debian" "$1"
	fi
}

cpryspub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cprybp "$PROOT_UBUNTUBOX" "$1"
	else
		cprybp "ubuntubox" "$1"
	fi
}

cpryspdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cprybp "$PROOT_DEBIANBOX" "$1"
	else
		cprybp "debianbox" "$1"
	fi
}

cprupt() {
	if [ -n "$PROOT_TERMUX" ]; then
		cprucp "$PROOT_TERMUX" "$1"
	else
		cprucp "termux" "$1"
	fi
}

cprupu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cprucp "$PROOT_UBUNTU" "$1"
	else
		cprucp "ubuntu" "$1"
	fi
}

cprupd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cprucp "$PROOT_DEBIAN" "$1"
	else
		cprucp "debian" "$1"
	fi
}

cprupub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cprucp "$PROOT_UBUNTUBOX" "$1"
	else
		cprucp "ubuntubox" "$1"
	fi
}

cprupdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cprucp "$PROOT_DEBIANBOX" "$1"
	else
		cprucp "debianbox" "$1"
	fi
}

cprudpt() {
	if [ -n "$PROOT_TERMUX" ]; then
		cpruhp "$PROOT_TERMUX" "$1"
	else
		cpruhp "termux" "$1"
	fi
}

cprudpu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cpruhp "$PROOT_UBUNTU" "$1"
	else
		cpruhp "ubuntu" "$1"
	fi
}

cprudpd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cpruhp "$PROOT_DEBIAN" "$1"
	else
		cpruhp "debian" "$1"
	fi
}

cprudpub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cpruhp "$PROOT_UBUNTUBOX" "$1"
	else
		cpruhp "ubuntubox" "$1"
	fi
}

cprudpdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cpruhp "$PROOT_DEBIANBOX" "$1"
	else
		cpruhp "debianbox" "$1"
	fi
}

cpruspt() {
	if [ -n "$PROOT_TERMUX" ]; then
		cprubp "$PROOT_TERMUX" "$1"
	else
		cprubp "termux" "$1"
	fi
}

cpruspu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cprubp "$PROOT_UBUNTU" "$1"
	else
		cprubp "ubuntu" "$1"
	fi
}

cpruspd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cprubp "$PROOT_DEBIAN" "$1"
	else
		cprubp "debian" "$1"
	fi
}

cpruspub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cprubp "$PROOT_UBUNTUBOX" "$1"
	else
		cprubp "ubuntubox" "$1"
	fi
}

cpruspdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cprubp "$PROOT_DEBIANBOX" "$1"
	else
		cprubp "debianbox" "$1"
	fi
}

mvyapt() {
	if [ -n "$PROOT_TERMUX" ]; then
		mvyacp "$PROOT_TERMUX" "$1"
	else
		mvyacp "termux" "$1"
	fi
}

mvyapu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		mvyacp "$PROOT_UBUNTU" "$1"
	else
		mvyacp "ubuntu" "$1"
	fi
}

mvyapd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		mvyacp "$PROOT_DEBIAN" "$1"
	else
		mvyacp "debian" "$1"
	fi
}

mvyapub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		mvyacp "$PROOT_UBUNTUBOX" "$1"
	else
		mvyacp "ubuntubox" "$1"
	fi
}

mvyapdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		mvyacp "$PROOT_DEBIANBOX" "$1"
	else
		mvyacp "debianbox" "$1"
	fi
}

mvyadpt() {
	if [ -n "$PROOT_TERMUX" ]; then
		mvyahp "$PROOT_TERMUX" "$1"
	else
		mvyahp "termux" "$1"
	fi
}

mvyadpu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		mvyahp "$PROOT_UBUNTU" "$1"
	else
		mvyahp "ubuntu" "$1"
	fi
}

mvyadpd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		mvyahp "$PROOT_DEBIAN" "$1"
	else
		mvyahp "debian" "$1"
	fi
}

mvyadpub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		mvyahp "$PROOT_UBUNTUBOX" "$1"
	else
		mvyahp "ubuntubox" "$1"
	fi
}

mvyadpdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		mvyahp "$PROOT_DEBIANBOX" "$1"
	else
		mvyahp "debianbox" "$1"
	fi
}

mvyaspt() {
	if [ -n "$PROOT_TERMUX" ]; then
		mvyabp "$PROOT_TERMUX" "$1"
	else
		mvyabp "termux" "$1"
	fi
}

mvyaspu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		mvyabp "$PROOT_UBUNTU" "$1"
	else
		mvyabp "ubuntu" "$1"
	fi
}

mvyaspd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		mvyabp "$PROOT_DEBIAN" "$1"
	else
		mvyabp "debian" "$1"
	fi
}

mvyaspub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		mvyabp "$PROOT_UBUNTUBOX" "$1"
	else
		mvyabp "ubuntubox" "$1"
	fi
}

mvyaspdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		mvyabp "$PROOT_DEBIANBOX" "$1"
	else
		mvyabp "debianbox" "$1"
	fi
}

cpyapt() {
	if [ -n "$PROOT_TERMUX" ]; then
		cpyacp "$PROOT_TERMUX" "$1"
	else
		cpyacp "termux" "$1"
	fi
}

cpyapu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cpyacp "$PROOT_UBUNTU" "$1"
	else
		cpyacp "ubuntu" "$1"
	fi
}

cpyapd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cpyacp "$PROOT_DEBIAN" "$1"
	else
		cpyacp "debian" "$1"
	fi
}

cpyapub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cpyacp "$PROOT_UBUNTUBOX" "$1"
	else
		cpyacp "ubuntubox" "$1"
	fi
}

cpyapdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cpyacp "$PROOT_DEBIANBOX" "$1"
	else
		cpyacp "debianbox" "$1"
	fi
}

cpyadpt() {
	if [ -n "$PROOT_TERMUX" ]; then
		cpyahp "$PROOT_TERMUX" "$1"
	else
		cpyahp "termux" "$1"
	fi
}

cpyadpu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cpyahp "$PROOT_UBUNTU" "$1"
	else
		cpyahp "ubuntu" "$1"
	fi
}

cpyadpd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cpyahp "$PROOT_DEBIAN" "$1"
	else
		cpyahp "debian" "$1"
	fi
}

cpyadpub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cpyahp "$PROOT_UBUNTUBOX" "$1"
	else
		cpyahp "ubuntubox" "$1"
	fi
}

cpyadpdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cpyahp "$PROOT_DEBIANBOX" "$1"
	else
		cpyahp "debianbox" "$1"
	fi
}

cpyaspt() {
	if [ -n "$PROOT_TERMUX" ]; then
		cpyabp "$PROOT_TERMUX" "$1"
	else
		cpyabp "termux" "$1"
	fi
}

cpyaspu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cpyabp "$PROOT_UBUNTU" "$1"
	else
		cpyabp "ubuntu" "$1"
	fi
}

cpyaspd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cpyabp "$PROOT_DEBIAN" "$1"
	else
		cpyabp "debian" "$1"
	fi
}

cpyaspub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cpyabp "$PROOT_UBUNTUBOX" "$1"
	else
		cpyabp "ubuntubox" "$1"
	fi
}

cpyaspdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cpyabp "$PROOT_DEBIANBOX" "$1"
	else
		cpyabp "debianbox" "$1"
	fi
}

mvaypt() {
	if [ -n "$PROOT_TERMUX" ]; then
		mvaycp "$PROOT_TERMUX" "$1"
	else
		mvaycp "termux" "$1"
	fi
}

mvaypu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		mvaycp "$PROOT_UBUNTU" "$1"
	else
		mvaycp "ubuntu" "$1"
	fi
}

mvaypd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		mvaycp "$PROOT_DEBIAN" "$1"
	else
		mvaycp "debian" "$1"
	fi
}

mvaypub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		mvaycp "$PROOT_UBUNTUBOX" "$1"
	else
		mvaycp "ubuntubox" "$1"
	fi
}

mvaypdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		mvaycp "$PROOT_DEBIANBOX" "$1"
	else
		mvaycp "debianbox" "$1"
	fi
}

mvaydpt() {
	if [ -n "$PROOT_TERMUX" ]; then
		mvayhp "$PROOT_TERMUX" "$1"
	else
		mvayhp "termux" "$1"
	fi
}

mvaydpu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		mvayhp "$PROOT_UBUNTU" "$1"
	else
		mvayhp "ubuntu" "$1"
	fi
}

mvaydpd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		mvayhp "$PROOT_DEBIAN" "$1"
	else
		mvayhp "debian" "$1"
	fi
}

mvaydpub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		mvayhp "$PROOT_UBUNTUBOX" "$1"
	else
		mvayhp "ubuntubox" "$1"
	fi
}

mvaydpdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		mvayhp "$PROOT_DEBIANBOX" "$1"
	else
		mvayhp "debianbox" "$1"
	fi
}

mvayspt() {
	if [ -n "$PROOT_TERMUX" ]; then
		mvaybp "$PROOT_TERMUX" "$1"
	else
		mvaybp "termux" "$1"
	fi
}

mvayspu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		mvaybp "$PROOT_UBUNTU" "$1"
	else
		mvaybp "ubuntu" "$1"
	fi
}

mvayspd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		mvaybp "$PROOT_DEBIAN" "$1"
	else
		mvaybp "debian" "$1"
	fi
}

mvayspub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		mvaybp "$PROOT_UBUNTUBOX" "$1"
	else
		mvaybp "ubuntubox" "$1"
	fi
}

mvayspdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		mvaybp "$PROOT_DEBIANBOX" "$1"
	else
		mvaybp "debianbox" "$1"
	fi
}

cpaypt() {
	if [ -n "$PROOT_TERMUX" ]; then
		cpaycp "$PROOT_TERMUX" "$1"
	else
		cpaycp "termux" "$1"
	fi
}

cpaypu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cpaycp "$PROOT_UBUNTU" "$1"
	else
		cpaycp "ubuntu" "$1"
	fi
}

cpaypd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cpaycp "$PROOT_DEBIAN" "$1"
	else
		cpaycp "debian" "$1"
	fi
}

cpaypub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cpaycp "$PROOT_UBUNTUBOX" "$1"
	else
		cpaycp "ubuntubox" "$1"
	fi
}

cpaypdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cpaycp "$PROOT_DEBIANBOX" "$1"
	else
		cpaycp "debianbox" "$1"
	fi
}

cpaydpt() {
	if [ -n "$PROOT_TERMUX" ]; then
		cpayhp "$PROOT_TERMUX" "$1"
	else
		cpayhp "termux" "$1"
	fi
}

cpaydpu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cpayhp "$PROOT_UBUNTU" "$1"
	else
		cpayhp "ubuntu" "$1"
	fi
}

cpaydpd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cpayhp "$PROOT_DEBIAN" "$1"
	else
		cpayhp "debian" "$1"
	fi
}

cpaydpub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cpayhp "$PROOT_UBUNTUBOX" "$1"
	else
		cpayhp "ubuntubox" "$1"
	fi
}

cpaydpdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cpayhp "$PROOT_DEBIANBOX" "$1"
	else
		cpayhp "debianbox" "$1"
	fi
}

cpayspt() {
	if [ -n "$PROOT_TERMUX" ]; then
		cpaybp "$PROOT_TERMUX" "$1"
	else
		cpaybp "termux" "$1"
	fi
}

cpayspu() {
	if [ -n "$PROOT_UBUNTU" ]; then
		cpaybp "$PROOT_UBUNTU" "$1"
	else
		cpaybp "ubuntu" "$1"
	fi
}

cpayspd() {
	if [ -n "$PROOT_DEBIAN" ]; then
		cpaybp "$PROOT_DEBIAN" "$1"
	else
		cpaybp "debian" "$1"
	fi
}

cpayspub() {
	if [ -n "$PROOT_UBUNTUBOX" ]; then
		cpaybp "$PROOT_UBUNTUBOX" "$1"
	else
		cpaybp "ubuntubox" "$1"
	fi
}

cpayspdb() {
	if [ -n "$PROOT_DEBIANBOX" ]; then
		cpaybp "$PROOT_DEBIANBOX" "$1"
	else
		cpaybp "debianbox" "$1"
	fi
}

mvagcp() {
	mvaic "$1"
	gacp "$2"
}

cpagcp() {
	cpaic "$1"
	gacp "$2"
}

mvigcp() {
	mvic "$1"
	gacp "$2"
}

cpigcp() {
	cpric "$1"
	gacp "$2"
}

mviagcp() {
	mviac
	gacp "$1"
}

cpiagcp() {
	cpiac "*"
	gacp "$1"
}

mvagcdp() {
	mvaic "$1"
	gacdp "$2"
}

cpagcdp() {
	cpaic "$1"
	gacdp "$2"
}

mvigcdp() {
	mvic "$1"
	gacdp "$2"
}

cpigcdp() {
	cpric "$1"
	gacdp "$2"
}

mviagcdp() {
	mviac
	gacdp "$1"
}

cpiagcdp() {
	cpiac "*"
	gacdp "$1"
}
mvadgcp() {
	mvadic "$1"
	gacp "$2"
}

cpadgcp() {
	cpadic "$1"
	gacp "$2"
}

mvidgcp() {
	mvidc "$1"
	gacp "$2"
}

cpidgcp() {
	cpridc "$1"
	gacp "$2"
}

mviadgcp() {
	mviadc
	gacp "$1"
}

cpiadgcp() {
	cpiadc "*"
	gacp "$1"
}

mvadgcdp() {
	mvadic "$1"
	gacdp "$2"
}

cpadgcdp() {
	cpadic "$1"
	gacdp "$2"
}

mvidgcdp() {
	mvidc "$1"
	gacdp "$2"
}

cpidgcdp() {
	cpridc "$1"
	gacdp "$2"
}

mviadgcdp() {
	mviadc
	gacdp "$1"
}

cpiadgcdp() {
	cpiadc "*"
	gacdp "$1"
}
mvasgcp() {
	mvasic "$1"
	gacp "$2"
}

cpasgcp() {
	cpasic "$1"
	gacp "$2"
}

mvisgcp() {
	mvisc "$1"
	gacp "$2"
}

cpisgcp() {
	cprisc "$1"
	gacp "$2"
}

mviasgcp() {
	mviasc
	gacp "$1"
}

cpiasgcp() {
	cpiasc "*"
	gacp "$1"
}

mvasgcdp() {
	mvasic "$1"
	gacdp "$2"
}

cpasgcdp() {
	cpasic "$1"
	gacdp "$2"
}

mvisgcdp() {
	mvisc "$1"
	gacdp "$2"
}

cpisgcdp() {
	cprisc "$1"
	gacdp "$2"
}

mviasgcdp() {
	mviasc
	gacdp "$1"
}

cpiasgcdp() {
	cpiasc "*"
	gacdp "$1"
}
mvaegcp() {
	mvaeic "$1"
	gacp "$2"
}

cpaegcp() {
	cpaeic "$1"
	gacp "$2"
}

mviegcp() {
	mviec "$1"
	gacp "$2"
}

cpiegcp() {
	cpriec "$1"
	gacp "$2"
}

mviaegcp() {
	mviaec
	gacp "$1"
}

cpiaegcp() {
	cpiaec "*"
	gacp "$1"
}

mvaegcdp() {
	mvaeic "$1"
	gacdp "$2"
}

cpaegcdp() {
	cpaeic "$1"
	gacdp "$2"
}

mviegcdp() {
	mviec "$1"
	gacdp "$2"
}

cpiegcdp() {
	cpriec "$1"
	gacdp "$2"
}

mviaegcdp() {
	mviaec
	gacdp "$1"
}

cpiaegcdp() {
	cpiaec "*"
	gacdp "$1"
}
scnnn() {
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --no-audio "$@"
}

scnna() {
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen "$@"
}

scnan() {
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --no-audio "$@"
}

scnaa() {
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen "$@"
}

scdnn() {
	export DISPLAY="$1"
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --no-audio "$@"
}

scdna() {
	export DISPLAY="$1"
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen "$@"
}

scdan() {
	export DISPLAY="$1"
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --no-audio "$@"
}

scdaa() {
	export DISPLAY="$1"
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen "$@"
}

scznn() {
	export DISPLAY=':0'
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --no-audio "$@"
}

sczna() {
	export DISPLAY=':0'
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen "$@"
}

sczan() {
	export DISPLAY=':0'
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --no-audio "$@"
}

sczaa() {
	export DISPLAY=':0'
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen "$@"
}

scfnn() {
	export DISPLAY=':1'
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --no-audio "$@"
}

scfna() {
	export DISPLAY=':1'
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen "$@"
}

scfan() {
	export DISPLAY=':1'
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --no-audio "$@"
}

scfaa() {
	export DISPLAY=':1'
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen "$@"
}

scnnnn() {
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --no-audio --new-display "$@"
}

scnnnsa() {
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --no-audio --new-display --start-app "$@"
}

scnnnlc() {
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --no-audio --new-display --start-app app.lawnchair "$@"
}

scnnan() {
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --new-display "$@"
}

scnnasa() {
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --new-display --start-app "$@"
}

scnnalc() {
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --new-display --start-app app.lawnchair "$@"
}

scnann() {
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --no-audio --new-display "$@"
}

scnansa() {
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --no-audio --new-display --start-app "$@"
}

scnanlc() {
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --no-audio --new-display --start-app app.lawnchair "$@"
}

scnaan() {
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --new-display "$@"
}

scnaasa() {
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --new-display --start-app "$@"
}

scnaalc() {
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --new-display --start-app app.lawnchair "$@"
}

scdnnn() {
	export DISPLAY="$1"
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --no-audio --new-display "$@"
}

scdnnsa() {
	export DISPLAY="$1"
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --no-audio --new-display --start-app "$@"
}

scdnnlc() {
	export DISPLAY="$1"
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --no-audio --new-display --start-app app.lawnchair "$@"
}

scdnan() {
	export DISPLAY="$1"
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --new-display "$@"
}

scdnasa() {
	export DISPLAY="$1"
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --new-display --start-app "$@"
}

scdnalc() {
	export DISPLAY="$1"
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --new-display --start-app app.lawnchair "$@"
}

scdann() {
	export DISPLAY="$1"
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --no-audio --new-display "$@"
}

scdansa() {
	export DISPLAY="$1"
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --no-audio --new-display --start-app "$@"
}

scdanlc() {
	export DISPLAY="$1"
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --no-audio --new-display --start-app app.lawnchair "$@"
}

scdaan() {
	export DISPLAY="$1"
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --new-display "$@"
}

scdaasa() {
	export DISPLAY="$1"
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --new-display --start-app "$@"
}

scdaalc() {
	export DISPLAY="$1"
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --new-display --start-app app.lawnchair "$@"
}

scznnn() {
	export DISPLAY=':0'
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --no-audio --new-display "$@"
}

scznnsa() {
	export DISPLAY=':0'
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --no-audio --new-display --start-app "$@"
}

scznnlc() {
	export DISPLAY=':0'
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --no-audio --new-display --start-app app.lawnchair "$@"
}

scznan() {
	export DISPLAY=':0'
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --new-display "$@"
}

scznasa() {
	export DISPLAY=':0'
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --new-display --start-app "$@"
}

scznalc() {
	export DISPLAY=':0'
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --new-display --start-app app.lawnchair "$@"
}

sczann() {
	export DISPLAY=':0'
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --no-audio --new-display "$@"
}

sczansa() {
	export DISPLAY=':0'
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --no-audio --new-display --start-app "$@"
}

sczanlc() {
	export DISPLAY=':0'
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --no-audio --new-display --start-app app.lawnchair "$@"
}

sczaan() {
	export DISPLAY=':0'
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --new-display "$@"
}

sczaasa() {
	export DISPLAY=':0'
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --new-display --start-app "$@"
}

sczaalc() {
	export DISPLAY=':0'
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --new-display --start-app app.lawnchair "$@"
}

scfnnn() {
	export DISPLAY=':1'
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --no-audio --new-display "$@"
}

scfnnsa() {
	export DISPLAY=':1'
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --no-audio --new-display --start-app "$@"
}

scfnnlc() {
	export DISPLAY=':1'
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --no-audio --new-display --start-app app.lawnchair "$@"
}

scfnan() {
	export DISPLAY=':1'
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --new-display "$@"
}

scfnasa() {
	export DISPLAY=':1'
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --new-display --start-app "$@"
}

scfnalc() {
	export DISPLAY=':1'
	unset GALLIUM_DRIVER
	scrcpy --video-codec=h265 --fullscreen --new-display --start-app app.lawnchair "$@"
}

scfann() {
	export DISPLAY=':1'
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --no-audio --new-display "$@"
}

scfansa() {
	export DISPLAY=':1'
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --no-audio --new-display --start-app "$@"
}

scfanlc() {
	export DISPLAY=':1'
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --no-audio --new-display --start-app app.lawnchair "$@"
}

scfaan() {
	export DISPLAY=':1'
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --new-display "$@"
}

scfaasa() {
	export DISPLAY=':1'
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --new-display --start-app "$@"
}

scfaalc() {
	export DISPLAY=':1'
	adb connect localhost:5555
	unset GALLIUM_DRIVER
	scrcpy -s localhost:5555 --video-codec=h265 --fullscreen --new-display --start-app app.lawnchair "$@"
}
