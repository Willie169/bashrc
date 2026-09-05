#!/usr/bin/env bash
# shellcheck disable=2103

[[ "$HOME" != '/data/data/com.termux/files/home' ]] && [[ "${PREFIX:-}" != '/data/data/com.termux/files/usr' ]] && return

mvic() {
  for f in "$@"; do
    mv -- "$DOW"/"$f" ./
  done
}

mvoc() {
  for f in "$@"; do
    mv -- ./"$f" "$DOW"/
  done
}

mvih() {
  for f in "$@"; do
    mv -- "$DOW"/"$f" ~/
  done
}

mvoh() {
  for f in "$@"; do
    mv -- ~/"$f" "$DOW"/
  done
}

mvib() {
  for f in "$@"; do
    mv -- "$DOW"/"$f" ../
  done
}

mvob() {
  for f in "$@"; do
    mv -- ../"$f" "$DOW"/
  done
}

mvir() {
  for f in "${@:2}"; do
    mv -- "$DOW"/"$f" "$1"/
  done
}

mvor() {
  for f in "${@:2}"; do
    mv -- "$1"/"$f" "$DOW"/
  done
}

mvip() {
  for f in "${@:2}"; do
    mv -- "$DOW"/"$f" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
  done
}

mvop() {
  for f in "${@:2}"; do
    mv -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$f" "$DOW"/
  done
}

mvidc() {
  for f in "$@"; do
    mv -- "$DOC"/"$f" ./
  done
}

mvodc() {
  for f in "$@"; do
    mv -- ./"$f" "$DOC"/
  done
}

mvidh() {
  for f in "$@"; do
    mv -- "$DOC"/"$f" ~/
  done
}

mvodh() {
  for f in "$@"; do
    mv -- ~/"$f" "$DOC"/
  done
}

mvidb() {
  for f in "$@"; do
    mv -- "$DOC"/"$f" ../
  done
}

mvodb() {
  for f in "$@"; do
    mv -- ../"$f" "$DOC"/
  done
}

mvidr() {
  for f in "${@:2}"; do
    mv -- "$DOC"/"$f" "$1"/
  done
}

mvodr() {
  for f in "${@:2}"; do
    mv -- "$1"/"$f" "$DOC"/
  done
}

mvidp() {
  for f in "${@:2}"; do
    mv -- "$DOC"/"$f" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
  done
}

mvodp() {
  for f in "${@:2}"; do
    mv -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$f" "$DOC"/
  done
}

mvisc() {
  for f in "$@"; do
    mv -- "$SCR"/"$f" ./
  done
}

mvosc() {
  for f in "$@"; do
    mv -- ./"$f" "$SCR"/
  done
}

mvish() {
  for f in "$@"; do
    mv -- "$SCR"/"$f" ~/
  done
}

mvosh() {
  for f in "$@"; do
    mv -- ~/"$f" "$SCR"/
  done
}

mvisb() {
  for f in "$@"; do
    mv -- "$SCR"/"$f" ../
  done
}

mvosb() {
  for f in "$@"; do
    mv -- ../"$f" "$SCR"/
  done
}

mvisr() {
  for f in "${@:2}"; do
    mv -- "$SCR"/"$f" "$1"/
  done
}

mvosr() {
  for f in "${@:2}"; do
    mv -- "$1"/"$f" "$SCR"/
  done
}

mvisp() {
  for f in "${@:2}"; do
    mv -- "$SCR"/"$f" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
  done
}

mvosp() {
  for f in "${@:2}"; do
    mv -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$f" "$SCR"/
  done
}

mviec() {
  for f in "$@"; do
    mv -- "$EMU"/"$f" ./
  done
}

mvoec() {
  for f in "$@"; do
    mv -- ./"$f" "$EMU"/
  done
}

mvieh() {
  for f in "$@"; do
    mv -- "$EMU"/"$f" ~/
  done
}

mvoeh() {
  for f in "$@"; do
    mv -- ~/"$f" "$EMU"/
  done
}

mvieb() {
  for f in "$@"; do
    mv -- "$EMU"/"$f" ../
  done
}

mvoeb() {
  for f in "$@"; do
    mv -- ../"$f" "$EMU"/
  done
}

mvier() {
  for f in "${@:2}"; do
    mv -- "$EMU"/"$f" "$1"/
  done
}

mvoer() {
  for f in "${@:2}"; do
    mv -- "$1"/"$f" "$EMU"/
  done
}

mviep() {
  for f in "${@:2}"; do
    mv -- "$EMU"/"$f" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
  done
}

mvoep() {
  for f in "${@:2}"; do
    mv -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$f" "$EMU"/
  done
}

cpic() {
  for f in "$@"; do
    cp -- "$DOW"/"$f" ./
  done
}

cpoc() {
  for f in "$@"; do
    cp -- ./"$f" "$DOW"/
  done
}

cpih() {
  for f in "$@"; do
    cp -- "$DOW"/"$f" ~/
  done
}

cpoh() {
  for f in "$@"; do
    cp -- ~/"$f" "$DOW"/
  done
}

cpib() {
  for f in "$@"; do
    cp -- "$DOW"/"$f" ../
  done
}

cpob() {
  for f in "$@"; do
    cp -- ../"$f" "$DOW"/
  done
}

cpir() {
  for f in "${@:2}"; do
    cp -- "$DOW"/"$f" "$1"/
  done
}

cpor() {
  for f in "${@:2}"; do
    cp -- "$1"/"$f" "$DOW"/
  done
}

cpip() {
  for f in "${@:2}"; do
    cp -- "$DOW"/"$f" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
  done
}

cpop() {
  for f in "${@:2}"; do
    cp -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$f" "$DOW"/
  done
}

cpidc() {
  for f in "$@"; do
    cp -- "$DOC"/"$f" ./
  done
}

cpodc() {
  for f in "$@"; do
    cp -- ./"$f" "$DOC"/
  done
}

cpidh() {
  for f in "$@"; do
    cp -- "$DOC"/"$f" ~/
  done
}

cpodh() {
  for f in "$@"; do
    cp -- ~/"$f" "$DOC"/
  done
}

cpidb() {
  for f in "$@"; do
    cp -- "$DOC"/"$f" ../
  done
}

cpodb() {
  for f in "$@"; do
    cp -- ../"$f" "$DOC"/
  done
}

cpidr() {
  for f in "${@:2}"; do
    cp -- "$DOC"/"$f" "$1"/
  done
}

cpodr() {
  for f in "${@:2}"; do
    cp -- "$1"/"$f" "$DOC"/
  done
}

cpidp() {
  for f in "${@:2}"; do
    cp -- "$DOC"/"$f" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
  done
}

