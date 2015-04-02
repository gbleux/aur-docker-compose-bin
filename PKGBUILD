# Maintainer: Gordon Bleux <gordon.bleux+aurdcb@gmail.com>
pkgname=docker-compose-bin
_pkgname=docker-compose
pkgver=1.2.0rc3
pkgrel=1
pkgdesc="Define and run complex applications using Docker"
arch=('x86_64')
_os=Linux
url="https://github.com/docker/compose"
license=('Apache')
depends=('docker')
provides=("${_pkgname}")
conflicts=("${_pkgname}")
source=("docker-compose::https://github.com/docker/compose/releases/download/${pkgver}/${_pkgname}-${_os}-${CARCH}"
        "docker-compose.bash::https://raw.githubusercontent.com/docker/compose/${pkgver}/contrib/completion/bash/docker-compose")
noextract=('docker-compose'
           'docker-compose.bash')
sha256sums=('66e34fb5ed99a79cfa8002cd8072c9d75ce8b4106b27f1357a9c227776e288ec'
            '995bafaaf088381d5ad9c0c1ed743ef0bb7006d4e5a67fd4411888986639b29c')
options=('!strip')

package() {
    install -Dm755 'docker-compose' "$pkgdir/usr/bin/docker-compose"
    # completion
    install -Dm644 'docker-compose.bash' "$pkgdir/usr/share/bash-completion/completions/docker-compose"
}
