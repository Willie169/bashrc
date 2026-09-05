from pathlib import Path

p = Path(Path(__file__).resolve().parent /
         "32-termux-extra.sh")
p.touch(exist_ok=True)

with open(p, "w", encoding="utf-8") as file:

    file.write(
        "#!/usr/bin/env bash\n# shellcheck disable=2103\n\n")
    file.write(
        r'''[[ "$HOME" != '/data/data/com.termux/files/home' ]] && [[ "${PREFIX:-}" != '/data/data/com.termux/files/usr' ]] && return''' +
        '\n\n')

    def lr(x):
        return range(0, len(x))

    op = ["mv", "cp", "cp -r"]
    opStr = ["mv", "cp", "cpr"]
    aop = ["mv", "cp -r"]
    aopStr = ["mv", "cp"]
    iop = ["mv", "cpr"]
    iopStr = ["mv", "cp"]
    remote = ["$DOW", "$DOC", "$SCR", "$EMU"]
    remoteStr = ["", "d", "s", "e"]
    local = [".", "~", ".."]
    localStr = ["c", "h", "b"]
    tlocal = [
        "\"$1\"",
        "\"$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root\""]
    tlocalStr = ["r", "p"]
    pop = [
        "mvi",
        "mvo",
        "cpi",
        "cpo",
        "cpri",
        "cpro",
        "mvia",
        "cpia",
        "mvai",
        "cpai"]
    pup = [
        "mvy",
        "mvu",
        "cpy",
        "cpu",
        "cpry",
        "cpru",
        "mvya",
        "cpya",
        "mvay",
        "cpay"]
    npop = ["rm", "rmr", "rmrf", "mkdir", "mkdirp"]
    proot = ["termux", "ubuntu", "debian", "ubuntubox", "debianbox"]
    prootStr = ["t", "u", "d", "ub", "db"]

    for i in lr(op):
        for j in lr(remote):
            for k in lr(local):
                file.write(
                    opStr[i] +
                    "i" +
                    remoteStr[j] +
                    localStr[k] +
                    "() {\n  for f in \"$@\"; do\n    " +
                    op[i] +
                    " -- \"" +
                    remote[j] +
                    "\"/\"$f\" " +
                    local[k] +
                    "/\n  done\n}\n\n")
                file.write(
                    opStr[i] +
                    "o" +
                    remoteStr[j] +
                    localStr[k] +
                    "() {\n  for f in \"$@\"; do\n    " +
                    op[i] +
                    " -- " +
                    local[k] +
                    "/\"$f\" \"" +
                    remote[j] +
                    "\"/\n  done\n}\n\n")
            for k in lr(tlocal):
                file.write(
                    opStr[i] +
                    "i" +
                    remoteStr[j] +
                    tlocalStr[k] +
                    "() {\n  for f in \"${@:2}\"; do\n    " +
                    op[i] +
                    " -- \"" +
                    remote[j] +
                    "\"/\"$f\" " +
                    tlocal[k] +
                    "\"/\n  done\n}\n\n")
                file.write(
                    opStr[i] +
                    "o" +
                    remoteStr[j] +
                    tlocalStr[k] +
                    "() {\n  " +
                    op[i] +
                    " -- " +
                    tlocal[k] +
                    "/\"$2\" \"" +
                    remote[j] +
                    "\"/\n}\n\n")

    for i in lr(aop):
        for j in lr(remote):
            for k in lr(local):
                file.write(
                    aopStr[i] +
                    "ia" +
                    remoteStr[j] +
                    localStr[k] +
                    "() {\n  (\n    cd " +
                    local[k] +
                    " || exit\n    cwd=$(pwd)\n    cd \"" +
                    remote[j] +
                    "\" || exit\n    for f in *; do\n      " +
                    aop[i] +
                    " -- \"$f\" \"$cwd\"/\n    done\n  )\n}\n\n")
            for k in lr(tlocal):
                file.write(
                    aopStr[i] +
                    "ia" +
                    remoteStr[j] +
                    tlocalStr[k] +
                    "() {\n  (\n    cd " +
                    tlocal[k] +
                    " || exit\n    cwd=$(pwd)\n    cd \"" +
                    remote[j] +
                    "\" || exit\n    for f in *; do\n      " +
                    aop[i] +
                    " -- \"$f\" \"$cwd\"/\n    done\n  )\n}\n\n")

    for i in lr(iop):
        for j in lr(remote):
            for k in lr(local):
                file.write(
                    iopStr[i] +
                    "ai" +
                    remoteStr[j] +
                    localStr[k] +
                    "() {\n  (\n    " +
                    iop[i] +
                    "i" +
                    remoteStr[j] +
                    localStr[k] +
                    " \"$1\"\n    cd " +
                    local[k] +
                    " || exit\n    cp -r -- \"$1\"/* ./\n    rm -r \"$1\"\n  )\n}\n\n")
            for k in lr(tlocal):
                file.write(
                    iopStr[i] +
                    "ai" +
                    remoteStr[j] +
                    tlocalStr[k] +
                    "() {\n  (\n    " +
                    iop[i] +
                    "i" +
                    remoteStr[j] +
                    tlocalStr[k] +
                    " \"$1\" \"$2\"\n    cd " +
                    tlocal[k] +
                    " || exit\n    cp -r -- \"$2\"/* ./\n    rm -r \"$2\"\n  )\n}\n\n")

    for i in lr(op):
        for j in lr(local):
            for k in lr(tlocal):
                file.write(
                    opStr[i] +
                    "y" +
                    localStr[j] +
                    tlocalStr[k] +
                    "() {\n  " +
                    op[i] +
                    " -- \"$2\" " +
                    tlocal[k] +
                    "/\n}\n\n")
                file.write(
                    opStr[i] +
                    "u" +
                    localStr[j] +
                    tlocalStr[k] +
                    "() {\n  " +
                    op[i] +
                    " -- " +
                    tlocal[k] +
                    "/\"$2\"\n}\n\n")

    for i in lr(aop):
        for j in lr(local):
            for k in lr(tlocal):
                file.write(
                    aopStr[i] +
                    "ya" +
                    localStr[j] +
                    tlocalStr[k] +
                    "() {\n  (\n    cd " +
                    tlocal[k] +
                    " || exit\n    cwd=$(pwd)\n    cd " +
                    local[j] +
                    " || exit\n    for f in *; do\n      " +
                    aop[i] +
                    " -- \"$f\" \"$cwd\"/\n    done\n  )\n}\n\n")

    file.write("""rmp() {
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

""")

    for i in lr(pop):
        for j in lr(remote):
            for k in lr(proot):
                file.write(
                    pop[i] +
                    remoteStr[j] +
                    "p" +
                    prootStr[k] +
                    "() {\n  " +
                    pop[i] +
                    remoteStr[j] +
                    "p \"${PROOT_" +
                    proot[k].upper() +
                    ":-" +
                    proot[k] +
                    "}\" \"$1\"\n}\n\n")

    for i in lr(npop):
        for k in lr(proot):
            file.write(
                npop[i] +
                "p" +
                prootStr[k] +
                "() {\n  " +
                npop[i] +
                "p \"${PROOT_" +
                proot[k].upper() +
                ":-" +
                proot[k] +
                "}\" \"$1\"\n}\n\n")

    for i in lr(pup):
        for j in lr(local):
            for k in lr(proot):
                file.write(
                    pup[i] +
                    remoteStr[j] +
                    "p" +
                    prootStr[k] +
                    "() {\n  " +
                    pup[i] +
                    localStr[j] +
                    "p \"${PROOT_" +
                    proot[k].upper() +
                    ":-" +
                    proot[k] +
                    "}\" \"$1\"\n}\n\n")

    for k in lr(proot):
        file.write(
            "pdc" +
            prootStr[k] +
            "() {\n  cd \"/data/data/com.termux/files/usr/var/lib/proot-distro/containers/${PROOT_" +
            proot[k].upper() +
            ":-" +
            proot[k] +
            "}/rootfs/root\" || return\n}\n\n")

    gacp = """mvaAgB() {
  mvaAic "$1"
  gaB "$2"
}

cpaAgB() {
  cpaAic "$1"
  gaB "$2"
}

mviAgB() {
  mviAc "$1"
  gaB "$2"
}

cpiAgB() {
  cpriAc "$1"
  gaB "$2"
}

mviaAgB() {
  mviaAc
  gaB "$1"
}

cpiaAgB() {
  cpiaAc "*"
  gaB "$1"
}

"""

    gacdp = """mvaAgB() {
  mvaAic "$1"
  gaB
}

cpaAgB() {
  cpaAic "$1"
  gaB
}

mviAgB() {
  mviAc "$1"
  gaB
}

cpiAgB() {
  cpriAc "$1"
  gaB
}

mviaAgB() {
  mviaAc
  gaB
}

cpiaAgB() {
  cpiaAc "*"
  gaB
}

"""

    for i in remoteStr:
        file.write(gacp.replace("A", i).replace("B", "c"))
        file.write(gacp.replace("A", i).replace("B", "cp"))
        file.write(gacdp.replace("A", i).replace("B", "cd"))
        file.write(gacdp.replace("A", i).replace("B", "cdp"))

    A = ["n", "d", "z", "f"]
    B = [
        "",
        '\n  export DISPLAY="$1"',
        "\n  export DISPLAY=':0'",
        "\n  export DISPLAY=':1'"]
    C = ["n", "a"]
    DA = ["", "\n  adb connect localhost:5555"]
    DB = ["", " -s localhost:5555"]
    E = ["n", "a"]
    F = [" --no-audio", ""]
    eG = ["", " --new-display"]
    G = [[""], ["n", "sa"]]
    H = [[""], ["", " --start-app"]]

    for eg in lr(eG):
        for a in lr(A):
            for c in lr(C):
                for e in lr(E):
                    for g in lr(G[eg]):
                        file.write(
                            "sc" +
                            A[a] +
                            C[c] +
                            E[e] +
                            G[eg][g] +
                            "() {" +
                            B[a] +
                            DA[c] +
                            "\n  unset GALLIUM_DRIVER\n  scrcpy" +
                            DB[c] +
                            " --video-codec=h265 --fullscreen" +
                            F[e] +
                            eG[eg] +
                            H[eg][g] +
                            ' "$@"\n}\n\n')

with open(p, "rb") as file:
    data = file.read()

p.write_bytes(p.read_bytes().rstrip(b"\n") + b"\n")
