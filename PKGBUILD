# Maintainer: 0warn <root@localhost>
pkgname=linux-defender
pkgver=1.3
pkgrel=1
pkgdesc="Harden your Linux system with one script — efficient, practical, and secure."
arch=('any')
url="https://github.com/0warn/LINUX-DEFENDER"
license=('MIT')
depends=(
    'tor'
    'chkrootkit'
    'clamav'
    'audit'
    'iptables-nft'
    'ufw'
    'inotify-tools'
    'rkhunter'
    'inxi'
    'xterm'
    'curl'
    'unzip'
    'grep'
    'coreutils' # for sort
    'logwatch'
    'postfix'
    'mailutils'
    'libpam-google-authenticator'
)
# Make sure to update sha256sums if source files change
source=(
    "defender.sh"
    "defender.conf"
    "LICENSE"
    "README.md"
    "linux-defender.install"
)
sha256sums=('d43f4adac37d1d0d8b2d7b6cbc5dd60d58634e4dc9d5974e4b4420ff62ac4915'
            '49ffe3bac42b996df4a632985ada62604fbc2abdae9eb1252d4e1327d454d714'
            '87fba72c992639c671c96aa38c7e7e7c826d98bc1787d03ad809fe43efb1cb00'
            'fc3b6364e4b5ddc0ac195bbb51d35ce9483fb80013f841c51cd80471b31556b9'
            '5a556de733b583dd739de42ba6df56e0179951c4e015f58c3f240926e3e7039a')

build() {
    # No specific build steps for a shell script, but we can do some preparations
    # like ensuring permissions are correct.
    chmod +x "${srcdir}/defender.sh"
}

package() {
    install -d "${pkgdir}/usr/bin"
    install -d "${pkgdir}/etc/linux-defender"
    install -d "${pkgdir}/usr/share/licenses/${pkgname}"
    install -d "${pkgdir}/usr/share/doc/${pkgname}"

    install -m 755 "${srcdir}/defender.sh" "${pkgdir}/usr/bin/linux-defender"
    install -m 644 "${srcdir}/defender.conf" "${pkgdir}/etc/linux-defender/"
    install -m 644 "${srcdir}/LICENSE" "${pkgdir}/usr/share/licenses/${pkgname}/"
    install -m 644 "${srcdir}/README.md" "${pkgdir}/usr/share/doc/${pkgname}/"
}