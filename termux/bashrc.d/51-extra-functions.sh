mvic() {
  for f in "$DOW"/"$1"; do
    mv -- "$f" ./
  done
}

mvoc() {
  for f in "$DOW"/"$1"; do
    mv -- ./"$f" 
  done
}

mvih() {
  for f in "$DOW"/"$1"; do
    mv -- "$f" ~/
  done
}

mvoh() {
  for f in "$DOW"/"$1"; do
    mv -- ~/"$f" 
  done
}

mvib() {
  for f in "$DOW"/"$1"; do
    mv -- "$f" ../
  done
}

mvob() {
  for f in "$DOW"/"$1"; do
    mv -- ../"$f" 
  done
}

mvidc() {
  for f in "$DOC"/"$1"; do
    mv -- "$f" ./
  done
}

mvodc() {
  for f in "$DOC"/"$1"; do
    mv -- ./"$f" 
  done
}

mvidh() {
  for f in "$DOC"/"$1"; do
    mv -- "$f" ~/
  done
}

mvodh() {
  for f in "$DOC"/"$1"; do
    mv -- ~/"$f" 
  done
}

mvidb() {
  for f in "$DOC"/"$1"; do
    mv -- "$f" ../
  done
}

mvodb() {
  for f in "$DOC"/"$1"; do
    mv -- ../"$f" 
  done
}

mvisc() {
  for f in "$SCR"/"$1"; do
    mv -- "$f" ./
  done
}

mvosc() {
  for f in "$SCR"/"$1"; do
    mv -- ./"$f" 
  done
}

mvish() {
  for f in "$SCR"/"$1"; do
    mv -- "$f" ~/
  done
}

mvosh() {
  for f in "$SCR"/"$1"; do
    mv -- ~/"$f" 
  done
}

mvisb() {
  for f in "$SCR"/"$1"; do
    mv -- "$f" ../
  done
}

mvosb() {
  for f in "$SCR"/"$1"; do
    mv -- ../"$f" 
  done
}

mviec() {
  for f in "$EMU"/"$1"; do
    mv -- "$f" ./
  done
}

mvoec() {
  for f in "$EMU"/"$1"; do
    mv -- ./"$f" 
  done
}

mvieh() {
  for f in "$EMU"/"$1"; do
    mv -- "$f" ~/
  done
}

mvoeh() {
  for f in "$EMU"/"$1"; do
    mv -- ~/"$f" 
  done
}

mvieb() {
  for f in "$EMU"/"$1"; do
    mv -- "$f" ../
  done
}

mvoeb() {
  for f in "$EMU"/"$1"; do
    mv -- ../"$f" 
  done
}

cpic() {
  for f in "$DOW"/"$1"; do
    cp -- "$f" ./
  done
}

cpoc() {
  for f in "$DOW"/"$1"; do
    cp -- ./"$f" 
  done
}

cpih() {
  for f in "$DOW"/"$1"; do
    cp -- "$f" ~/
  done
}

cpoh() {
  for f in "$DOW"/"$1"; do
    cp -- ~/"$f" 
  done
}

cpib() {
  for f in "$DOW"/"$1"; do
    cp -- "$f" ../
  done
}

cpob() {
  for f in "$DOW"/"$1"; do
    cp -- ../"$f" 
  done
}

cpidc() {
  for f in "$DOC"/"$1"; do
    cp -- "$f" ./
  done
}

cpodc() {
  for f in "$DOC"/"$1"; do
    cp -- ./"$f" 
  done
}

cpidh() {
  for f in "$DOC"/"$1"; do
    cp -- "$f" ~/
  done
}

cpodh() {
  for f in "$DOC"/"$1"; do
    cp -- ~/"$f" 
  done
}

cpidb() {
  for f in "$DOC"/"$1"; do
    cp -- "$f" ../
  done
}

cpodb() {
  for f in "$DOC"/"$1"; do
    cp -- ../"$f" 
  done
}

cpisc() {
  for f in "$SCR"/"$1"; do
    cp -- "$f" ./
  done
}

cposc() {
  for f in "$SCR"/"$1"; do
    cp -- ./"$f" 
  done
}

cpish() {
  for f in "$SCR"/"$1"; do
    cp -- "$f" ~/
  done
}

cposh() {
  for f in "$SCR"/"$1"; do
    cp -- ~/"$f" 
  done
}

cpisb() {
  for f in "$SCR"/"$1"; do
    cp -- "$f" ../
  done
}

cposb() {
  for f in "$SCR"/"$1"; do
    cp -- ../"$f" 
  done
}

cpiec() {
  for f in "$EMU"/"$1"; do
    cp -- "$f" ./
  done
}

cpoec() {
  for f in "$EMU"/"$1"; do
    cp -- ./"$f" 
  done
}

cpieh() {
  for f in "$EMU"/"$1"; do
    cp -- "$f" ~/
  done
}

cpoeh() {
  for f in "$EMU"/"$1"; do
    cp -- ~/"$f" 
  done
}

cpieb() {
  for f in "$EMU"/"$1"; do
    cp -- "$f" ../
  done
}

cpoeb() {
  for f in "$EMU"/"$1"; do
    cp -- ../"$f" 
  done
}

cpric() {
  for f in "$DOW"/"$1"; do
    cp -r -- "$f" ./
  done
}

cproc() {
  for f in "$DOW"/"$1"; do
    cp -r -- ./"$f" 
  done
}

cprih() {
  for f in "$DOW"/"$1"; do
    cp -r -- "$f" ~/
  done
}

cproh() {
  for f in "$DOW"/"$1"; do
    cp -r -- ~/"$f" 
  done
}

cprib() {
  for f in "$DOW"/"$1"; do
    cp -r -- "$f" ../
  done
}

cprob() {
  for f in "$DOW"/"$1"; do
    cp -r -- ../"$f" 
  done
}

cpridc() {
  for f in "$DOC"/"$1"; do
    cp -r -- "$f" ./
  done
}

cprodc() {
  for f in "$DOC"/"$1"; do
    cp -r -- ./"$f" 
  done
}

cpridh() {
  for f in "$DOC"/"$1"; do
    cp -r -- "$f" ~/
  done
}

cprodh() {
  for f in "$DOC"/"$1"; do
    cp -r -- ~/"$f" 
  done
}

cpridb() {
  for f in "$DOC"/"$1"; do
    cp -r -- "$f" ../
  done
}

cprodb() {
  for f in "$DOC"/"$1"; do
    cp -r -- ../"$f" 
  done
}

cprisc() {
  for f in "$SCR"/"$1"; do
    cp -r -- "$f" ./
  done
}

cprosc() {
  for f in "$SCR"/"$1"; do
    cp -r -- ./"$f" 
  done
}

cprish() {
  for f in "$SCR"/"$1"; do
    cp -r -- "$f" ~/
  done
}

cprosh() {
  for f in "$SCR"/"$1"; do
    cp -r -- ~/"$f" 
  done
}

cprisb() {
  for f in "$SCR"/"$1"; do
    cp -r -- "$f" ../
  done
}

cprosb() {
  for f in "$SCR"/"$1"; do
    cp -r -- ../"$f" 
  done
}

cpriec() {
  for f in "$EMU"/"$1"; do
    cp -r -- "$f" ./
  done
}

cproec() {
  for f in "$EMU"/"$1"; do
    cp -r -- ./"$f" 
  done
}

cprieh() {
  for f in "$EMU"/"$1"; do
    cp -r -- "$f" ~/
  done
}

cproeh() {
  for f in "$EMU"/"$1"; do
    cp -r -- ~/"$f" 
  done
}

cprieb() {
  for f in "$EMU"/"$1"; do
    cp -r -- "$f" ../
  done
}

cproeb() {
  for f in "$EMU"/"$1"; do
    cp -r -- ../"$f" 
  done
}

mvir() {
  for f in "$DOW"/"$2"; do
    mv -- "$f" "$1"/
  done
}

mvor() {
  for f in "$DOW"/"$2"; do
    mv -- "$1"/"$f" 
  done
}

mvip() {
  for f in "$DOW"/"$2"; do
    mv -- "$f" "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
  done
}

mvop() {
  for f in "$DOW"/"$2"; do
    mv -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f" 
  done
}

mvidr() {
  for f in "$DOC"/"$2"; do
    mv -- "$f" "$1"/
  done
}

mvodr() {
  for f in "$DOC"/"$2"; do
    mv -- "$1"/"$f" 
  done
}

mvidp() {
  for f in "$DOC"/"$2"; do
    mv -- "$f" "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
  done
}

mvodp() {
  for f in "$DOC"/"$2"; do
    mv -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f" 
  done
}

mvisr() {
  for f in "$SCR"/"$2"; do
    mv -- "$f" "$1"/
  done
}

mvosr() {
  for f in "$SCR"/"$2"; do
    mv -- "$1"/"$f" 
  done
}

mvisp() {
  for f in "$SCR"/"$2"; do
    mv -- "$f" "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
  done
}

mvosp() {
  for f in "$SCR"/"$2"; do
    mv -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f" 
  done
}

mvier() {
  for f in "$EMU"/"$2"; do
    mv -- "$f" "$1"/
  done
}

mvoer() {
  for f in "$EMU"/"$2"; do
    mv -- "$1"/"$f" 
  done
}

mviep() {
  for f in "$EMU"/"$2"; do
    mv -- "$f" "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
  done
}

mvoep() {
  for f in "$EMU"/"$2"; do
    mv -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f" 
  done
}

cpir() {
  for f in "$DOW"/"$2"; do
    cp -- "$f" "$1"/
  done
}

cpor() {
  for f in "$DOW"/"$2"; do
    cp -- "$1"/"$f" 
  done
}

cpip() {
  for f in "$DOW"/"$2"; do
    cp -- "$f" "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
  done
}

cpop() {
  for f in "$DOW"/"$2"; do
    cp -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f" 
  done
}

cpidr() {
  for f in "$DOC"/"$2"; do
    cp -- "$f" "$1"/
  done
}

cpodr() {
  for f in "$DOC"/"$2"; do
    cp -- "$1"/"$f" 
  done
}

cpidp() {
  for f in "$DOC"/"$2"; do
    cp -- "$f" "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
  done
}

cpodp() {
  for f in "$DOC"/"$2"; do
    cp -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f" 
  done
}