cpodp() {
  for f in "${@:2}"; do
    cp -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$f" "$DOC"/
  done
}

cpisc() {
  for f in "$@"; do
    cp -- "$SCR"/"$f" ./
  done
}

cposc() {
  for f in "$@"; do
    cp -- ./"$f" "$SCR"/
  done
}

cpish() {
  for f in "$@"; do
    cp -- "$SCR"/"$f" ~/
  done
}

cposh() {
  for f in "$@"; do
    cp -- ~/"$f" "$SCR"/
  done
}

cpisb() {
  for f in "$@"; do
    cp -- "$SCR"/"$f" ../
  done
}

cposb() {
  for f in "$@"; do
    cp -- ../"$f" "$SCR"/
  done
}

cpisr() {
  for f in "${@:2}"; do
    cp -- "$SCR"/"$f" "$1"/
  done
}

cposr() {
  for f in "${@:2}"; do
    cp -- "$1"/"$f" "$SCR"/
  done
}

cpisp() {
  for f in "${@:2}"; do
    cp -- "$SCR"/"$f" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
  done
}

cposp() {
  for f in "${@:2}"; do
    cp -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$f" "$SCR"/
  done
}

cpiec() {
  for f in "$@"; do
    cp -- "$EMU"/"$f" ./
  done
}

cpoec() {
  for f in "$@"; do
    cp -- ./"$f" "$EMU"/
  done
}

cpieh() {
  for f in "$@"; do
    cp -- "$EMU"/"$f" ~/
  done
}

cpoeh() {
  for f in "$@"; do
    cp -- ~/"$f" "$EMU"/
  done
}

cpieb() {
  for f in "$@"; do
    cp -- "$EMU"/"$f" ../
  done
}

cpoeb() {
  for f in "$@"; do
    cp -- ../"$f" "$EMU"/
  done
}

cpier() {
  for f in "${@:2}"; do
    cp -- "$EMU"/"$f" "$1"/
  done
}

cpoer() {
  for f in "${@:2}"; do
    cp -- "$1"/"$f" "$EMU"/
  done
}

cpiep() {
  for f in "${@:2}"; do
    cp -- "$EMU"/"$f" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
  done
}

cpoep() {
  for f in "${@:2}"; do
    cp -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$f" "$EMU"/
  done
}

cpric() {
  for f in "$@"; do
    cp -r -- "$DOW"/"$f" ./
  done
}

cproc() {
  for f in "$@"; do
    cp -r -- ./"$f" "$DOW"/
  done
}

cprih() {
  for f in "$@"; do
    cp -r -- "$DOW"/"$f" ~/
  done
}

cproh() {
  for f in "$@"; do
    cp -r -- ~/"$f" "$DOW"/
  done
}

cprib() {
  for f in "$@"; do
    cp -r -- "$DOW"/"$f" ../
  done
}

cprob() {
  for f in "$@"; do
    cp -r -- ../"$f" "$DOW"/
  done
}

cprir() {
  for f in "${@:2}"; do
    cp -r -- "$DOW"/"$f" "$1"/
  done
}

cpror() {
  for f in "${@:2}"; do
    cp -r -- "$1"/"$f" "$DOW"/
  done
}

cprip() {
  for f in "${@:2}"; do
    cp -r -- "$DOW"/"$f" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
  done
}

cprop() {
  for f in "${@:2}"; do
    cp -r -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$f" "$DOW"/
  done
}

cpridc() {
  for f in "$@"; do
    cp -r -- "$DOC"/"$f" ./
  done
}

cprodc() {
  for f in "$@"; do
    cp -r -- ./"$f" "$DOC"/
  done
}

cpridh() {
  for f in "$@"; do
    cp -r -- "$DOC"/"$f" ~/
  done
}

cprodh() {
  for f in "$@"; do
    cp -r -- ~/"$f" "$DOC"/
  done
}

cpridb() {
  for f in "$@"; do
    cp -r -- "$DOC"/"$f" ../
  done
}

cprodb() {
  for f in "$@"; do
    cp -r -- ../"$f" "$DOC"/
  done
}

cpridr() {
  for f in "${@:2}"; do
    cp -r -- "$DOC"/"$f" "$1"/
  done
}

cprodr() {
  for f in "${@:2}"; do
    cp -r -- "$1"/"$f" "$DOC"/
  done
}

cpridp() {
  for f in "${@:2}"; do
    cp -r -- "$DOC"/"$f" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
  done
}

cprodp() {
  for f in "${@:2}"; do
    cp -r -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$f" "$DOC"/
  done
}

cprisc() {
  for f in "$@"; do
    cp -r -- "$SCR"/"$f" ./
  done
}

cprosc() {
  for f in "$@"; do
    cp -r -- ./"$f" "$SCR"/
  done
}

cprish() {
  for f in "$@"; do
    cp -r -- "$SCR"/"$f" ~/
  done
}

cprosh() {
  for f in "$@"; do
    cp -r -- ~/"$f" "$SCR"/
  done
}

cprisb() {
  for f in "$@"; do
    cp -r -- "$SCR"/"$f" ../
  done
}

cprosb() {
  for f in "$@"; do
    cp -r -- ../"$f" "$SCR"/
  done
}

cprisr() {
  for f in "${@:2}"; do
    cp -r -- "$SCR"/"$f" "$1"/
  done
}

cprosr() {
  for f in "${@:2}"; do
    cp -r -- "$1"/"$f" "$SCR"/
  done
}

cprisp() {
  for f in "${@:2}"; do
    cp -r -- "$SCR"/"$f" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
  done
}

cprosp() {
  for f in "${@:2}"; do
    cp -r -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$f" "$SCR"/
  done
}

cpriec() {
  for f in "$@"; do
    cp -r -- "$EMU"/"$f" ./
  done
}

cproec() {
  for f in "$@"; do
    cp -r -- ./"$f" "$EMU"/
  done
}

cprieh() {
  for f in "$@"; do
    cp -r -- "$EMU"/"$f" ~/
  done
}

cproeh() {
  for f in "$@"; do
    cp -r -- ~/"$f" "$EMU"/
  done
}

cprieb() {
  for f in "$@"; do
    cp -r -- "$EMU"/"$f" ../
  done
}

cproeb() {
  for f in "$@"; do
    cp -r -- ../"$f" "$EMU"/
  done
}

cprier() {
  for f in "${@:2}"; do
    cp -r -- "$EMU"/"$f" "$1"/
  done
}

cproer() {
  for f in "${@:2}"; do
    cp -r -- "$1"/"$f" "$EMU"/
  done
}

