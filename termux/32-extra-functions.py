from pathlib import Path

sdir = Path(__file__).resolve().parent

with open(sdir / "bashrc.d/32-extra-functions.sh", "w", encoding="utf-8") as file:

    file.write(
        "#!/data/data/com.termux/files/usr/bin/bash\n# shellcheck disable=2103\n\n")

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
                    "() {\n\t" +
                    op[i] +
                    " -- \"" +
                    remote[j] +
                    "\"/\"$1\" " +
                    local[k] +
                    "/\n}\n\n")
                file.write(
                    opStr[i] +
                    "o" +
                    remoteStr[j] +
                    localStr[k] +
                    "() {\n\t" +
                    op[i] +
                    " -- " +
                    local[k] +
                    "/\"$1\" \"" +
                    remote[j] +
                    "\"/\n}\n\n")
            for k in lr(tlocal):
                file.write(
                    opStr[i] +
                    "i" +
                    remoteStr[j] +
                    tlocalStr[k] +
                    "() {\n\t" +
                    op[i] +
                    " -- \"" +
                    remote[j] +
                    "\"/\"$2\" " +
                    tlocal[k] +
                    "/\n}\n\n")
                file.write(
                    opStr[i] +
                    "o" +
                    remoteStr[j] +
                    tlocalStr[k] +
                    "() {\n\t" +
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
                    "() {\n\t(\n\t\tcd " +
                    local[k] +
                    "\n\t\tLOCAL=$(pwd)\n\t\tcd \"" +
                    remote[j] +
                    "\"\n\t\tfor f in *; do\n\t\t\t" +
                    aop[i] +
                    " -- \"$f\" \"$LOCAL\"/\n\t\tdone\n\t)\n}\n\n")
            for k in lr(tlocal):
                file.write(
                    aopStr[i] +
                    "ia" +
                    remoteStr[j] +
                    tlocalStr[k] +
                    "() {\n\t(\n\t\tcd " +
                    tlocal[k] +
                    "\n\t\tLOCAL=$(pwd)\n\t\tcd \"" +
                    remote[j] +
                    "\"\n\t\tfor f in *; do\n\t\t\t" +
                    aop[i] +
                    " -- \"$f\" \"$LOCAL\"/\n\t\tdone\n\t)\n}\n\n")

    for i in lr(iop):
        for j in lr(remote):
            for k in lr(local):
                file.write(
                    iopStr[i] +
                    "ai" +
                    remoteStr[j] +
                    localStr[k] +
                    "() {\n\t(\n\t\t" +
                    iop[i] +
                    "i" +
                    remoteStr[j] +
                    localStr[k] +
                    " \"$1\"\n\t\tcd " +
                    local[k] +
                    "\n\t\tcp -r -- \"$1\"/* ./\n\t\trm -r \"$1\"\n\t)\n}\n\n")
            for k in lr(tlocal):
                file.write(
                    iopStr[i] +
                    "ai" +
                    remoteStr[j] +
                    tlocalStr[k] +
                    "() {\n\t(\n\t\t" +
                    iop[i] +
                    "i" +
                    remoteStr[j] +
                    tlocalStr[k] +
                    " \"$1\" \"$2\"\n\t\tcd " +
                    tlocal[k] +
                    "\n\t\tcp -r -- \"$2\"/* ./\n\t\trm -r \"$2\"\n\t)\n}\n\n")

    for i in lr(op):
        for j in lr(local):
            for k in lr(tlocal):
                file.write(
                    opStr[i] +
                    "y" +
                    localStr[j] +
                    tlocalStr[k] +
                    "() {\n\t" +
                    op[i] +
                    " -- \"$2\" " +
                    tlocal[k] +
                    "/\n}\n\n")
                file.write(
                    opStr[i] +
                    "u" +
                    localStr[j] +
                    tlocalStr[k] +
                    "() {\n\t" +
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
                    "() {\n\t(\n\t\tcd " +
                    tlocal[k] +
                    "\n\t\tLOCAL=$(pwd)\n\t\tcd " +
                    local[j] +
                    "\n\t\tfor f in *; do\n\t\t\t" +
                    aop[i] +
                    " -- \"$f\" \"$LOCAL\"/\n\t\tdone\n\t)\n}\n\n")

    file.write("""rmp() {
\trm -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root/$2"
}

rmrp() {
\trm -r -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root/$2"
}

rmrfp() {
\trm -rf -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root/$2"
}

mkdirp() {
\tmkdir -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root/$2"
}

mkdirpp() {
\tmkdir -p -- "$PREFIX/var/lib/proot-distro/containers/$1/rootfs/root/$2"
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
                    "() {\n\tif [ -n \"$" +
                    proot[k].upper() +
                    "\" ]; then\n\t\t" +
                    pop[i] +
                    remoteStr[j] +
                    "p \"$" +
                    proot[k].upper() +
                    "\" \"$1\"\n\telse\n\t\t" +
                    pop[i] +
                    remoteStr[j] +
                    "p \"" +
                    proot[k] +
                    "\" \"$1\"\n\tfi\n}\n\n")

    for i in lr(npop):
        for k in lr(proot):
            file.write(
                npop[i] +
                "p" +
                prootStr[k] +
                "() {\n\tif [ -n \"$" +
                proot[k].upper() +
                "\" ]; then\n\t\t" +
                npop[i] +
                "p \"$" +
                proot[k].upper() +
                "\" \"$1\"\n\telse\n\t\t" +
                npop[i] +
                "p \"" +
                proot[k] +
                "\" \"$1\"\n\tfi\n}\n\n")

    for i in lr(pup):
        for j in lr(local):
            for k in lr(proot):
                file.write(
                    pup[i] +
                    remoteStr[j] +
                    "p" +
                    prootStr[k] +
                    "() {\n\tif [ -n \"$" +
                    proot[k].upper() +
                    "\" ]; then\n\t\t" +
                    pup[i] +
                    localStr[j] +
                    "p \"$" +
                    proot[k].upper() +
                    "\" \"$1\"\n\telse\n\t\t" +
                    pup[i] +
                    localStr[j] +
                    "p \"" +
                    proot[k] +
                    "\" \"$1\"\n\tfi\n}\n\n")

    gacp = """mvaAgcp() {
\tmvaAic "$1"
\tgacp "$2"
}

cpaAgcp() {
\tcpaAic "$1"
\tgacp "$2"
}

mviAgcp() {
\tmviAc "$1"
\tgacp "$2"
}

cpiAgcp() {
\tcpriAc "$1"
\tgacp "$2"
}

mviaAgcp() {
\tmviaAc
\tgacp "$1"
}

cpiaAgcp() {
\tcpiaAc "*"
\tgacp "$1"
}

mvaAgcdp() {
\tmvaAic "$1"
\tgacdp "$2"
}

cpaAgcdp() {
\tcpaAic "$1"
\tgacdp "$2"
}

mviAgcdp() {
\tmviAc "$1"
\tgacdp "$2"
}

cpiAgcdp() {
\tcpriAc "$1"
\tgacdp "$2"
}

mviaAgcdp() {
\tmviaAc
\tgacdp "$1"
}

cpiaAgcdp() {
\tcpiaAc "*"
\tgacdp "$1"
}
"""

    for i in remoteStr:
        file.write(gacp.replace("A", i))

    A = ["n", "d", "z", "f"]
    B = [
        "",
        '\n\texport DISPLAY="$1"',
        "\n\texport DISPLAY=':0'",
        "\n\texport DISPLAY=':1'"]
    C = ["n", "a"]
    DA = ["", "\n\tadb connect localhost:5555"]
    DB = ["", " -s localhost:5555"]
    E = ["n", "a"]
    F = [" --no-audio", ""]
    eG = ["", " --new-display"]
    G = [[""], ["n", "sa", "lc"]]
    H = [[""], ["", " --start-app", " --start-app app.lawnchair"]]

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
                            "\n\tunset GALLIUM_DRIVER\n\tscrcpy" +
                            DB[c] +
                            " --video-codec=h265 --fullscreen" +
                            F[e] +
                            eG[eg] +
                            H[eg][g] +
                            ' "$@"\n}\n\n')

with open(sdir / "bashrc.d/32-extra-functions.sh", "rb") as file:
    data = file.read()

p = Path(sdir / "bashrc.d/32-extra-functions.sh")
p.write_bytes(p.read_bytes().rstrip(b"\n") + b"\n")