cpisr() {
  for f in "$SCR"/"$2"; do
    cp -- "$f" "$1"/
  done
}

cposr() {
  for f in "$SCR"/"$2"; do
    cp -- "$1"/"$f" 
  done
}

cpisp() {
  for f in "$SCR"/"$2"; do
    cp -- "$f" "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
  done
}

cposp() {
  for f in "$SCR"/"$2"; do
    cp -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f" 
  done
}

cpier() {
  for f in "$EMU"/"$2"; do
    cp -- "$f" "$1"/
  done
}

cpoer() {
  for f in "$EMU"/"$2"; do
    cp -- "$1"/"$f" 
  done
}

cpiep() {
  for f in "$EMU"/"$2"; do
    cp -- "$f" "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
  done
}

cpoep() {
  for f in "$EMU"/"$2"; do
    cp -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f" 
  done
}

cprir() {
  for f in "$DOW"/"$2"; do
    cp -r -- "$f" "$1"/
  done
}

cpror() {
  for f in "$DOW"/"$2"; do
    cp -r -- "$1"/"$f" 
  done
}

cprip() {
  for f in "$DOW"/"$2"; do
    cp -r -- "$f" "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
  done
}

cprop() {
  for f in "$DOW"/"$2"; do
    cp -r -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f" 
  done
}

cpridr() {
  for f in "$DOC"/"$2"; do
    cp -r -- "$f" "$1"/
  done
}

cprodr() {
  for f in "$DOC"/"$2"; do
    cp -r -- "$1"/"$f" 
  done
}

cpridp() {
  for f in "$DOC"/"$2"; do
    cp -r -- "$f" "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
  done
}

cprodp() {
  for f in "$DOC"/"$2"; do
    cp -r -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f" 
  done
}

cprisr() {
  for f in "$SCR"/"$2"; do
    cp -r -- "$f" "$1"/
  done
}

cprosr() {
  for f in "$SCR"/"$2"; do
    cp -r -- "$1"/"$f" 
  done
}

cprisp() {
  for f in "$SCR"/"$2"; do
    cp -r -- "$f" "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
  done
}

cprosp() {
  for f in "$SCR"/"$2"; do
    cp -r -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f" 
  done
}

cprier() {
  for f in "$EMU"/"$2"; do
    cp -r -- "$f" "$1"/
  done
}

cproer() {
  for f in "$EMU"/"$2"; do
    cp -r -- "$1"/"$f" 
  done
}

cpriep() {
  for f in "$EMU"/"$2"; do
    cp -r -- "$f" "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
  done
}

cproep() {
  for f in "$EMU"/"$2"; do
    cp -r -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f" 
  done
}