cpriep() {
  for f in "${@:2}"; do
    cp -r -- "$EMU"/"$f" "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/
  done
}

cproep() {
  for f in "${@:2}"; do
    cp -r -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root"/"$f" "$EMU"/
  done
}

mviac() {
  (
    cd . || exit
    cwd=$(pwd)
    cd "$DOW" || exit
    for f in *; do
      mv -- "$f" "$cwd"/
    done
  )
}

mviah() {
  (
    cd ~ || exit
    cwd=$(pwd)
    cd "$DOW" || exit
    for f in *; do
      mv -- "$f" "$cwd"/
    done
  )
}

mviab() {
  (
    cd .. || exit
    cwd=$(pwd)
    cd "$DOW" || exit
    for f in *; do
      mv -- "$f" "$cwd"/
    done
  )
}

mviar() {
  (
    cd "$1" || exit
    cwd=$(pwd)
    cd "$DOW" || exit
    for f in *; do
      mv -- "$f" "$cwd"/
    done
  )
}

mviap() {
  (
    cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
    cwd=$(pwd)
    cd "$DOW" || exit
    for f in *; do
      mv -- "$f" "$cwd"/
    done
  )
}

mviadc() {
  (
    cd . || exit
    cwd=$(pwd)
    cd "$DOC" || exit
    for f in *; do
      mv -- "$f" "$cwd"/
    done
  )
}

mviadh() {
  (
    cd ~ || exit
    cwd=$(pwd)
    cd "$DOC" || exit
    for f in *; do
      mv -- "$f" "$cwd"/
    done
  )
}

mviadb() {
  (
    cd .. || exit
    cwd=$(pwd)
    cd "$DOC" || exit
    for f in *; do
      mv -- "$f" "$cwd"/
    done
  )
}

mviadr() {
  (
    cd "$1" || exit
    cwd=$(pwd)
    cd "$DOC" || exit
    for f in *; do
      mv -- "$f" "$cwd"/
    done
  )
}

mviadp() {
  (
    cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
    cwd=$(pwd)
    cd "$DOC" || exit
    for f in *; do
      mv -- "$f" "$cwd"/
    done
  )
}

mviasc() {
  (
    cd . || exit
    cwd=$(pwd)
    cd "$SCR" || exit
    for f in *; do
      mv -- "$f" "$cwd"/
    done
  )
}

mviash() {
  (
    cd ~ || exit
    cwd=$(pwd)
    cd "$SCR" || exit
    for f in *; do
      mv -- "$f" "$cwd"/
    done
  )
}

mviasb() {
  (
    cd .. || exit
    cwd=$(pwd)
    cd "$SCR" || exit
    for f in *; do
      mv -- "$f" "$cwd"/
    done
  )
}

mviasr() {
  (
    cd "$1" || exit
    cwd=$(pwd)
    cd "$SCR" || exit
    for f in *; do
      mv -- "$f" "$cwd"/
    done
  )
}

mviasp() {
  (
    cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
    cwd=$(pwd)
    cd "$SCR" || exit
    for f in *; do
      mv -- "$f" "$cwd"/
    done
  )
}

mviaec() {
  (
    cd . || exit
    cwd=$(pwd)
    cd "$EMU" || exit
    for f in *; do
      mv -- "$f" "$cwd"/
    done
  )
}

mviaeh() {
  (
    cd ~ || exit
    cwd=$(pwd)
    cd "$EMU" || exit
    for f in *; do
      mv -- "$f" "$cwd"/
    done
  )
}

mviaeb() {
  (
    cd .. || exit
    cwd=$(pwd)
    cd "$EMU" || exit
    for f in *; do
      mv -- "$f" "$cwd"/
    done
  )
}

mviaer() {
  (
    cd "$1" || exit
    cwd=$(pwd)
    cd "$EMU" || exit
    for f in *; do
      mv -- "$f" "$cwd"/
    done
  )
}

mviaep() {
  (
    cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
    cwd=$(pwd)
    cd "$EMU" || exit
    for f in *; do
      mv -- "$f" "$cwd"/
    done
  )
}

cpiac() {
  (
    cd . || exit
    cwd=$(pwd)
    cd "$DOW" || exit
    for f in *; do
      cp -r -- "$f" "$cwd"/
    done
  )
}

cpiah() {
  (
    cd ~ || exit
    cwd=$(pwd)
    cd "$DOW" || exit
    for f in *; do
      cp -r -- "$f" "$cwd"/
    done
  )
}

cpiab() {
  (
    cd .. || exit
    cwd=$(pwd)
    cd "$DOW" || exit
    for f in *; do
      cp -r -- "$f" "$cwd"/
    done
  )
}

cpiar() {
  (
    cd "$1" || exit
    cwd=$(pwd)
    cd "$DOW" || exit
    for f in *; do
      cp -r -- "$f" "$cwd"/
    done
  )
}

cpiap() {
  (
    cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
    cwd=$(pwd)
    cd "$DOW" || exit
    for f in *; do
      cp -r -- "$f" "$cwd"/
    done
  )
}

cpiadc() {
  (
    cd . || exit
    cwd=$(pwd)
    cd "$DOC" || exit
    for f in *; do
      cp -r -- "$f" "$cwd"/
    done
  )
}

cpiadh() {
  (
    cd ~ || exit
    cwd=$(pwd)
    cd "$DOC" || exit
    for f in *; do
      cp -r -- "$f" "$cwd"/
    done
  )
}

cpiadb() {
  (
    cd .. || exit
    cwd=$(pwd)
    cd "$DOC" || exit
    for f in *; do
      cp -r -- "$f" "$cwd"/
    done
  )
}

cpiadr() {
  (
    cd "$1" || exit
    cwd=$(pwd)
    cd "$DOC" || exit
    for f in *; do
      cp -r -- "$f" "$cwd"/
    done
  )
}

cpiadp() {
  (
    cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
    cwd=$(pwd)
    cd "$DOC" || exit
    for f in *; do
      cp -r -- "$f" "$cwd"/
    done
  )
}

cpiasc() {
  (
    cd . || exit
    cwd=$(pwd)
    cd "$SCR" || exit
    for f in *; do
      cp -r -- "$f" "$cwd"/
    done
  )
}

cpiash() {
  (
    cd ~ || exit
    cwd=$(pwd)
    cd "$SCR" || exit
    for f in *; do
      cp -r -- "$f" "$cwd"/
    done
  )
}

cpiasb() {
  (
    cd .. || exit
    cwd=$(pwd)
    cd "$SCR" || exit
    for f in *; do
      cp -r -- "$f" "$cwd"/
    done
  )
}

