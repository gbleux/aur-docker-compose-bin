# Maintainer: Gordon Bleux <gordon.bleux+aurdcb@gmail.com>
pkgname=docker-compose-bin
_pkgname=docker-compose
pkgver=1.2.0
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
sha256sums=('796bafa7977815f0b6c34adfc6f4a9e0e2e4782226223068804f78f9583eeee9'
            '06237e657f6f405d338e66ff1969872645dc99e6b986aba54e8c5244eee3996a')
options=('!strip')

package() {
    install -Dm755 'docker-compose' "$pkgdir/usr/bin/docker-compose"
    # completion
    install -Dm644 'docker-compose.bash' "$pkgdir/usr/share/bash-completion/completions/docker-compose"
}