mvaic() {
  for f in "$DOW"/"$1"; do
    mv -- "$f" ./
    cp -r -- ./"$f"/* ./
    rm -r -- ./"$f"
  done
}

mvaih() {
  for f in "$DOW"/"$1"; do
    mv -- "$f" ~/
    cp -r -- ~/"$f"/* ~/
    rm -r -- ~/"$f"
  done
}

mvaib() {
  for f in "$DOW"/"$1"; do
    mv -- "$f" ../
    cp -r -- ../"$f"/* ../
    rm -r -- ../"$f"
  done
}

mvaidc() {
  for f in "$DOC"/"$1"; do
    mv -- "$f" ./
    cp -r -- ./"$f"/* ./
    rm -r -- ./"$f"
  done
}

mvaidh() {
  for f in "$DOC"/"$1"; do
    mv -- "$f" ~/
    cp -r -- ~/"$f"/* ~/
    rm -r -- ~/"$f"
  done
}

mvaidb() {
  for f in "$DOC"/"$1"; do
    mv -- "$f" ../
    cp -r -- ../"$f"/* ../
    rm -r -- ../"$f"
  done
}

mvaisc() {
  for f in "$SCR"/"$1"; do
    mv -- "$f" ./
    cp -r -- ./"$f"/* ./
    rm -r -- ./"$f"
  done
}

mvaish() {
  for f in "$SCR"/"$1"; do
    mv -- "$f" ~/
    cp -r -- ~/"$f"/* ~/
    rm -r -- ~/"$f"
  done
}

mvaisb() {
  for f in "$SCR"/"$1"; do
    mv -- "$f" ../
    cp -r -- ../"$f"/* ../
    rm -r -- ../"$f"
  done
}

mvaiec() {
  for f in "$EMU"/"$1"; do
    mv -- "$f" ./
    cp -r -- ./"$f"/* ./
    rm -r -- ./"$f"
  done
}

mvaieh() {
  for f in "$EMU"/"$1"; do
    mv -- "$f" ~/
    cp -r -- ~/"$f"/* ~/
    rm -r -- ~/"$f"
  done
}

mvaieb() {
  for f in "$EMU"/"$1"; do
    mv -- "$f" ../
    cp -r -- ../"$f"/* ../
    rm -r -- ../"$f"
  done
}

cpaic() {
  for f in "$DOW"/"$1"; do
    cp -r -- "$f" ./
    cp -r -- ./"$f"/* ./
    rm -r -- ./"$f"
  done
}

cpaih() {
  for f in "$DOW"/"$1"; do
    cp -r -- "$f" ~/
    cp -r -- ~/"$f"/* ~/
    rm -r -- ~/"$f"
  done
}

cpaib() {
  for f in "$DOW"/"$1"; do
    cp -r -- "$f" ../
    cp -r -- ../"$f"/* ../
    rm -r -- ../"$f"
  done
}

cpaidc() {
  for f in "$DOC"/"$1"; do
    cp -r -- "$f" ./
    cp -r -- ./"$f"/* ./
    rm -r -- ./"$f"
  done
}

cpaidh() {
  for f in "$DOC"/"$1"; do
    cp -r -- "$f" ~/
    cp -r -- ~/"$f"/* ~/
    rm -r -- ~/"$f"
  done
}

cpaidb() {
  for f in "$DOC"/"$1"; do
    cp -r -- "$f" ../
    cp -r -- ../"$f"/* ../
    rm -r -- ../"$f"
  done
}

cpaisc() {
  for f in "$SCR"/"$1"; do
    cp -r -- "$f" ./
    cp -r -- ./"$f"/* ./
    rm -r -- ./"$f"
  done
}

cpaish() {
  for f in "$SCR"/"$1"; do
    cp -r -- "$f" ~/
    cp -r -- ~/"$f"/* ~/
    rm -r -- ~/"$f"
  done
}

cpaisb() {
  for f in "$SCR"/"$1"; do
    cp -r -- "$f" ../
    cp -r -- ../"$f"/* ../
    rm -r -- ../"$f"
  done
}

cpaiec() {
  for f in "$EMU"/"$1"; do
    cp -r -- "$f" ./
    cp -r -- ./"$f"/* ./
    rm -r -- ./"$f"
  done
}

cpaieh() {
  for f in "$EMU"/"$1"; do
    cp -r -- "$f" ~/
    cp -r -- ~/"$f"/* ~/
    rm -r -- ~/"$f"
  done
}

cpaieb() {
  for f in "$EMU"/"$1"; do
    cp -r -- "$f" ../
    cp -r -- ../"$f"/* ../
    rm -r -- ../"$f"
  done
}

mvair() {
  for f in "$DOW"/"$2"; do
    mv -- "$f" "$1"/
    cp -r -- "$1"/"$f"/* "$1"/
    rm -r -- "$1"/"$f"
  done
}

mvaip() {
  for f in "$DOW"/"$2"; do
    mv -- "$f" "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
    cp -r -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f"/* "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
    rm -r -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f"
  done
}

mvaidr() {
  for f in "$DOC"/"$2"; do
    mv -- "$f" "$1"/
    cp -r -- "$1"/"$f"/* "$1"/
    rm -r -- "$1"/"$f"
  done
}

mvaidp() {
  for f in "$DOC"/"$2"; do
    mv -- "$f" "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
    cp -r -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f"/* "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
    rm -r -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f"
  done
}

mvaisr() {
  for f in "$SCR"/"$2"; do
    mv -- "$f" "$1"/
    cp -r -- "$1"/"$f"/* "$1"/
    rm -r -- "$1"/"$f"
  done
}

mvaisp() {
  for f in "$SCR"/"$2"; do
    mv -- "$f" "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
    cp -r -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f"/* "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
    rm -r -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f"
  done
}

mvaier() {
  for f in "$EMU"/"$2"; do
    mv -- "$f" "$1"/
    cp -r -- "$1"/"$f"/* "$1"/
    rm -r -- "$1"/"$f"
  done
}

mvaiep() {
  for f in "$EMU"/"$2"; do
    mv -- "$f" "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
    cp -r -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f"/* "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
    rm -r -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f"
  done
}

cpair() {
  for f in "$DOW"/"$2"; do
    cp -r -- "$f" "$1"/
    cp -r -- "$1"/"$f"/* "$1"/
    rm -r -- "$1"/"$f"
  done
}

cpaip() {
  for f in "$DOW"/"$2"; do
    cp -r -- "$f" "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
    cp -r -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f"/* "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
    rm -r -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f"
  done
}

cpaidr() {
  for f in "$DOC"/"$2"; do
    cp -r -- "$f" "$1"/
    cp -r -- "$1"/"$f"/* "$1"/
    rm -r -- "$1"/"$f"
  done
}

cpaidp() {
  for f in "$DOC"/"$2"; do
    cp -r -- "$f" "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
    cp -r -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f"/* "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
    rm -r -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f"
  done
}

cpaisr() {
  for f in "$SCR"/"$2"; do
    cp -r -- "$f" "$1"/
    cp -r -- "$1"/"$f"/* "$1"/
    rm -r -- "$1"/"$f"
  done
}

cpaisp() {
  for f in "$SCR"/"$2"; do
    cp -r -- "$f" "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
    cp -r -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f"/* "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
    rm -r -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f"
  done
}

cpaier() {
  for f in "$EMU"/"$2"; do
    cp -r -- "$f" "$1"/
    cp -r -- "$1"/"$f"/* "$1"/
    rm -r -- "$1"/"$f"
  done
}

cpaiep() {
  for f in "$EMU"/"$2"; do
    cp -r -- "$f" "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
    cp -r -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f"/* "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
    rm -r -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f"
  done
}

rmp() {
  rm "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root/$2"
}

rmrp() {
  rm -r "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root/$2"
}

rmrfp() {
  rm -rf "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root/$2"
}

mkdirp() {
  mkdir "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root/$2"
}

mkdirpp() {
  mkdir -p "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root/$2"
}
mvycr() {
  for f in ./"$1"; do
    mv -- "$f" "$1"/
  done
}

mvucr() {
  for f in ./"$1"; do
    mv -- "$1"/"$f" 
  done
}

mvycp() {
  for f in ./"$1"; do
    mv -- "$f" "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
  done
}

mvucp() {
  for f in ./"$1"; do
    mv -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f" 
  done
}

mvyhr() {
  for f in ~/"$1"; do
    mv -- "$f" "$1"/
  done
}

mvuhr() {
  for f in ~/"$1"; do
    mv -- "$1"/"$f" 
  done
}

mvyhp() {
  for f in ~/"$1"; do
    mv -- "$f" "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
  done
}

mvuhp() {
  for f in ~/"$1"; do
    mv -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f" 
  done
}

mvybr() {
  for f in ../"$1"; do
    mv -- "$f" "$1"/
  done
}

mvubr() {
  for f in ../"$1"; do
    mv -- "$1"/"$f" 
  done
}

mvybp() {
  for f in ../"$1"; do
    mv -- "$f" "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
  done
}

mvubp() {
  for f in ../"$1"; do
    mv -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f" 
  done
}

cpycr() {
  for f in ./"$1"; do
    cp -- "$f" "$1"/
  done
}

cpucr() {
  for f in ./"$1"; do
    cp -- "$1"/"$f" 
  done
}

cpycp() {
  for f in ./"$1"; do
    cp -- "$f" "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
  done
}

cpucp() {
  for f in ./"$1"; do
    cp -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f" 
  done
}

cpyhr() {
  for f in ~/"$1"; do
    cp -- "$f" "$1"/
  done
}

cpuhr() {
  for f in ~/"$1"; do
    cp -- "$1"/"$f" 
  done
}

cpyhp() {
  for f in ~/"$1"; do
    cp -- "$f" "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
  done
}

cpuhp() {
  for f in ~/"$1"; do
    cp -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f" 
  done
}

cpybr() {
  for f in ../"$1"; do
    cp -- "$f" "$1"/
  done
}

cpubr() {
  for f in ../"$1"; do
    cp -- "$1"/"$f" 
  done
}

cpybp() {
  for f in ../"$1"; do
    cp -- "$f" "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
  done
}

cpubp() {
  for f in ../"$1"; do
    cp -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f" 
  done
}

cprycr() {
  for f in ./"$1"; do
    cp -r -- "$f" "$1"/
  done
}

cprucr() {
  for f in ./"$1"; do
    cp -r -- "$1"/"$f" 
  done
}

cprycp() {
  for f in ./"$1"; do
    cp -r -- "$f" "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
  done
}

cprucp() {
  for f in ./"$1"; do
    cp -r -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f" 
  done
}

cpryhr() {
  for f in ~/"$1"; do
    cp -r -- "$f" "$1"/
  done
}

cpruhr() {
  for f in ~/"$1"; do
    cp -r -- "$1"/"$f" 
  done
}

cpryhp() {
  for f in ~/"$1"; do
    cp -r -- "$f" "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
  done
}

cpruhp() {
  for f in ~/"$1"; do
    cp -r -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f" 
  done
}

cprybr() {
  for f in ../"$1"; do
    cp -r -- "$f" "$1"/
  done
}

cprubr() {
  for f in ../"$1"; do
    cp -r -- "$1"/"$f" 
  done
}

cprybp() {
  for f in ../"$1"; do
    cp -r -- "$f" "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
  done
}

cprubp() {
  for f in ../"$1"; do
    cp -r -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f" 
  done
}

mvaycr() {
  for f in ./"$1"; do
    mv -- "$f" "$1"/
    cp -r -- "$1"/"$f"/* "$1"/
    rm -r -- "$1"/"$f"
  done
}

mvaycp() {
  for f in ./"$1"; do
    mv -- "$f" "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
    cp -r -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f"/* "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
    rm -r -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f"
  done
}

mvayhr() {
  for f in ~/"$1"; do
    mv -- "$f" "$1"/
    cp -r -- "$1"/"$f"/* "$1"/
    rm -r -- "$1"/"$f"
  done
}

mvayhp() {
  for f in ~/"$1"; do
    mv -- "$f" "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
    cp -r -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f"/* "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
    rm -r -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f"
  done
}

mvaybr() {
  for f in ../"$1"; do
    mv -- "$f" "$1"/
    cp -r -- "$1"/"$f"/* "$1"/
    rm -r -- "$1"/"$f"
  done
}

mvaybp() {
  for f in ../"$1"; do
    mv -- "$f" "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
    cp -r -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f"/* "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
    rm -r -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f"
  done
}

cpaycr() {
  for f in ./"$1"; do
    cp -r -- "$f" "$1"/
    cp -r -- "$1"/"$f"/* "$1"/
    rm -r -- "$1"/"$f"
  done
}

cpaycp() {
  for f in ./"$1"; do
    cp -r -- "$f" "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
    cp -r -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f"/* "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
    rm -r -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f"
  done
}

cpayhr() {
  for f in ~/"$1"; do
    cp -r -- "$f" "$1"/
    cp -r -- "$1"/"$f"/* "$1"/
    rm -r -- "$1"/"$f"
  done
}

cpayhp() {
  for f in ~/"$1"; do
    cp -r -- "$f" "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
    cp -r -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f"/* "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
    rm -r -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f"
  done
}

cpaybr() {
  for f in ../"$1"; do
    cp -r -- "$f" "$1"/
    cp -r -- "$1"/"$f"/* "$1"/
    rm -r -- "$1"/"$f"
  done
}

cpaybp() {
  for f in ../"$1"; do
    cp -r -- "$f" "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
    cp -r -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f"/* "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/
    rm -r -- "$PREFIX/var/lib/proot-distro/installed-rootfs/$1/root"/"$f"
  done
}

mvipt(){
  if [ -n "$TERMUX" ]; then
    mvip "$TERMUX" "$1"
  else
    mvip "termux" "$1"
  fi
}

mvipu(){
  if [ -n "$UBUNTU" ]; then
    mvip "$UBUNTU" "$1"
  else
    mvip "ubuntu" "$1"
  fi
}

mvipd(){
  if [ -n "$DEBIAN" ]; then
    mvip "$DEBIAN" "$1"
  else
    mvip "debian" "$1"
  fi
}

mvipub(){
  if [ -n "$UBUNTUBOX" ]; then
    mvip "$UBUNTUBOX" "$1"
  else
    mvip "ubuntubox" "$1"
  fi
}

mvipdb(){
  if [ -n "$DEBIANBOX" ]; then
    mvip "$DEBIANBOX" "$1"
  else
    mvip "debianbox" "$1"
  fi
}

mvidpt(){
  if [ -n "$TERMUX" ]; then
    mvidp "$TERMUX" "$1"
  else
    mvidp "termux" "$1"
  fi
}

mvidpu(){
  if [ -n "$UBUNTU" ]; then
    mvidp "$UBUNTU" "$1"
  else
    mvidp "ubuntu" "$1"
  fi
}

mvidpd(){
  if [ -n "$DEBIAN" ]; then
    mvidp "$DEBIAN" "$1"
  else
    mvidp "debian" "$1"
  fi
}

mvidpub(){
  if [ -n "$UBUNTUBOX" ]; then
    mvidp "$UBUNTUBOX" "$1"
  else
    mvidp "ubuntubox" "$1"
  fi
}

mvidpdb(){
  if [ -n "$DEBIANBOX" ]; then
    mvidp "$DEBIANBOX" "$1"
  else
    mvidp "debianbox" "$1"
  fi
}

mvispt(){
  if [ -n "$TERMUX" ]; then
    mvisp "$TERMUX" "$1"
  else
    mvisp "termux" "$1"
  fi
}

mvispu(){
  if [ -n "$UBUNTU" ]; then
    mvisp "$UBUNTU" "$1"
  else
    mvisp "ubuntu" "$1"
  fi
}

mvispd(){
  if [ -n "$DEBIAN" ]; then
    mvisp "$DEBIAN" "$1"
  else
    mvisp "debian" "$1"
  fi
}

mvispub(){
  if [ -n "$UBUNTUBOX" ]; then
    mvisp "$UBUNTUBOX" "$1"
  else
    mvisp "ubuntubox" "$1"
  fi
}

mvispdb(){
  if [ -n "$DEBIANBOX" ]; then
    mvisp "$DEBIANBOX" "$1"
  else
    mvisp "debianbox" "$1"
  fi
}

mviept(){
  if [ -n "$TERMUX" ]; then
    mviep "$TERMUX" "$1"
  else
    mviep "termux" "$1"
  fi
}

mviepu(){
  if [ -n "$UBUNTU" ]; then
    mviep "$UBUNTU" "$1"
  else
    mviep "ubuntu" "$1"
  fi
}

mviepd(){
  if [ -n "$DEBIAN" ]; then
    mviep "$DEBIAN" "$1"
  else
    mviep "debian" "$1"
  fi
}

mviepub(){
  if [ -n "$UBUNTUBOX" ]; then
    mviep "$UBUNTUBOX" "$1"
  else
    mviep "ubuntubox" "$1"
  fi
}

mviepdb(){
  if [ -n "$DEBIANBOX" ]; then
    mviep "$DEBIANBOX" "$1"
  else
    mviep "debianbox" "$1"
  fi
}

mvopt(){
  if [ -n "$TERMUX" ]; then
    mvop "$TERMUX" "$1"
  else
    mvop "termux" "$1"
  fi
}

mvopu(){
  if [ -n "$UBUNTU" ]; then
    mvop "$UBUNTU" "$1"
  else
    mvop "ubuntu" "$1"
  fi
}

mvopd(){
  if [ -n "$DEBIAN" ]; then
    mvop "$DEBIAN" "$1"
  else
    mvop "debian" "$1"
  fi
}

mvopub(){
  if [ -n "$UBUNTUBOX" ]; then
    mvop "$UBUNTUBOX" "$1"
  else
    mvop "ubuntubox" "$1"
  fi
}

mvopdb(){
  if [ -n "$DEBIANBOX" ]; then
    mvop "$DEBIANBOX" "$1"
  else
    mvop "debianbox" "$1"
  fi
}

mvodpt(){
  if [ -n "$TERMUX" ]; then
    mvodp "$TERMUX" "$1"
  else
    mvodp "termux" "$1"
  fi
}

mvodpu(){
  if [ -n "$UBUNTU" ]; then
    mvodp "$UBUNTU" "$1"
  else
    mvodp "ubuntu" "$1"
  fi
}

mvodpd(){
  if [ -n "$DEBIAN" ]; then
    mvodp "$DEBIAN" "$1"
  else
    mvodp "debian" "$1"
  fi
}

mvodpub(){
  if [ -n "$UBUNTUBOX" ]; then
    mvodp "$UBUNTUBOX" "$1"
  else
    mvodp "ubuntubox" "$1"
  fi
}

mvodpdb(){
  if [ -n "$DEBIANBOX" ]; then
    mvodp "$DEBIANBOX" "$1"
  else
    mvodp "debianbox" "$1"
  fi
}

mvospt(){
  if [ -n "$TERMUX" ]; then
    mvosp "$TERMUX" "$1"
  else
    mvosp "termux" "$1"
  fi
}

mvospu(){
  if [ -n "$UBUNTU" ]; then
    mvosp "$UBUNTU" "$1"
  else
    mvosp "ubuntu" "$1"
  fi
}

mvospd(){
  if [ -n "$DEBIAN" ]; then
    mvosp "$DEBIAN" "$1"
  else
    mvosp "debian" "$1"
  fi
}

mvospub(){
  if [ -n "$UBUNTUBOX" ]; then
    mvosp "$UBUNTUBOX" "$1"
  else
    mvosp "ubuntubox" "$1"
  fi
}

mvospdb(){
  if [ -n "$DEBIANBOX" ]; then
    mvosp "$DEBIANBOX" "$1"
  else
    mvosp "debianbox" "$1"
  fi
}

mvoept(){
  if [ -n "$TERMUX" ]; then
    mvoep "$TERMUX" "$1"
  else
    mvoep "termux" "$1"
  fi
}

mvoepu(){
  if [ -n "$UBUNTU" ]; then
    mvoep "$UBUNTU" "$1"
  else
    mvoep "ubuntu" "$1"
  fi
}

mvoepd(){
  if [ -n "$DEBIAN" ]; then
    mvoep "$DEBIAN" "$1"
  else
    mvoep "debian" "$1"
  fi
}

mvoepub(){
  if [ -n "$UBUNTUBOX" ]; then
    mvoep "$UBUNTUBOX" "$1"
  else
    mvoep "ubuntubox" "$1"
  fi
}

mvoepdb(){
  if [ -n "$DEBIANBOX" ]; then
    mvoep "$DEBIANBOX" "$1"
  else
    mvoep "debianbox" "$1"
  fi
}

cpipt(){
  if [ -n "$TERMUX" ]; then
    cpip "$TERMUX" "$1"
  else
    cpip "termux" "$1"
  fi
}

cpipu(){
  if [ -n "$UBUNTU" ]; then
    cpip "$UBUNTU" "$1"
  else
    cpip "ubuntu" "$1"
  fi
}

cpipd(){
  if [ -n "$DEBIAN" ]; then
    cpip "$DEBIAN" "$1"
  else
    cpip "debian" "$1"
  fi
}

cpipub(){
  if [ -n "$UBUNTUBOX" ]; then
    cpip "$UBUNTUBOX" "$1"
  else
    cpip "ubuntubox" "$1"
  fi
}

cpipdb(){
  if [ -n "$DEBIANBOX" ]; then
    cpip "$DEBIANBOX" "$1"
  else
    cpip "debianbox" "$1"
  fi
}

cpidpt(){
  if [ -n "$TERMUX" ]; then
    cpidp "$TERMUX" "$1"
  else
    cpidp "termux" "$1"
  fi
}

cpidpu(){
  if [ -n "$UBUNTU" ]; then
    cpidp "$UBUNTU" "$1"
  else
    cpidp "ubuntu" "$1"
  fi
}

cpidpd(){
  if [ -n "$DEBIAN" ]; then
    cpidp "$DEBIAN" "$1"
  else
    cpidp "debian" "$1"
  fi
}

cpidpub(){
  if [ -n "$UBUNTUBOX" ]; then
    cpidp "$UBUNTUBOX" "$1"
  else
    cpidp "ubuntubox" "$1"
  fi
}

cpidpdb(){
  if [ -n "$DEBIANBOX" ]; then
    cpidp "$DEBIANBOX" "$1"
  else
    cpidp "debianbox" "$1"
  fi
}

cpispt(){
  if [ -n "$TERMUX" ]; then
    cpisp "$TERMUX" "$1"
  else
    cpisp "termux" "$1"
  fi
}

cpispu(){
  if [ -n "$UBUNTU" ]; then
    cpisp "$UBUNTU" "$1"
  else
    cpisp "ubuntu" "$1"
  fi
}

cpispd(){
  if [ -n "$DEBIAN" ]; then
    cpisp "$DEBIAN" "$1"
  else
    cpisp "debian" "$1"
  fi
}

cpispub(){
  if [ -n "$UBUNTUBOX" ]; then
    cpisp "$UBUNTUBOX" "$1"
  else
    cpisp "ubuntubox" "$1"
  fi
}

cpispdb(){
  if [ -n "$DEBIANBOX" ]; then
    cpisp "$DEBIANBOX" "$1"
  else
    cpisp "debianbox" "$1"
  fi
}

cpiept(){
  if [ -n "$TERMUX" ]; then
    cpiep "$TERMUX" "$1"
  else
    cpiep "termux" "$1"
  fi
}

cpiepu(){
  if [ -n "$UBUNTU" ]; then
    cpiep "$UBUNTU" "$1"
  else
    cpiep "ubuntu" "$1"
  fi
}

cpiepd(){
  if [ -n "$DEBIAN" ]; then
    cpiep "$DEBIAN" "$1"
  else
    cpiep "debian" "$1"
  fi
}

cpiepub(){
  if [ -n "$UBUNTUBOX" ]; then
    cpiep "$UBUNTUBOX" "$1"
  else
    cpiep "ubuntubox" "$1"
  fi
}

cpiepdb(){
  if [ -n "$DEBIANBOX" ]; then
    cpiep "$DEBIANBOX" "$1"
  else
    cpiep "debianbox" "$1"
  fi
}

cpopt(){
  if [ -n "$TERMUX" ]; then
    cpop "$TERMUX" "$1"
  else
    cpop "termux" "$1"
  fi
}

cpopu(){
  if [ -n "$UBUNTU" ]; then
    cpop "$UBUNTU" "$1"
  else
    cpop "ubuntu" "$1"
  fi
}

cpopd(){
  if [ -n "$DEBIAN" ]; then
    cpop "$DEBIAN" "$1"
  else
    cpop "debian" "$1"
  fi
}

cpopub(){
  if [ -n "$UBUNTUBOX" ]; then
    cpop "$UBUNTUBOX" "$1"
  else
    cpop "ubuntubox" "$1"
  fi
}

cpopdb(){
  if [ -n "$DEBIANBOX" ]; then
    cpop "$DEBIANBOX" "$1"
  else
    cpop "debianbox" "$1"
  fi
}

cpodpt(){
  if [ -n "$TERMUX" ]; then
    cpodp "$TERMUX" "$1"
  else
    cpodp "termux" "$1"
  fi
}

cpodpu(){
  if [ -n "$UBUNTU" ]; then
    cpodp "$UBUNTU" "$1"
  else
    cpodp "ubuntu" "$1"
  fi
}

cpodpd(){
  if [ -n "$DEBIAN" ]; then
    cpodp "$DEBIAN" "$1"
  else
    cpodp "debian" "$1"
  fi
}

cpodpub(){
  if [ -n "$UBUNTUBOX" ]; then
    cpodp "$UBUNTUBOX" "$1"
  else
    cpodp "ubuntubox" "$1"
  fi
}

cpodpdb(){
  if [ -n "$DEBIANBOX" ]; then
    cpodp "$DEBIANBOX" "$1"
  else
    cpodp "debianbox" "$1"
  fi
}

cpospt(){
  if [ -n "$TERMUX" ]; then
    cposp "$TERMUX" "$1"
  else
    cposp "termux" "$1"
  fi
}

cpospu(){
  if [ -n "$UBUNTU" ]; then
    cposp "$UBUNTU" "$1"
  else
    cposp "ubuntu" "$1"
  fi
}

cpospd(){
  if [ -n "$DEBIAN" ]; then
    cposp "$DEBIAN" "$1"
  else
    cposp "debian" "$1"
  fi
}

cpospub(){
  if [ -n "$UBUNTUBOX" ]; then
    cposp "$UBUNTUBOX" "$1"
  else
    cposp "ubuntubox" "$1"
  fi
}

cpospdb(){
  if [ -n "$DEBIANBOX" ]; then
    cposp "$DEBIANBOX" "$1"
  else
    cposp "debianbox" "$1"
  fi
}

cpoept(){
  if [ -n "$TERMUX" ]; then
    cpoep "$TERMUX" "$1"
  else
    cpoep "termux" "$1"
  fi
}

cpoepu(){
  if [ -n "$UBUNTU" ]; then
    cpoep "$UBUNTU" "$1"
  else
    cpoep "ubuntu" "$1"
  fi
}

cpoepd(){
  if [ -n "$DEBIAN" ]; then
    cpoep "$DEBIAN" "$1"
  else
    cpoep "debian" "$1"
  fi
}

cpoepub(){
  if [ -n "$UBUNTUBOX" ]; then
    cpoep "$UBUNTUBOX" "$1"
  else
    cpoep "ubuntubox" "$1"
  fi
}

cpoepdb(){
  if [ -n "$DEBIANBOX" ]; then
    cpoep "$DEBIANBOX" "$1"
  else
    cpoep "debianbox" "$1"
  fi
}

cpript(){
  if [ -n "$TERMUX" ]; then
    cprip "$TERMUX" "$1"
  else
    cprip "termux" "$1"
  fi
}

cpripu(){
  if [ -n "$UBUNTU" ]; then
    cprip "$UBUNTU" "$1"
  else
    cprip "ubuntu" "$1"
  fi
}

cpripd(){
  if [ -n "$DEBIAN" ]; then
    cprip "$DEBIAN" "$1"
  else
    cprip "debian" "$1"
  fi
}

cpripub(){
  if [ -n "$UBUNTUBOX" ]; then
    cprip "$UBUNTUBOX" "$1"
  else
    cprip "ubuntubox" "$1"
  fi
}

cpripdb(){
  if [ -n "$DEBIANBOX" ]; then
    cprip "$DEBIANBOX" "$1"
  else
    cprip "debianbox" "$1"
  fi
}

cpridpt(){
  if [ -n "$TERMUX" ]; then
    cpridp "$TERMUX" "$1"
  else
    cpridp "termux" "$1"
  fi
}

cpridpu(){
  if [ -n "$UBUNTU" ]; then
    cpridp "$UBUNTU" "$1"
  else
    cpridp "ubuntu" "$1"
  fi
}

cpridpd(){
  if [ -n "$DEBIAN" ]; then
    cpridp "$DEBIAN" "$1"
  else
    cpridp "debian" "$1"
  fi
}

cpridpub(){
  if [ -n "$UBUNTUBOX" ]; then
    cpridp "$UBUNTUBOX" "$1"
  else
    cpridp "ubuntubox" "$1"
  fi
}

cpridpdb(){
  if [ -n "$DEBIANBOX" ]; then
    cpridp "$DEBIANBOX" "$1"
  else
    cpridp "debianbox" "$1"
  fi
}

cprispt(){
  if [ -n "$TERMUX" ]; then
    cprisp "$TERMUX" "$1"
  else
    cprisp "termux" "$1"
  fi
}

cprispu(){
  if [ -n "$UBUNTU" ]; then
    cprisp "$UBUNTU" "$1"
  else
    cprisp "ubuntu" "$1"
  fi
}

cprispd(){
  if [ -n "$DEBIAN" ]; then
    cprisp "$DEBIAN" "$1"
  else
    cprisp "debian" "$1"
  fi
}

cprispub(){
  if [ -n "$UBUNTUBOX" ]; then
    cprisp "$UBUNTUBOX" "$1"
  else
    cprisp "ubuntubox" "$1"
  fi
}

cprispdb(){
  if [ -n "$DEBIANBOX" ]; then
    cprisp "$DEBIANBOX" "$1"
  else
    cprisp "debianbox" "$1"
  fi
}

cpriept(){
  if [ -n "$TERMUX" ]; then
    cpriep "$TERMUX" "$1"
  else
    cpriep "termux" "$1"
  fi
}

cpriepu(){
  if [ -n "$UBUNTU" ]; then
    cpriep "$UBUNTU" "$1"
  else
    cpriep "ubuntu" "$1"
  fi
}

cpriepd(){
  if [ -n "$DEBIAN" ]; then
    cpriep "$DEBIAN" "$1"
  else
    cpriep "debian" "$1"
  fi
}

cpriepub(){
  if [ -n "$UBUNTUBOX" ]; then
    cpriep "$UBUNTUBOX" "$1"
  else
    cpriep "ubuntubox" "$1"
  fi
}

cpriepdb(){
  if [ -n "$DEBIANBOX" ]; then
    cpriep "$DEBIANBOX" "$1"
  else
    cpriep "debianbox" "$1"
  fi
}

cpropt(){
  if [ -n "$TERMUX" ]; then
    cprop "$TERMUX" "$1"
  else
    cprop "termux" "$1"
  fi
}

cpropu(){
  if [ -n "$UBUNTU" ]; then
    cprop "$UBUNTU" "$1"
  else
    cprop "ubuntu" "$1"
  fi
}

cpropd(){
  if [ -n "$DEBIAN" ]; then
    cprop "$DEBIAN" "$1"
  else
    cprop "debian" "$1"
  fi
}

cpropub(){
  if [ -n "$UBUNTUBOX" ]; then
    cprop "$UBUNTUBOX" "$1"
  else
    cprop "ubuntubox" "$1"
  fi
}

cpropdb(){
  if [ -n "$DEBIANBOX" ]; then
    cprop "$DEBIANBOX" "$1"
  else
    cprop "debianbox" "$1"
  fi
}

cprodpt(){
  if [ -n "$TERMUX" ]; then
    cprodp "$TERMUX" "$1"
  else
    cprodp "termux" "$1"
  fi
}

cprodpu(){
  if [ -n "$UBUNTU" ]; then
    cprodp "$UBUNTU" "$1"
  else
    cprodp "ubuntu" "$1"
  fi
}

cprodpd(){
  if [ -n "$DEBIAN" ]; then
    cprodp "$DEBIAN" "$1"
  else
    cprodp "debian" "$1"
  fi
}

cprodpub(){
  if [ -n "$UBUNTUBOX" ]; then
    cprodp "$UBUNTUBOX" "$1"
  else
    cprodp "ubuntubox" "$1"
  fi
}

cprodpdb(){
  if [ -n "$DEBIANBOX" ]; then
    cprodp "$DEBIANBOX" "$1"
  else
    cprodp "debianbox" "$1"
  fi
}

cprospt(){
  if [ -n "$TERMUX" ]; then
    cprosp "$TERMUX" "$1"
  else
    cprosp "termux" "$1"
  fi
}

cprospu(){
  if [ -n "$UBUNTU" ]; then
    cprosp "$UBUNTU" "$1"
  else
    cprosp "ubuntu" "$1"
  fi
}

cprospd(){
  if [ -n "$DEBIAN" ]; then
    cprosp "$DEBIAN" "$1"
  else
    cprosp "debian" "$1"
  fi
}

cprospub(){
  if [ -n "$UBUNTUBOX" ]; then
    cprosp "$UBUNTUBOX" "$1"
  else
    cprosp "ubuntubox" "$1"
  fi
}

cprospdb(){
  if [ -n "$DEBIANBOX" ]; then
    cprosp "$DEBIANBOX" "$1"
  else
    cprosp "debianbox" "$1"
  fi
}

cproept(){
  if [ -n "$TERMUX" ]; then
    cproep "$TERMUX" "$1"
  else
    cproep "termux" "$1"
  fi
}

cproepu(){
  if [ -n "$UBUNTU" ]; then
    cproep "$UBUNTU" "$1"
  else
    cproep "ubuntu" "$1"
  fi
}

cproepd(){
  if [ -n "$DEBIAN" ]; then
    cproep "$DEBIAN" "$1"
  else
    cproep "debian" "$1"
  fi
}

cproepub(){
  if [ -n "$UBUNTUBOX" ]; then
    cproep "$UBUNTUBOX" "$1"
  else
    cproep "ubuntubox" "$1"
  fi
}

cproepdb(){
  if [ -n "$DEBIANBOX" ]; then
    cproep "$DEBIANBOX" "$1"
  else
    cproep "debianbox" "$1"
  fi
}

mvaipt(){
  if [ -n "$TERMUX" ]; then
    mvaip "$TERMUX" "$1"
  else
    mvaip "termux" "$1"
  fi
}

mvaipu(){
  if [ -n "$UBUNTU" ]; then
    mvaip "$UBUNTU" "$1"
  else
    mvaip "ubuntu" "$1"
  fi
}

mvaipd(){
  if [ -n "$DEBIAN" ]; then
    mvaip "$DEBIAN" "$1"
  else
    mvaip "debian" "$1"
  fi
}

mvaipub(){
  if [ -n "$UBUNTUBOX" ]; then
    mvaip "$UBUNTUBOX" "$1"
  else
    mvaip "ubuntubox" "$1"
  fi
}

mvaipdb(){
  if [ -n "$DEBIANBOX" ]; then
    mvaip "$DEBIANBOX" "$1"
  else
    mvaip "debianbox" "$1"
  fi
}

mvaidpt(){
  if [ -n "$TERMUX" ]; then
    mvaidp "$TERMUX" "$1"
  else
    mvaidp "termux" "$1"
  fi
}

mvaidpu(){
  if [ -n "$UBUNTU" ]; then
    mvaidp "$UBUNTU" "$1"
  else
    mvaidp "ubuntu" "$1"
  fi
}

mvaidpd(){
  if [ -n "$DEBIAN" ]; then
    mvaidp "$DEBIAN" "$1"
  else
    mvaidp "debian" "$1"
  fi
}

mvaidpub(){
  if [ -n "$UBUNTUBOX" ]; then
    mvaidp "$UBUNTUBOX" "$1"
  else
    mvaidp "ubuntubox" "$1"
  fi
}

mvaidpdb(){
  if [ -n "$DEBIANBOX" ]; then
    mvaidp "$DEBIANBOX" "$1"
  else
    mvaidp "debianbox" "$1"
  fi
}

mvaispt(){
  if [ -n "$TERMUX" ]; then
    mvaisp "$TERMUX" "$1"
  else
    mvaisp "termux" "$1"
  fi
}

mvaispu(){
  if [ -n "$UBUNTU" ]; then
    mvaisp "$UBUNTU" "$1"
  else
    mvaisp "ubuntu" "$1"
  fi
}

mvaispd(){
  if [ -n "$DEBIAN" ]; then
    mvaisp "$DEBIAN" "$1"
  else
    mvaisp "debian" "$1"
  fi
}

mvaispub(){
  if [ -n "$UBUNTUBOX" ]; then
    mvaisp "$UBUNTUBOX" "$1"
  else
    mvaisp "ubuntubox" "$1"
  fi
}

mvaispdb(){
  if [ -n "$DEBIANBOX" ]; then
    mvaisp "$DEBIANBOX" "$1"
  else
    mvaisp "debianbox" "$1"
  fi
}

mvaiept(){
  if [ -n "$TERMUX" ]; then
    mvaiep "$TERMUX" "$1"
  else
    mvaiep "termux" "$1"
  fi
}

mvaiepu(){
  if [ -n "$UBUNTU" ]; then
    mvaiep "$UBUNTU" "$1"
  else
    mvaiep "ubuntu" "$1"
  fi
}

mvaiepd(){
  if [ -n "$DEBIAN" ]; then
    mvaiep "$DEBIAN" "$1"
  else
    mvaiep "debian" "$1"
  fi
}

mvaiepub(){
  if [ -n "$UBUNTUBOX" ]; then
    mvaiep "$UBUNTUBOX" "$1"
  else
    mvaiep "ubuntubox" "$1"
  fi
}

mvaiepdb(){
  if [ -n "$DEBIANBOX" ]; then
    mvaiep "$DEBIANBOX" "$1"
  else
    mvaiep "debianbox" "$1"
  fi
}

cpaipt(){
  if [ -n "$TERMUX" ]; then
    cpaip "$TERMUX" "$1"
  else
    cpaip "termux" "$1"
  fi
}

cpaipu(){
  if [ -n "$UBUNTU" ]; then
    cpaip "$UBUNTU" "$1"
  else
    cpaip "ubuntu" "$1"
  fi
}

cpaipd(){
  if [ -n "$DEBIAN" ]; then
    cpaip "$DEBIAN" "$1"
  else
    cpaip "debian" "$1"
  fi
}

cpaipub(){
  if [ -n "$UBUNTUBOX" ]; then
    cpaip "$UBUNTUBOX" "$1"
  else
    cpaip "ubuntubox" "$1"
  fi
}

cpaipdb(){
  if [ -n "$DEBIANBOX" ]; then
    cpaip "$DEBIANBOX" "$1"
  else
    cpaip "debianbox" "$1"
  fi
}

cpaidpt(){
  if [ -n "$TERMUX" ]; then
    cpaidp "$TERMUX" "$1"
  else
    cpaidp "termux" "$1"
  fi
}

cpaidpu(){
  if [ -n "$UBUNTU" ]; then
    cpaidp "$UBUNTU" "$1"
  else
    cpaidp "ubuntu" "$1"
  fi
}

cpaidpd(){
  if [ -n "$DEBIAN" ]; then
    cpaidp "$DEBIAN" "$1"
  else
    cpaidp "debian" "$1"
  fi
}

cpaidpub(){
  if [ -n "$UBUNTUBOX" ]; then
    cpaidp "$UBUNTUBOX" "$1"
  else
    cpaidp "ubuntubox" "$1"
  fi
}

cpaidpdb(){
  if [ -n "$DEBIANBOX" ]; then
    cpaidp "$DEBIANBOX" "$1"
  else
    cpaidp "debianbox" "$1"
  fi
}

cpaispt(){
  if [ -n "$TERMUX" ]; then
    cpaisp "$TERMUX" "$1"
  else
    cpaisp "termux" "$1"
  fi
}

cpaispu(){
  if [ -n "$UBUNTU" ]; then
    cpaisp "$UBUNTU" "$1"
  else
    cpaisp "ubuntu" "$1"
  fi
}

cpaispd(){
  if [ -n "$DEBIAN" ]; then
    cpaisp "$DEBIAN" "$1"
  else
    cpaisp "debian" "$1"
  fi
}

cpaispub(){
  if [ -n "$UBUNTUBOX" ]; then
    cpaisp "$UBUNTUBOX" "$1"
  else
    cpaisp "ubuntubox" "$1"
  fi
}

cpaispdb(){
  if [ -n "$DEBIANBOX" ]; then
    cpaisp "$DEBIANBOX" "$1"
  else
    cpaisp "debianbox" "$1"
  fi
}

cpaiept(){
  if [ -n "$TERMUX" ]; then
    cpaiep "$TERMUX" "$1"
  else
    cpaiep "termux" "$1"
  fi
}

cpaiepu(){
  if [ -n "$UBUNTU" ]; then
    cpaiep "$UBUNTU" "$1"
  else
    cpaiep "ubuntu" "$1"
  fi
}

cpaiepd(){
  if [ -n "$DEBIAN" ]; then
    cpaiep "$DEBIAN" "$1"
  else
    cpaiep "debian" "$1"
  fi
}

cpaiepub(){
  if [ -n "$UBUNTUBOX" ]; then
    cpaiep "$UBUNTUBOX" "$1"
  else
    cpaiep "ubuntubox" "$1"
  fi
}

cpaiepdb(){
  if [ -n "$DEBIANBOX" ]; then
    cpaiep "$DEBIANBOX" "$1"
  else
    cpaiep "debianbox" "$1"
  fi
}

rmppt(){
  if [ -n "$TERMUX" ]; then
    rmpp "$TERMUX" "$1"
  else
    rmpp "termux" "$1"
  fi
}

rmppu(){
  if [ -n "$UBUNTU" ]; then
    rmpp "$UBUNTU" "$1"
  else
    rmpp "ubuntu" "$1"
  fi
}

rmppd(){
  if [ -n "$DEBIAN" ]; then
    rmpp "$DEBIAN" "$1"
  else
    rmpp "debian" "$1"
  fi
}

rmppub(){
  if [ -n "$UBUNTUBOX" ]; then
    rmpp "$UBUNTUBOX" "$1"
  else
    rmpp "ubuntubox" "$1"
  fi
}

rmppdb(){
  if [ -n "$DEBIANBOX" ]; then
    rmpp "$DEBIANBOX" "$1"
  else
    rmpp "debianbox" "$1"
  fi
}

rmrppt(){
  if [ -n "$TERMUX" ]; then
    rmrpp "$TERMUX" "$1"
  else
    rmrpp "termux" "$1"
  fi
}

rmrppu(){
  if [ -n "$UBUNTU" ]; then
    rmrpp "$UBUNTU" "$1"
  else
    rmrpp "ubuntu" "$1"
  fi
}

rmrppd(){
  if [ -n "$DEBIAN" ]; then
    rmrpp "$DEBIAN" "$1"
  else
    rmrpp "debian" "$1"
  fi
}

rmrppub(){
  if [ -n "$UBUNTUBOX" ]; then
    rmrpp "$UBUNTUBOX" "$1"
  else
    rmrpp "ubuntubox" "$1"
  fi
}

rmrppdb(){
  if [ -n "$DEBIANBOX" ]; then
    rmrpp "$DEBIANBOX" "$1"
  else
    rmrpp "debianbox" "$1"
  fi
}

rmrfpt(){
  if [ -n "$TERMUX" ]; then
    rmrfp "$TERMUX" "$1"
  else
    rmrfp "termux" "$1"
  fi
}

rmrfpu(){
  if [ -n "$UBUNTU" ]; then
    rmrfp "$UBUNTU" "$1"
  else
    rmrfp "ubuntu" "$1"
  fi
}

rmrfpd(){
  if [ -n "$DEBIAN" ]; then
    rmrfp "$DEBIAN" "$1"
  else
    rmrfp "debian" "$1"
  fi
}

rmrfpub(){
  if [ -n "$UBUNTUBOX" ]; then
    rmrfp "$UBUNTUBOX" "$1"
  else
    rmrfp "ubuntubox" "$1"
  fi
}

rmrfpdb(){
  if [ -n "$DEBIANBOX" ]; then
    rmrfp "$DEBIANBOX" "$1"
  else
    rmrfp "debianbox" "$1"
  fi
}

mkdirpt(){
  if [ -n "$TERMUX" ]; then
    mkdirp "$TERMUX" "$1"
  else
    mkdirp "termux" "$1"
  fi
}

mkdirpu(){
  if [ -n "$UBUNTU" ]; then
    mkdirp "$UBUNTU" "$1"
  else
    mkdirp "ubuntu" "$1"
  fi
}

mkdirpd(){
  if [ -n "$DEBIAN" ]; then
    mkdirp "$DEBIAN" "$1"
  else
    mkdirp "debian" "$1"
  fi
}

mkdirpub(){
  if [ -n "$UBUNTUBOX" ]; then
    mkdirp "$UBUNTUBOX" "$1"
  else
    mkdirp "ubuntubox" "$1"
  fi
}

mkdirpdb(){
  if [ -n "$DEBIANBOX" ]; then
    mkdirp "$DEBIANBOX" "$1"
  else
    mkdirp "debianbox" "$1"
  fi
}

mkdirppt(){
  if [ -n "$TERMUX" ]; then
    mkdirpp "$TERMUX" "$1"
  else
    mkdirpp "termux" "$1"
  fi
}

mkdirppu(){
  if [ -n "$UBUNTU" ]; then
    mkdirpp "$UBUNTU" "$1"
  else
    mkdirpp "ubuntu" "$1"
  fi
}

mkdirppd(){
  if [ -n "$DEBIAN" ]; then
    mkdirpp "$DEBIAN" "$1"
  else
    mkdirpp "debian" "$1"
  fi
}

mkdirppub(){
  if [ -n "$UBUNTUBOX" ]; then
    mkdirpp "$UBUNTUBOX" "$1"
  else
    mkdirpp "ubuntubox" "$1"
  fi
}

mkdirppdb(){
  if [ -n "$DEBIANBOX" ]; then
    mkdirpp "$DEBIANBOX" "$1"
  else
    mkdirpp "debianbox" "$1"
  fi
}

mvypt(){
  if [ -n "$TERMUX" ]; then
    mvycp "$TERMUX" "$1"
  else
    mvycp "termux" "$1"
  fi
}

mvypu(){
  if [ -n "$UBUNTU" ]; then
    mvycp "$UBUNTU" "$1"
  else
    mvycp "ubuntu" "$1"
  fi
}

mvypd(){
  if [ -n "$DEBIAN" ]; then
    mvycp "$DEBIAN" "$1"
  else
    mvycp "debian" "$1"
  fi
}

mvypub(){
  if [ -n "$UBUNTUBOX" ]; then
    mvycp "$UBUNTUBOX" "$1"
  else
    mvycp "ubuntubox" "$1"
  fi
}

mvypdb(){
  if [ -n "$DEBIANBOX" ]; then
    mvycp "$DEBIANBOX" "$1"
  else
    mvycp "debianbox" "$1"
  fi
}

mvydpt(){
  if [ -n "$TERMUX" ]; then
    mvyhp "$TERMUX" "$1"
  else
    mvyhp "termux" "$1"
  fi
}

mvydpu(){
  if [ -n "$UBUNTU" ]; then
    mvyhp "$UBUNTU" "$1"
  else
    mvyhp "ubuntu" "$1"
  fi
}

mvydpd(){
  if [ -n "$DEBIAN" ]; then
    mvyhp "$DEBIAN" "$1"
  else
    mvyhp "debian" "$1"
  fi
}

mvydpub(){
  if [ -n "$UBUNTUBOX" ]; then
    mvyhp "$UBUNTUBOX" "$1"
  else
    mvyhp "ubuntubox" "$1"
  fi
}

mvydpdb(){
  if [ -n "$DEBIANBOX" ]; then
    mvyhp "$DEBIANBOX" "$1"
  else
    mvyhp "debianbox" "$1"
  fi
}

mvyspt(){
  if [ -n "$TERMUX" ]; then
    mvybp "$TERMUX" "$1"
  else
    mvybp "termux" "$1"
  fi
}

mvyspu(){
  if [ -n "$UBUNTU" ]; then
    mvybp "$UBUNTU" "$1"
  else
    mvybp "ubuntu" "$1"
  fi
}

mvyspd(){
  if [ -n "$DEBIAN" ]; then
    mvybp "$DEBIAN" "$1"
  else
    mvybp "debian" "$1"
  fi
}

mvyspub(){
  if [ -n "$UBUNTUBOX" ]; then
    mvybp "$UBUNTUBOX" "$1"
  else
    mvybp "ubuntubox" "$1"
  fi
}

mvyspdb(){
  if [ -n "$DEBIANBOX" ]; then
    mvybp "$DEBIANBOX" "$1"
  else
    mvybp "debianbox" "$1"
  fi
}

mvupt(){
  if [ -n "$TERMUX" ]; then
    mvucp "$TERMUX" "$1"
  else
    mvucp "termux" "$1"
  fi
}

mvupu(){
  if [ -n "$UBUNTU" ]; then
    mvucp "$UBUNTU" "$1"
  else
    mvucp "ubuntu" "$1"
  fi
}

mvupd(){
  if [ -n "$DEBIAN" ]; then
    mvucp "$DEBIAN" "$1"
  else
    mvucp "debian" "$1"
  fi
}

mvupub(){
  if [ -n "$UBUNTUBOX" ]; then
    mvucp "$UBUNTUBOX" "$1"
  else
    mvucp "ubuntubox" "$1"
  fi
}

mvupdb(){
  if [ -n "$DEBIANBOX" ]; then
    mvucp "$DEBIANBOX" "$1"
  else
    mvucp "debianbox" "$1"
  fi
}

mvudpt(){
  if [ -n "$TERMUX" ]; then
    mvuhp "$TERMUX" "$1"
  else
    mvuhp "termux" "$1"
  fi
}

mvudpu(){
  if [ -n "$UBUNTU" ]; then
    mvuhp "$UBUNTU" "$1"
  else
    mvuhp "ubuntu" "$1"
  fi
}

mvudpd(){
  if [ -n "$DEBIAN" ]; then
    mvuhp "$DEBIAN" "$1"
  else
    mvuhp "debian" "$1"
  fi
}

mvudpub(){
  if [ -n "$UBUNTUBOX" ]; then
    mvuhp "$UBUNTUBOX" "$1"
  else
    mvuhp "ubuntubox" "$1"
  fi
}

mvudpdb(){
  if [ -n "$DEBIANBOX" ]; then
    mvuhp "$DEBIANBOX" "$1"
  else
    mvuhp "debianbox" "$1"
  fi
}

mvuspt(){
  if [ -n "$TERMUX" ]; then
    mvubp "$TERMUX" "$1"
  else
    mvubp "termux" "$1"
  fi
}

mvuspu(){
  if [ -n "$UBUNTU" ]; then
    mvubp "$UBUNTU" "$1"
  else
    mvubp "ubuntu" "$1"
  fi
}

mvuspd(){
  if [ -n "$DEBIAN" ]; then
    mvubp "$DEBIAN" "$1"
  else
    mvubp "debian" "$1"
  fi
}

mvuspub(){
  if [ -n "$UBUNTUBOX" ]; then
    mvubp "$UBUNTUBOX" "$1"
  else
    mvubp "ubuntubox" "$1"
  fi
}

mvuspdb(){
  if [ -n "$DEBIANBOX" ]; then
    mvubp "$DEBIANBOX" "$1"
  else
    mvubp "debianbox" "$1"
  fi
}

cpypt(){
  if [ -n "$TERMUX" ]; then
    cpycp "$TERMUX" "$1"
  else
    cpycp "termux" "$1"
  fi
}

cpypu(){
  if [ -n "$UBUNTU" ]; then
    cpycp "$UBUNTU" "$1"
  else
    cpycp "ubuntu" "$1"
  fi
}

cpypd(){
  if [ -n "$DEBIAN" ]; then
    cpycp "$DEBIAN" "$1"
  else
    cpycp "debian" "$1"
  fi
}

cpypub(){
  if [ -n "$UBUNTUBOX" ]; then
    cpycp "$UBUNTUBOX" "$1"
  else
    cpycp "ubuntubox" "$1"
  fi
}

cpypdb(){
  if [ -n "$DEBIANBOX" ]; then
    cpycp "$DEBIANBOX" "$1"
  else
    cpycp "debianbox" "$1"
  fi
}

cpydpt(){
  if [ -n "$TERMUX" ]; then
    cpyhp "$TERMUX" "$1"
  else
    cpyhp "termux" "$1"
  fi
}

cpydpu(){
  if [ -n "$UBUNTU" ]; then
    cpyhp "$UBUNTU" "$1"
  else
    cpyhp "ubuntu" "$1"
  fi
}

cpydpd(){
  if [ -n "$DEBIAN" ]; then
    cpyhp "$DEBIAN" "$1"
  else
    cpyhp "debian" "$1"
  fi
}

cpydpub(){
  if [ -n "$UBUNTUBOX" ]; then
    cpyhp "$UBUNTUBOX" "$1"
  else
    cpyhp "ubuntubox" "$1"
  fi
}

cpydpdb(){
  if [ -n "$DEBIANBOX" ]; then
    cpyhp "$DEBIANBOX" "$1"
  else
    cpyhp "debianbox" "$1"
  fi
}

cpyspt(){
  if [ -n "$TERMUX" ]; then
    cpybp "$TERMUX" "$1"
  else
    cpybp "termux" "$1"
  fi
}

cpyspu(){
  if [ -n "$UBUNTU" ]; then
    cpybp "$UBUNTU" "$1"
  else
    cpybp "ubuntu" "$1"
  fi
}

cpyspd(){
  if [ -n "$DEBIAN" ]; then
    cpybp "$DEBIAN" "$1"
  else
    cpybp "debian" "$1"
  fi
}

cpyspub(){
  if [ -n "$UBUNTUBOX" ]; then
    cpybp "$UBUNTUBOX" "$1"
  else
    cpybp "ubuntubox" "$1"
  fi
}

cpyspdb(){
  if [ -n "$DEBIANBOX" ]; then
    cpybp "$DEBIANBOX" "$1"
  else
    cpybp "debianbox" "$1"
  fi
}

cpupt(){
  if [ -n "$TERMUX" ]; then
    cpucp "$TERMUX" "$1"
  else
    cpucp "termux" "$1"
  fi
}

cpupu(){
  if [ -n "$UBUNTU" ]; then
    cpucp "$UBUNTU" "$1"
  else
    cpucp "ubuntu" "$1"
  fi
}

cpupd(){
  if [ -n "$DEBIAN" ]; then
    cpucp "$DEBIAN" "$1"
  else
    cpucp "debian" "$1"
  fi
}

cpupub(){
  if [ -n "$UBUNTUBOX" ]; then
    cpucp "$UBUNTUBOX" "$1"
  else
    cpucp "ubuntubox" "$1"
  fi
}

cpupdb(){
  if [ -n "$DEBIANBOX" ]; then
    cpucp "$DEBIANBOX" "$1"
  else
    cpucp "debianbox" "$1"
  fi
}

cpudpt(){
  if [ -n "$TERMUX" ]; then
    cpuhp "$TERMUX" "$1"
  else
    cpuhp "termux" "$1"
  fi
}

cpudpu(){
  if [ -n "$UBUNTU" ]; then
    cpuhp "$UBUNTU" "$1"
  else
    cpuhp "ubuntu" "$1"
  fi
}

cpudpd(){
  if [ -n "$DEBIAN" ]; then
    cpuhp "$DEBIAN" "$1"
  else
    cpuhp "debian" "$1"
  fi
}

cpudpub(){
  if [ -n "$UBUNTUBOX" ]; then
    cpuhp "$UBUNTUBOX" "$1"
  else
    cpuhp "ubuntubox" "$1"
  fi
}

cpudpdb(){
  if [ -n "$DEBIANBOX" ]; then
    cpuhp "$DEBIANBOX" "$1"
  else
    cpuhp "debianbox" "$1"
  fi
}

cpuspt(){
  if [ -n "$TERMUX" ]; then
    cpubp "$TERMUX" "$1"
  else
    cpubp "termux" "$1"
  fi
}

cpuspu(){
  if [ -n "$UBUNTU" ]; then
    cpubp "$UBUNTU" "$1"
  else
    cpubp "ubuntu" "$1"
  fi
}

cpuspd(){
  if [ -n "$DEBIAN" ]; then
    cpubp "$DEBIAN" "$1"
  else
    cpubp "debian" "$1"
  fi
}

cpuspub(){
  if [ -n "$UBUNTUBOX" ]; then
    cpubp "$UBUNTUBOX" "$1"
  else
    cpubp "ubuntubox" "$1"
  fi
}

cpuspdb(){
  if [ -n "$DEBIANBOX" ]; then
    cpubp "$DEBIANBOX" "$1"
  else
    cpubp "debianbox" "$1"
  fi
}

cprypt(){
  if [ -n "$TERMUX" ]; then
    cprycp "$TERMUX" "$1"
  else
    cprycp "termux" "$1"
  fi
}

cprypu(){
  if [ -n "$UBUNTU" ]; then
    cprycp "$UBUNTU" "$1"
  else
    cprycp "ubuntu" "$1"
  fi
}

cprypd(){
  if [ -n "$DEBIAN" ]; then
    cprycp "$DEBIAN" "$1"
  else
    cprycp "debian" "$1"
  fi
}

cprypub(){
  if [ -n "$UBUNTUBOX" ]; then
    cprycp "$UBUNTUBOX" "$1"
  else
    cprycp "ubuntubox" "$1"
  fi
}

cprypdb(){
  if [ -n "$DEBIANBOX" ]; then
    cprycp "$DEBIANBOX" "$1"
  else
    cprycp "debianbox" "$1"
  fi
}

cprydpt(){
  if [ -n "$TERMUX" ]; then
    cpryhp "$TERMUX" "$1"
  else
    cpryhp "termux" "$1"
  fi
}

cprydpu(){
  if [ -n "$UBUNTU" ]; then
    cpryhp "$UBUNTU" "$1"
  else
    cpryhp "ubuntu" "$1"
  fi
}

cprydpd(){
  if [ -n "$DEBIAN" ]; then
    cpryhp "$DEBIAN" "$1"
  else
    cpryhp "debian" "$1"
  fi
}

cprydpub(){
  if [ -n "$UBUNTUBOX" ]; then
    cpryhp "$UBUNTUBOX" "$1"
  else
    cpryhp "ubuntubox" "$1"
  fi
}

cprydpdb(){
  if [ -n "$DEBIANBOX" ]; then
    cpryhp "$DEBIANBOX" "$1"
  else
    cpryhp "debianbox" "$1"
  fi
}

cpryspt(){
  if [ -n "$TERMUX" ]; then
    cprybp "$TERMUX" "$1"
  else
    cprybp "termux" "$1"
  fi
}

cpryspu(){
  if [ -n "$UBUNTU" ]; then
    cprybp "$UBUNTU" "$1"
  else
    cprybp "ubuntu" "$1"
  fi
}

cpryspd(){
  if [ -n "$DEBIAN" ]; then
    cprybp "$DEBIAN" "$1"
  else
    cprybp "debian" "$1"
  fi
}

cpryspub(){
  if [ -n "$UBUNTUBOX" ]; then
    cprybp "$UBUNTUBOX" "$1"
  else
    cprybp "ubuntubox" "$1"
  fi
}

cpryspdb(){
  if [ -n "$DEBIANBOX" ]; then
    cprybp "$DEBIANBOX" "$1"
  else
    cprybp "debianbox" "$1"
  fi
}

cprupt(){
  if [ -n "$TERMUX" ]; then
    cprucp "$TERMUX" "$1"
  else
    cprucp "termux" "$1"
  fi
}

cprupu(){
  if [ -n "$UBUNTU" ]; then
    cprucp "$UBUNTU" "$1"
  else
    cprucp "ubuntu" "$1"
  fi
}

cprupd(){
  if [ -n "$DEBIAN" ]; then
    cprucp "$DEBIAN" "$1"
  else
    cprucp "debian" "$1"
  fi
}

cprupub(){
  if [ -n "$UBUNTUBOX" ]; then
    cprucp "$UBUNTUBOX" "$1"
  else
    cprucp "ubuntubox" "$1"
  fi
}

cprupdb(){
  if [ -n "$DEBIANBOX" ]; then
    cprucp "$DEBIANBOX" "$1"
  else
    cprucp "debianbox" "$1"
  fi
}

cprudpt(){
  if [ -n "$TERMUX" ]; then
    cpruhp "$TERMUX" "$1"
  else
    cpruhp "termux" "$1"
  fi
}

cprudpu(){
  if [ -n "$UBUNTU" ]; then
    cpruhp "$UBUNTU" "$1"
  else
    cpruhp "ubuntu" "$1"
  fi
}

cprudpd(){
  if [ -n "$DEBIAN" ]; then
    cpruhp "$DEBIAN" "$1"
  else
    cpruhp "debian" "$1"
  fi
}

cprudpub(){
  if [ -n "$UBUNTUBOX" ]; then
    cpruhp "$UBUNTUBOX" "$1"
  else
    cpruhp "ubuntubox" "$1"
  fi
}

cprudpdb(){
  if [ -n "$DEBIANBOX" ]; then
    cpruhp "$DEBIANBOX" "$1"
  else
    cpruhp "debianbox" "$1"
  fi
}

cpruspt(){
  if [ -n "$TERMUX" ]; then
    cprubp "$TERMUX" "$1"
  else
    cprubp "termux" "$1"
  fi
}

cpruspu(){
  if [ -n "$UBUNTU" ]; then
    cprubp "$UBUNTU" "$1"
  else
    cprubp "ubuntu" "$1"
  fi
}

cpruspd(){
  if [ -n "$DEBIAN" ]; then
    cprubp "$DEBIAN" "$1"
  else
    cprubp "debian" "$1"
  fi
}

cpruspub(){
  if [ -n "$UBUNTUBOX" ]; then
    cprubp "$UBUNTUBOX" "$1"
  else
    cprubp "ubuntubox" "$1"
  fi
}

cpruspdb(){
  if [ -n "$DEBIANBOX" ]; then
    cprubp "$DEBIANBOX" "$1"
  else
    cprubp "debianbox" "$1"
  fi
}

mvaypt(){
  if [ -n "$TERMUX" ]; then
    mvaycp "$TERMUX" "$1"
  else
    mvaycp "termux" "$1"
  fi
}

mvaypu(){
  if [ -n "$UBUNTU" ]; then
    mvaycp "$UBUNTU" "$1"
  else
    mvaycp "ubuntu" "$1"
  fi
}

mvaypd(){
  if [ -n "$DEBIAN" ]; then
    mvaycp "$DEBIAN" "$1"
  else
    mvaycp "debian" "$1"
  fi
}

mvaypub(){
  if [ -n "$UBUNTUBOX" ]; then
    mvaycp "$UBUNTUBOX" "$1"
  else
    mvaycp "ubuntubox" "$1"
  fi
}

mvaypdb(){
  if [ -n "$DEBIANBOX" ]; then
    mvaycp "$DEBIANBOX" "$1"
  else
    mvaycp "debianbox" "$1"
  fi
}

mvaydpt(){
  if [ -n "$TERMUX" ]; then
    mvayhp "$TERMUX" "$1"
  else
    mvayhp "termux" "$1"
  fi
}

mvaydpu(){
  if [ -n "$UBUNTU" ]; then
    mvayhp "$UBUNTU" "$1"
  else
    mvayhp "ubuntu" "$1"
  fi
}

mvaydpd(){
  if [ -n "$DEBIAN" ]; then
    mvayhp "$DEBIAN" "$1"
  else
    mvayhp "debian" "$1"
  fi
}

mvaydpub(){
  if [ -n "$UBUNTUBOX" ]; then
    mvayhp "$UBUNTUBOX" "$1"
  else
    mvayhp "ubuntubox" "$1"
  fi
}

mvaydpdb(){
  if [ -n "$DEBIANBOX" ]; then
    mvayhp "$DEBIANBOX" "$1"
  else
    mvayhp "debianbox" "$1"
  fi
}

mvayspt(){
  if [ -n "$TERMUX" ]; then
    mvaybp "$TERMUX" "$1"
  else
    mvaybp "termux" "$1"
  fi
}

mvayspu(){
  if [ -n "$UBUNTU" ]; then
    mvaybp "$UBUNTU" "$1"
  else
    mvaybp "ubuntu" "$1"
  fi
}

mvayspd(){
  if [ -n "$DEBIAN" ]; then
    mvaybp "$DEBIAN" "$1"
  else
    mvaybp "debian" "$1"
  fi
}

mvayspub(){
  if [ -n "$UBUNTUBOX" ]; then
    mvaybp "$UBUNTUBOX" "$1"
  else
    mvaybp "ubuntubox" "$1"
  fi
}

mvayspdb(){
  if [ -n "$DEBIANBOX" ]; then
    mvaybp "$DEBIANBOX" "$1"
  else
    mvaybp "debianbox" "$1"
  fi
}

cpaypt(){
  if [ -n "$TERMUX" ]; then
    cpaycp "$TERMUX" "$1"
  else
    cpaycp "termux" "$1"
  fi
}

cpaypu(){
  if [ -n "$UBUNTU" ]; then
    cpaycp "$UBUNTU" "$1"
  else
    cpaycp "ubuntu" "$1"
  fi
}

cpaypd(){
  if [ -n "$DEBIAN" ]; then
    cpaycp "$DEBIAN" "$1"
  else
    cpaycp "debian" "$1"
  fi
}

cpaypub(){
  if [ -n "$UBUNTUBOX" ]; then
    cpaycp "$UBUNTUBOX" "$1"
  else
    cpaycp "ubuntubox" "$1"
  fi
}

cpaypdb(){
  if [ -n "$DEBIANBOX" ]; then
    cpaycp "$DEBIANBOX" "$1"
  else
    cpaycp "debianbox" "$1"
  fi
}

cpaydpt(){
  if [ -n "$TERMUX" ]; then
    cpayhp "$TERMUX" "$1"
  else
    cpayhp "termux" "$1"
  fi
}

cpaydpu(){
  if [ -n "$UBUNTU" ]; then
    cpayhp "$UBUNTU" "$1"
  else
    cpayhp "ubuntu" "$1"
  fi
}

cpaydpd(){
  if [ -n "$DEBIAN" ]; then
    cpayhp "$DEBIAN" "$1"
  else
    cpayhp "debian" "$1"
  fi
}

cpaydpub(){
  if [ -n "$UBUNTUBOX" ]; then
    cpayhp "$UBUNTUBOX" "$1"
  else
    cpayhp "ubuntubox" "$1"
  fi
}

cpaydpdb(){
  if [ -n "$DEBIANBOX" ]; then
    cpayhp "$DEBIANBOX" "$1"
  else
    cpayhp "debianbox" "$1"
  fi
}

cpayspt(){
  if [ -n "$TERMUX" ]; then
    cpaybp "$TERMUX" "$1"
  else
    cpaybp "termux" "$1"
  fi
}

cpayspu(){
  if [ -n "$UBUNTU" ]; then
    cpaybp "$UBUNTU" "$1"
  else
    cpaybp "ubuntu" "$1"
  fi
}

cpayspd(){
  if [ -n "$DEBIAN" ]; then
    cpaybp "$DEBIAN" "$1"
  else
    cpaybp "debian" "$1"
  fi
}

cpayspub(){
  if [ -n "$UBUNTUBOX" ]; then
    cpaybp "$UBUNTUBOX" "$1"
  else
    cpaybp "ubuntubox" "$1"
  fi
}

cpayspdb(){
  if [ -n "$DEBIANBOX" ]; then
    cpaybp "$DEBIANBOX" "$1"
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
  mvic "*"
  gacp "$1"
}

cpiagcp() {
  cpric "*"
  gacp "$1"
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
  mvidc "*"
  gacp "$1"
}

cpiadgcp() {
  cpridc "*"
  gacp "$1"
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
  mvisc "*"
  gacp "$1"
}

cpiasgcp() {
  cprisc "*"
  gacp "$1"
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
  mviec "*"
  gacp "$1"
}

cpiaegcp() {
  cpriec "*"
  gacp "$1"
}