cpiasr() {
  (
    cd "$1" || exit
    cwd=$(pwd)
    cd "$SCR" || exit
    for f in *; do
      cp -r -- "$f" "$cwd"/
    done
  )
}

cpiasp() {
  (
    cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
    cwd=$(pwd)
    cd "$SCR" || exit
    for f in *; do
      cp -r -- "$f" "$cwd"/
    done
  )
}

cpiaec() {
  (
    cd . || exit
    cwd=$(pwd)
    cd "$EMU" || exit
    for f in *; do
      cp -r -- "$f" "$cwd"/
    done
  )
}

cpiaeh() {
  (
    cd ~ || exit
    cwd=$(pwd)
    cd "$EMU" || exit
    for f in *; do
      cp -r -- "$f" "$cwd"/
    done
  )
}

cpiaeb() {
  (
    cd .. || exit
    cwd=$(pwd)
    cd "$EMU" || exit
    for f in *; do
      cp -r -- "$f" "$cwd"/
    done
  )
}

cpiaer() {
  (
    cd "$1" || exit
    cwd=$(pwd)
    cd "$EMU" || exit
    for f in *; do
      cp -r -- "$f" "$cwd"/
    done
  )
}

cpiaep() {
  (
    cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
    cwd=$(pwd)
    cd "$EMU" || exit
    for f in *; do
      cp -r -- "$f" "$cwd"/
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
    cwd=$(pwd)
    cd . || exit
    for f in *; do
      mv -- "$f" "$cwd"/
    done
  )
}

mvyacp() {
  (
    cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
    cwd=$(pwd)
    cd . || exit
    for f in *; do
      mv -- "$f" "$cwd"/
    done
  )
}

mvyahr() {
  (
    cd "$1" || exit
    cwd=$(pwd)
    cd ~ || exit
    for f in *; do
      mv -- "$f" "$cwd"/
    done
  )
}

mvyahp() {
  (
    cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
    cwd=$(pwd)
    cd ~ || exit
    for f in *; do
      mv -- "$f" "$cwd"/
    done
  )
}

mvyabr() {
  (
    cd "$1" || exit
    cwd=$(pwd)
    cd .. || exit
    for f in *; do
      mv -- "$f" "$cwd"/
    done
  )
}

mvyabp() {
  (
    cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
    cwd=$(pwd)
    cd .. || exit
    for f in *; do
      mv -- "$f" "$cwd"/
    done
  )
}

cpyacr() {
  (
    cd "$1" || exit
    cwd=$(pwd)
    cd . || exit
    for f in *; do
      cp -r -- "$f" "$cwd"/
    done
  )
}

cpyacp() {
  (
    cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
    cwd=$(pwd)
    cd . || exit
    for f in *; do
      cp -r -- "$f" "$cwd"/
    done
  )
}

cpyahr() {
  (
    cd "$1" || exit
    cwd=$(pwd)
    cd ~ || exit
    for f in *; do
      cp -r -- "$f" "$cwd"/
    done
  )
}

cpyahp() {
  (
    cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
    cwd=$(pwd)
    cd ~ || exit
    for f in *; do
      cp -r -- "$f" "$cwd"/
    done
  )
}

cpyabr() {
  (
    cd "$1" || exit
    cwd=$(pwd)
    cd .. || exit
    for f in *; do
      cp -r -- "$f" "$cwd"/
    done
  )
}

cpyabp() {
  (
    cd "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root" || exit
    cwd=$(pwd)
    cd .. || exit
    for f in *; do
      cp -r -- "$f" "$cwd"/
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
  mvip "${PROOT_TERMUX:-termux}" "$@"
}

mvipu() {
  mvip "${PROOT_UBUNTU:-ubuntu}" "$@"
}

mvipd() {
  mvip "${PROOT_DEBIAN:-debian}" "$@"
}

mvipub() {
  mvip "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

mvipdb() {
  mvip "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

mvidpt() {
  mvidp "${PROOT_TERMUX:-termux}" "$@"
}

mvidpu() {
  mvidp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

mvidpd() {
  mvidp "${PROOT_DEBIAN:-debian}" "$@"
}

mvidpub() {
  mvidp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

mvidpdb() {
  mvidp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

mvispt() {
  mvisp "${PROOT_TERMUX:-termux}" "$@"
}

mvispu() {
  mvisp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

mvispd() {
  mvisp "${PROOT_DEBIAN:-debian}" "$@"
}

mvispub() {
  mvisp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

mvispdb() {
  mvisp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

mviept() {
  mviep "${PROOT_TERMUX:-termux}" "$@"
}

mviepu() {
  mviep "${PROOT_UBUNTU:-ubuntu}" "$@"
}

mviepd() {
  mviep "${PROOT_DEBIAN:-debian}" "$@"
}

mviepub() {
  mviep "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

mviepdb() {
  mviep "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

mvopt() {
  mvop "${PROOT_TERMUX:-termux}" "$@"
}

mvopu() {
  mvop "${PROOT_UBUNTU:-ubuntu}" "$@"
}

mvopd() {
  mvop "${PROOT_DEBIAN:-debian}" "$@"
}

mvopub() {
  mvop "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

mvopdb() {
  mvop "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

mvodpt() {
  mvodp "${PROOT_TERMUX:-termux}" "$@"
}

mvodpu() {
  mvodp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

mvodpd() {
  mvodp "${PROOT_DEBIAN:-debian}" "$@"
}

mvodpub() {
  mvodp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

mvodpdb() {
  mvodp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

mvospt() {
  mvosp "${PROOT_TERMUX:-termux}" "$@"
}

mvospu() {
  mvosp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

mvospd() {
  mvosp "${PROOT_DEBIAN:-debian}" "$@"
}

mvospub() {
  mvosp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

mvospdb() {
  mvosp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

mvoept() {
  mvoep "${PROOT_TERMUX:-termux}" "$@"
}

mvoepu() {
  mvoep "${PROOT_UBUNTU:-ubuntu}" "$@"
}

mvoepd() {
  mvoep "${PROOT_DEBIAN:-debian}" "$@"
}

mvoepub() {
  mvoep "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

mvoepdb() {
  mvoep "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cpipt() {
  cpip "${PROOT_TERMUX:-termux}" "$@"
}

cpipu() {
  cpip "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cpipd() {
  cpip "${PROOT_DEBIAN:-debian}" "$@"
}

cpipub() {
  cpip "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cpipdb() {
  cpip "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cpidpt() {
  cpidp "${PROOT_TERMUX:-termux}" "$@"
}

cpidpu() {
  cpidp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cpidpd() {
  cpidp "${PROOT_DEBIAN:-debian}" "$@"
}

cpidpub() {
  cpidp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cpidpdb() {
  cpidp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cpispt() {
  cpisp "${PROOT_TERMUX:-termux}" "$@"
}

cpispu() {
  cpisp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cpispd() {
  cpisp "${PROOT_DEBIAN:-debian}" "$@"
}

cpispub() {
  cpisp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cpispdb() {
  cpisp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cpiept() {
  cpiep "${PROOT_TERMUX:-termux}" "$@"
}

cpiepu() {
  cpiep "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cpiepd() {
  cpiep "${PROOT_DEBIAN:-debian}" "$@"
}

cpiepub() {
  cpiep "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cpiepdb() {
  cpiep "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cpopt() {
  cpop "${PROOT_TERMUX:-termux}" "$@"
}

cpopu() {
  cpop "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cpopd() {
  cpop "${PROOT_DEBIAN:-debian}" "$@"
}

cpopub() {
  cpop "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cpopdb() {
  cpop "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cpodpt() {
  cpodp "${PROOT_TERMUX:-termux}" "$@"
}

cpodpu() {
  cpodp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cpodpd() {
  cpodp "${PROOT_DEBIAN:-debian}" "$@"
}

cpodpub() {
  cpodp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cpodpdb() {
  cpodp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cpospt() {
  cposp "${PROOT_TERMUX:-termux}" "$@"
}

cpospu() {
  cposp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cpospd() {
  cposp "${PROOT_DEBIAN:-debian}" "$@"
}

cpospub() {
  cposp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cpospdb() {
  cposp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cpoept() {
  cpoep "${PROOT_TERMUX:-termux}" "$@"
}

cpoepu() {
  cpoep "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cpoepd() {
  cpoep "${PROOT_DEBIAN:-debian}" "$@"
}

cpoepub() {
  cpoep "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cpoepdb() {
  cpoep "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cpript() {
  cprip "${PROOT_TERMUX:-termux}" "$@"
}

cpripu() {
  cprip "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cpripd() {
  cprip "${PROOT_DEBIAN:-debian}" "$@"
}

cpripub() {
  cprip "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cpripdb() {
  cprip "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cpridpt() {
  cpridp "${PROOT_TERMUX:-termux}" "$@"
}

cpridpu() {
  cpridp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cpridpd() {
  cpridp "${PROOT_DEBIAN:-debian}" "$@"
}

cpridpub() {
  cpridp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cpridpdb() {
  cpridp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cprispt() {
  cprisp "${PROOT_TERMUX:-termux}" "$@"
}

cprispu() {
  cprisp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cprispd() {
  cprisp "${PROOT_DEBIAN:-debian}" "$@"
}

cprispub() {
  cprisp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cprispdb() {
  cprisp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cpriept() {
  cpriep "${PROOT_TERMUX:-termux}" "$@"
}

cpriepu() {
  cpriep "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cpriepd() {
  cpriep "${PROOT_DEBIAN:-debian}" "$@"
}

cpriepub() {
  cpriep "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cpriepdb() {
  cpriep "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cpropt() {
  cprop "${PROOT_TERMUX:-termux}" "$@"
}

cpropu() {
  cprop "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cpropd() {
  cprop "${PROOT_DEBIAN:-debian}" "$@"
}

cpropub() {
  cprop "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cpropdb() {
  cprop "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cprodpt() {
  cprodp "${PROOT_TERMUX:-termux}" "$@"
}

cprodpu() {
  cprodp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cprodpd() {
  cprodp "${PROOT_DEBIAN:-debian}" "$@"
}

cprodpub() {
  cprodp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cprodpdb() {
  cprodp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cprospt() {
  cprosp "${PROOT_TERMUX:-termux}" "$@"
}

cprospu() {
  cprosp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cprospd() {
  cprosp "${PROOT_DEBIAN:-debian}" "$@"
}

cprospub() {
  cprosp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cprospdb() {
  cprosp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cproept() {
  cproep "${PROOT_TERMUX:-termux}" "$@"
}

cproepu() {
  cproep "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cproepd() {
  cproep "${PROOT_DEBIAN:-debian}" "$@"
}

cproepub() {
  cproep "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cproepdb() {
  cproep "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

mviapt() {
  mviap "${PROOT_TERMUX:-termux}" "$@"
}

mviapu() {
  mviap "${PROOT_UBUNTU:-ubuntu}" "$@"
}

mviapd() {
  mviap "${PROOT_DEBIAN:-debian}" "$@"
}

mviapub() {
  mviap "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

mviapdb() {
  mviap "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

mviadpt() {
  mviadp "${PROOT_TERMUX:-termux}" "$@"
}

mviadpu() {
  mviadp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

mviadpd() {
  mviadp "${PROOT_DEBIAN:-debian}" "$@"
}

mviadpub() {
  mviadp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

mviadpdb() {
  mviadp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

mviaspt() {
  mviasp "${PROOT_TERMUX:-termux}" "$@"
}

mviaspu() {
  mviasp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

mviaspd() {
  mviasp "${PROOT_DEBIAN:-debian}" "$@"
}

mviaspub() {
  mviasp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

mviaspdb() {
  mviasp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

mviaept() {
  mviaep "${PROOT_TERMUX:-termux}" "$@"
}

mviaepu() {
  mviaep "${PROOT_UBUNTU:-ubuntu}" "$@"
}

mviaepd() {
  mviaep "${PROOT_DEBIAN:-debian}" "$@"
}

mviaepub() {
  mviaep "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

mviaepdb() {
  mviaep "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cpiapt() {
  cpiap "${PROOT_TERMUX:-termux}" "$@"
}

cpiapu() {
  cpiap "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cpiapd() {
  cpiap "${PROOT_DEBIAN:-debian}" "$@"
}

cpiapub() {
  cpiap "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cpiapdb() {
  cpiap "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cpiadpt() {
  cpiadp "${PROOT_TERMUX:-termux}" "$@"
}

cpiadpu() {
  cpiadp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cpiadpd() {
  cpiadp "${PROOT_DEBIAN:-debian}" "$@"
}

cpiadpub() {
  cpiadp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cpiadpdb() {
  cpiadp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cpiaspt() {
  cpiasp "${PROOT_TERMUX:-termux}" "$@"
}

cpiaspu() {
  cpiasp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cpiaspd() {
  cpiasp "${PROOT_DEBIAN:-debian}" "$@"
}

cpiaspub() {
  cpiasp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cpiaspdb() {
  cpiasp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cpiaept() {
  cpiaep "${PROOT_TERMUX:-termux}" "$@"
}

cpiaepu() {
  cpiaep "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cpiaepd() {
  cpiaep "${PROOT_DEBIAN:-debian}" "$@"
}

cpiaepub() {
  cpiaep "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cpiaepdb() {
  cpiaep "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

mvaipt() {
  mvaip "${PROOT_TERMUX:-termux}" "$@"
}

mvaipu() {
  mvaip "${PROOT_UBUNTU:-ubuntu}" "$@"
}

mvaipd() {
  mvaip "${PROOT_DEBIAN:-debian}" "$@"
}

mvaipub() {
  mvaip "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

mvaipdb() {
  mvaip "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

mvaidpt() {
  mvaidp "${PROOT_TERMUX:-termux}" "$@"
}

mvaidpu() {
  mvaidp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

mvaidpd() {
  mvaidp "${PROOT_DEBIAN:-debian}" "$@"
}

mvaidpub() {
  mvaidp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

mvaidpdb() {
  mvaidp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

mvaispt() {
  mvaisp "${PROOT_TERMUX:-termux}" "$@"
}

mvaispu() {
  mvaisp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

mvaispd() {
  mvaisp "${PROOT_DEBIAN:-debian}" "$@"
}

mvaispub() {
  mvaisp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

mvaispdb() {
  mvaisp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

mvaiept() {
  mvaiep "${PROOT_TERMUX:-termux}" "$@"
}

mvaiepu() {
  mvaiep "${PROOT_UBUNTU:-ubuntu}" "$@"
}

mvaiepd() {
  mvaiep "${PROOT_DEBIAN:-debian}" "$@"
}

mvaiepub() {
  mvaiep "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

mvaiepdb() {
  mvaiep "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cpaipt() {
  cpaip "${PROOT_TERMUX:-termux}" "$@"
}

cpaipu() {
  cpaip "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cpaipd() {
  cpaip "${PROOT_DEBIAN:-debian}" "$@"
}

cpaipub() {
  cpaip "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cpaipdb() {
  cpaip "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cpaidpt() {
  cpaidp "${PROOT_TERMUX:-termux}" "$@"
}

cpaidpu() {
  cpaidp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cpaidpd() {
  cpaidp "${PROOT_DEBIAN:-debian}" "$@"
}

cpaidpub() {
  cpaidp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cpaidpdb() {
  cpaidp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cpaispt() {
  cpaisp "${PROOT_TERMUX:-termux}" "$@"
}

cpaispu() {
  cpaisp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cpaispd() {
  cpaisp "${PROOT_DEBIAN:-debian}" "$@"
}

cpaispub() {
  cpaisp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cpaispdb() {
  cpaisp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cpaiept() {
  cpaiep "${PROOT_TERMUX:-termux}" "$@"
}

cpaiepu() {
  cpaiep "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cpaiepd() {
  cpaiep "${PROOT_DEBIAN:-debian}" "$@"
}

cpaiepub() {
  cpaiep "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cpaiepdb() {
  cpaiep "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

rmpt() {
  rmp "${PROOT_TERMUX:-termux}" "$@"
}

rmpu() {
  rmp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

rmpd() {
  rmp "${PROOT_DEBIAN:-debian}" "$@"
}

rmpub() {
  rmp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

rmpdb() {
  rmp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

rmrpt() {
  rmrp "${PROOT_TERMUX:-termux}" "$@"
}

rmrpu() {
  rmrp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

rmrpd() {
  rmrp "${PROOT_DEBIAN:-debian}" "$@"
}

rmrpub() {
  rmrp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

rmrpdb() {
  rmrp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

rmrfpt() {
  rmrfp "${PROOT_TERMUX:-termux}" "$@"
}

rmrfpu() {
  rmrfp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

rmrfpd() {
  rmrfp "${PROOT_DEBIAN:-debian}" "$@"
}

rmrfpub() {
  rmrfp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

rmrfpdb() {
  rmrfp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

mkdirpt() {
  mkdirp "${PROOT_TERMUX:-termux}" "$@"
}

mkdirpu() {
  mkdirp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

mkdirpd() {
  mkdirp "${PROOT_DEBIAN:-debian}" "$@"
}

mkdirpub() {
  mkdirp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

mkdirpdb() {
  mkdirp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

mkdirppt() {
  mkdirpp "${PROOT_TERMUX:-termux}" "$@"
}

mkdirppu() {
  mkdirpp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

mkdirppd() {
  mkdirpp "${PROOT_DEBIAN:-debian}" "$@"
}

mkdirppub() {
  mkdirpp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

mkdirppdb() {
  mkdirpp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

mvypt() {
  mvycp "${PROOT_TERMUX:-termux}" "$@"
}

mvypu() {
  mvycp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

mvypd() {
  mvycp "${PROOT_DEBIAN:-debian}" "$@"
}

mvypub() {
  mvycp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

mvypdb() {
  mvycp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

mvydpt() {
  mvyhp "${PROOT_TERMUX:-termux}" "$@"
}

mvydpu() {
  mvyhp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

mvydpd() {
  mvyhp "${PROOT_DEBIAN:-debian}" "$@"
}

mvydpub() {
  mvyhp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

mvydpdb() {
  mvyhp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

mvyspt() {
  mvybp "${PROOT_TERMUX:-termux}" "$@"
}

mvyspu() {
  mvybp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

mvyspd() {
  mvybp "${PROOT_DEBIAN:-debian}" "$@"
}

mvyspub() {
  mvybp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

mvyspdb() {
  mvybp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

mvupt() {
  mvucp "${PROOT_TERMUX:-termux}" "$@"
}

mvupu() {
  mvucp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

mvupd() {
  mvucp "${PROOT_DEBIAN:-debian}" "$@"
}

mvupub() {
  mvucp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

mvupdb() {
  mvucp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

mvudpt() {
  mvuhp "${PROOT_TERMUX:-termux}" "$@"
}

mvudpu() {
  mvuhp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

mvudpd() {
  mvuhp "${PROOT_DEBIAN:-debian}" "$@"
}

mvudpub() {
  mvuhp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

mvudpdb() {
  mvuhp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

mvuspt() {
  mvubp "${PROOT_TERMUX:-termux}" "$@"
}

mvuspu() {
  mvubp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

mvuspd() {
  mvubp "${PROOT_DEBIAN:-debian}" "$@"
}

mvuspub() {
  mvubp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

mvuspdb() {
  mvubp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cpypt() {
  cpycp "${PROOT_TERMUX:-termux}" "$@"
}

cpypu() {
  cpycp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cpypd() {
  cpycp "${PROOT_DEBIAN:-debian}" "$@"
}

cpypub() {
  cpycp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cpypdb() {
  cpycp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cpydpt() {
  cpyhp "${PROOT_TERMUX:-termux}" "$@"
}

cpydpu() {
  cpyhp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cpydpd() {
  cpyhp "${PROOT_DEBIAN:-debian}" "$@"
}

cpydpub() {
  cpyhp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cpydpdb() {
  cpyhp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cpyspt() {
  cpybp "${PROOT_TERMUX:-termux}" "$@"
}

cpyspu() {
  cpybp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cpyspd() {
  cpybp "${PROOT_DEBIAN:-debian}" "$@"
}

cpyspub() {
  cpybp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cpyspdb() {
  cpybp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cpupt() {
  cpucp "${PROOT_TERMUX:-termux}" "$@"
}

cpupu() {
  cpucp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cpupd() {
  cpucp "${PROOT_DEBIAN:-debian}" "$@"
}

cpupub() {
  cpucp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cpupdb() {
  cpucp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cpudpt() {
  cpuhp "${PROOT_TERMUX:-termux}" "$@"
}

cpudpu() {
  cpuhp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cpudpd() {
  cpuhp "${PROOT_DEBIAN:-debian}" "$@"
}

cpudpub() {
  cpuhp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cpudpdb() {
  cpuhp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cpuspt() {
  cpubp "${PROOT_TERMUX:-termux}" "$@"
}

cpuspu() {
  cpubp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cpuspd() {
  cpubp "${PROOT_DEBIAN:-debian}" "$@"
}

cpuspub() {
  cpubp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cpuspdb() {
  cpubp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cprypt() {
  cprycp "${PROOT_TERMUX:-termux}" "$@"
}

cprypu() {
  cprycp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cprypd() {
  cprycp "${PROOT_DEBIAN:-debian}" "$@"
}

cprypub() {
  cprycp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cprypdb() {
  cprycp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cprydpt() {
  cpryhp "${PROOT_TERMUX:-termux}" "$@"
}

cprydpu() {
  cpryhp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cprydpd() {
  cpryhp "${PROOT_DEBIAN:-debian}" "$@"
}

cprydpub() {
  cpryhp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cprydpdb() {
  cpryhp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cpryspt() {
  cprybp "${PROOT_TERMUX:-termux}" "$@"
}

cpryspu() {
  cprybp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cpryspd() {
  cprybp "${PROOT_DEBIAN:-debian}" "$@"
}

cpryspub() {
  cprybp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cpryspdb() {
  cprybp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cprupt() {
  cprucp "${PROOT_TERMUX:-termux}" "$@"
}

cprupu() {
  cprucp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cprupd() {
  cprucp "${PROOT_DEBIAN:-debian}" "$@"
}

cprupub() {
  cprucp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cprupdb() {
  cprucp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cprudpt() {
  cpruhp "${PROOT_TERMUX:-termux}" "$@"
}

cprudpu() {
  cpruhp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cprudpd() {
  cpruhp "${PROOT_DEBIAN:-debian}" "$@"
}

cprudpub() {
  cpruhp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cprudpdb() {
  cpruhp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cpruspt() {
  cprubp "${PROOT_TERMUX:-termux}" "$@"
}

cpruspu() {
  cprubp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cpruspd() {
  cprubp "${PROOT_DEBIAN:-debian}" "$@"
}

cpruspub() {
  cprubp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cpruspdb() {
  cprubp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

mvyapt() {
  mvyacp "${PROOT_TERMUX:-termux}" "$@"
}

mvyapu() {
  mvyacp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

mvyapd() {
  mvyacp "${PROOT_DEBIAN:-debian}" "$@"
}

mvyapub() {
  mvyacp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

mvyapdb() {
  mvyacp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

mvyadpt() {
  mvyahp "${PROOT_TERMUX:-termux}" "$@"
}

mvyadpu() {
  mvyahp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

mvyadpd() {
  mvyahp "${PROOT_DEBIAN:-debian}" "$@"
}

mvyadpub() {
  mvyahp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

mvyadpdb() {
  mvyahp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

mvyaspt() {
  mvyabp "${PROOT_TERMUX:-termux}" "$@"
}

mvyaspu() {
  mvyabp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

mvyaspd() {
  mvyabp "${PROOT_DEBIAN:-debian}" "$@"
}

mvyaspub() {
  mvyabp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

mvyaspdb() {
  mvyabp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cpyapt() {
  cpyacp "${PROOT_TERMUX:-termux}" "$@"
}

cpyapu() {
  cpyacp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cpyapd() {
  cpyacp "${PROOT_DEBIAN:-debian}" "$@"
}

cpyapub() {
  cpyacp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cpyapdb() {
  cpyacp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cpyadpt() {
  cpyahp "${PROOT_TERMUX:-termux}" "$@"
}

cpyadpu() {
  cpyahp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cpyadpd() {
  cpyahp "${PROOT_DEBIAN:-debian}" "$@"
}

cpyadpub() {
  cpyahp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cpyadpdb() {
  cpyahp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cpyaspt() {
  cpyabp "${PROOT_TERMUX:-termux}" "$@"
}

cpyaspu() {
  cpyabp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cpyaspd() {
  cpyabp "${PROOT_DEBIAN:-debian}" "$@"
}

cpyaspub() {
  cpyabp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cpyaspdb() {
  cpyabp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

mvaypt() {
  mvaycp "${PROOT_TERMUX:-termux}" "$@"
}

mvaypu() {
  mvaycp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

mvaypd() {
  mvaycp "${PROOT_DEBIAN:-debian}" "$@"
}

mvaypub() {
  mvaycp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

mvaypdb() {
  mvaycp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

mvaydpt() {
  mvayhp "${PROOT_TERMUX:-termux}" "$@"
}

mvaydpu() {
  mvayhp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

mvaydpd() {
  mvayhp "${PROOT_DEBIAN:-debian}" "$@"
}

mvaydpub() {
  mvayhp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

mvaydpdb() {
  mvayhp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

mvayspt() {
  mvaybp "${PROOT_TERMUX:-termux}" "$@"
}

mvayspu() {
  mvaybp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

mvayspd() {
  mvaybp "${PROOT_DEBIAN:-debian}" "$@"
}

mvayspub() {
  mvaybp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

mvayspdb() {
  mvaybp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cpaypt() {
  cpaycp "${PROOT_TERMUX:-termux}" "$@"
}

cpaypu() {
  cpaycp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cpaypd() {
  cpaycp "${PROOT_DEBIAN:-debian}" "$@"
}

cpaypub() {
  cpaycp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cpaypdb() {
  cpaycp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cpaydpt() {
  cpayhp "${PROOT_TERMUX:-termux}" "$@"
}

cpaydpu() {
  cpayhp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cpaydpd() {
  cpayhp "${PROOT_DEBIAN:-debian}" "$@"
}

cpaydpub() {
  cpayhp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cpaydpdb() {
  cpayhp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

cpayspt() {
  cpaybp "${PROOT_TERMUX:-termux}" "$@"
}

cpayspu() {
  cpaybp "${PROOT_UBUNTU:-ubuntu}" "$@"
}

cpayspd() {
  cpaybp "${PROOT_DEBIAN:-debian}" "$@"
}

cpayspub() {
  cpaybp "${PROOT_UBUNTUBOX:-ubuntubox}" "$@"
}

cpayspdb() {
  cpaybp "${PROOT_DEBIANBOX:-debianbox}" "$@"
}

pdct() {
  cd "/data/data/com.termux/files/usr/var/lib/proot-distro/containers/${PROOT_TERMUX:-termux}/rootfs/root" || return
}

pdcu() {
  cd "/data/data/com.termux/files/usr/var/lib/proot-distro/containers/${PROOT_UBUNTU:-ubuntu}/rootfs/root" || return
}

pdcd() {
  cd "/data/data/com.termux/files/usr/var/lib/proot-distro/containers/${PROOT_DEBIAN:-debian}/rootfs/root" || return
}

pdcub() {
  cd "/data/data/com.termux/files/usr/var/lib/proot-distro/containers/${PROOT_UBUNTUBOX:-ubuntubox}/rootfs/root" || return
}

pdcdb() {
  cd "/data/data/com.termux/files/usr/var/lib/proot-distro/containers/${PROOT_DEBIANBOX:-debianbox}/rootfs/root" || return
}

mvagc() {
  mvaic "$1"
  gac "$2"
}

cpagc() {
  cpaic "$1"
  gac "$2"
}

mvigc() {
  mvic "$1"
  gac "$2"
}

cpigc() {
  cpric "$1"
  gac "$2"
}

mviagc() {
  mviac
  gac "$1"
}

cpiagc() {
  cpiac "*"
  gac "$1"
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

mvagcd() {
  mvaic "$1"
  gacd
}

cpagcd() {
  cpaic "$1"
  gacd
}

mvigcd() {
  mvic "$1"
  gacd
}

cpigcd() {
  cpric "$1"
  gacd
}

mviagcd() {
  mviac
  gacd
}

cpiagcd() {
  cpiac "*"
  gacd
}

mvagcdp() {
  mvaic "$1"
  gacdp
}

cpagcdp() {
  cpaic "$1"
  gacdp
}

mvigcdp() {
  mvic "$1"
  gacdp
}

cpigcdp() {
  cpric "$1"
  gacdp
}

mviagcdp() {
  mviac
  gacdp
}

cpiagcdp() {
  cpiac "*"
  gacdp
}

mvadgc() {
  mvadic "$1"
  gac "$2"
}

cpadgc() {
  cpadic "$1"
  gac "$2"
}

mvidgc() {
  mvidc "$1"
  gac "$2"
}

cpidgc() {
  cpridc "$1"
  gac "$2"
}

mviadgc() {
  mviadc
  gac "$1"
}

cpiadgc() {
  cpiadc "*"
  gac "$1"
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

mvadgcd() {
  mvadic "$1"
  gacd
}

cpadgcd() {
  cpadic "$1"
  gacd
}

mvidgcd() {
  mvidc "$1"
  gacd
}

cpidgcd() {
  cpridc "$1"
  gacd
}

mviadgcd() {
  mviadc
  gacd
}

cpiadgcd() {
  cpiadc "*"
  gacd
}

mvadgcdp() {
  mvadic "$1"
  gacdp
}

cpadgcdp() {
  cpadic "$1"
  gacdp
}

mvidgcdp() {
  mvidc "$1"
  gacdp
}

cpidgcdp() {
  cpridc "$1"
  gacdp
}

mviadgcdp() {
  mviadc
  gacdp
}

cpiadgcdp() {
  cpiadc "*"
  gacdp
}

mvasgc() {
  mvasic "$1"
  gac "$2"
}

cpasgc() {
  cpasic "$1"
  gac "$2"
}

mvisgc() {
  mvisc "$1"
  gac "$2"
}

cpisgc() {
  cprisc "$1"
  gac "$2"
}

mviasgc() {
  mviasc
  gac "$1"
}

cpiasgc() {
  cpiasc "*"
  gac "$1"
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

mvasgcd() {
  mvasic "$1"
  gacd
}

cpasgcd() {
  cpasic "$1"
  gacd
}

mvisgcd() {
  mvisc "$1"
  gacd
}

cpisgcd() {
  cprisc "$1"
  gacd
}

mviasgcd() {
  mviasc
  gacd
}

cpiasgcd() {
  cpiasc "*"
  gacd
}

mvasgcdp() {
  mvasic "$1"
  gacdp
}

cpasgcdp() {
  cpasic "$1"
  gacdp
}

mvisgcdp() {
  mvisc "$1"
  gacdp
}

cpisgcdp() {
  cprisc "$1"
  gacdp
}

mviasgcdp() {
  mviasc
  gacdp
}

cpiasgcdp() {
  cpiasc "*"
  gacdp
}

mvaegc() {
  mvaeic "$1"
  gac "$2"
}

cpaegc() {
  cpaeic "$1"
  gac "$2"
}

mviegc() {
  mviec "$1"
  gac "$2"
}

cpiegc() {
  cpriec "$1"
  gac "$2"
}

mviaegc() {
  mviaec
  gac "$1"
}

cpiaegc() {
  cpiaec "*"
  gac "$1"
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

mvaegcd() {
  mvaeic "$1"
  gacd
}

cpaegcd() {
  cpaeic "$1"
  gacd
}

mviegcd() {
  mviec "$1"
  gacd
}

cpiegcd() {
  cpriec "$1"
  gacd
}

mviaegcd() {
  mviaec
  gacd
}

cpiaegcd() {
  cpiaec "*"
  gacd
}

mvaegcdp() {
  mvaeic "$1"
  gacdp
}

cpaegcdp() {
  cpaeic "$1"
  gacdp
}

mviegcdp() {
  mviec "$1"
  gacdp
}

cpiegcdp() {
  cpriec "$1"
  gacdp
}

mviaegcdp() {
  mviaec
  gacdp
}

cpiaegcdp() {
  cpiaec "*"
  gacdp
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

scnnan() {
  unset GALLIUM_DRIVER
  scrcpy --video-codec=h265 --fullscreen --new-display "$@"
}

scnnasa() {
  unset GALLIUM_DRIVER
  scrcpy --video-codec=h265 --fullscreen --new-display --start-app "$@"
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
