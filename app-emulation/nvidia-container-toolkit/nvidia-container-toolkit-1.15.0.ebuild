# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit go-module

DESCRIPTION="NVIDIA container runtime toolkit"
HOMEPAGE="https://github.com/NVIDIA/nvidia-container-toolkit"

EGO_SUM=(
	"github.com/!n!v!i!d!i!a/go-nvlib v0.2.0"
	"github.com/!n!v!i!d!i!a/go-nvlib v0.2.0/go.mod"
	"github.com/!n!v!i!d!i!a/go-nvml v0.12.0-3"
	"github.com/!n!v!i!d!i!a/go-nvml v0.12.0-3/go.mod"
	"github.com/blang/semver/v4 v4.0.0"
	"github.com/blang/semver/v4 v4.0.0/go.mod"
	"github.com/cpuguy83/go-md2man/v2 v2.0.2"
	"github.com/cpuguy83/go-md2man/v2 v2.0.2/go.mod"
	"github.com/creack/pty v1.1.9/go.mod"
	"github.com/davecgh/go-spew v1.1.0/go.mod"
	"github.com/davecgh/go-spew v1.1.1"
	"github.com/davecgh/go-spew v1.1.1/go.mod"
	"github.com/fsnotify/fsnotify v1.7.0"
	"github.com/fsnotify/fsnotify v1.7.0/go.mod"
	"github.com/google/uuid v1.3.0/go.mod"
	"github.com/google/uuid v1.6.0"
	"github.com/google/uuid v1.6.0/go.mod"
	"github.com/hashicorp/errwrap v1.0.0/go.mod"
	"github.com/hashicorp/errwrap v1.1.0"
	"github.com/hashicorp/errwrap v1.1.0/go.mod"
	"github.com/hashicorp/go-multierror v1.1.1"
	"github.com/hashicorp/go-multierror v1.1.1/go.mod"
	"github.com/kr/pretty v0.2.1/go.mod"
	"github.com/kr/pretty v0.3.1"
	"github.com/kr/pretty v0.3.1/go.mod"
	"github.com/kr/pty v1.1.1/go.mod"
	"github.com/kr/text v0.1.0/go.mod"
	"github.com/kr/text v0.2.0"
	"github.com/kr/text v0.2.0/go.mod"
	"github.com/mndrix/tap-go v0.0.0-20171203230836-629fa407e90b/go.mod"
	"github.com/mrunalp/fileutils v0.5.0/go.mod"
	"github.com/opencontainers/runtime-spec v1.0.3-0.20220825212826-86290f6a00fb/go.mod"
	"github.com/opencontainers/runtime-spec v1.2.0"
	"github.com/opencontainers/runtime-spec v1.2.0/go.mod"
	"github.com/opencontainers/runtime-tools v0.9.1-0.20221107090550-2e043c6bd626"
	"github.com/opencontainers/runtime-tools v0.9.1-0.20221107090550-2e043c6bd626/go.mod"
	"github.com/opencontainers/selinux v1.9.1/go.mod"
	"github.com/opencontainers/selinux v1.11.0"
	"github.com/opencontainers/selinux v1.11.0/go.mod"
	"github.com/pelletier/go-toml v1.9.5"
	"github.com/pelletier/go-toml v1.9.5/go.mod"
	"github.com/pkg/diff v0.0.0-20210226163009-20ebb0f2a09e/go.mod"
	"github.com/pmezard/go-difflib v1.0.0"
	"github.com/pmezard/go-difflib v1.0.0/go.mod"
	"github.com/rogpeppe/go-internal v1.9.0"
	"github.com/rogpeppe/go-internal v1.9.0/go.mod"
	"github.com/russross/blackfriday/v2 v2.1.0"
	"github.com/russross/blackfriday/v2 v2.1.0/go.mod"
	"github.com/sirupsen/logrus v1.8.1/go.mod"
	"github.com/sirupsen/logrus v1.9.3"
	"github.com/sirupsen/logrus v1.9.3/go.mod"
	"github.com/stretchr/objx v0.1.0/go.mod"
	"github.com/stretchr/testify v1.2.2/go.mod"
	"github.com/stretchr/testify v1.3.0/go.mod"
	"github.com/stretchr/testify v1.7.0/go.mod"
	"github.com/stretchr/testify v1.9.0"
	"github.com/stretchr/testify v1.9.0/go.mod"
	"github.com/syndtr/gocapability v0.0.0-20200815063812-42c35b437635"
	"github.com/syndtr/gocapability v0.0.0-20200815063812-42c35b437635/go.mod"
	"github.com/urfave/cli v1.19.1/go.mod"
	"github.com/urfave/cli/v2 v2.27.1"
	"github.com/urfave/cli/v2 v2.27.1/go.mod"
	"github.com/xeipuuv/gojsonpointer v0.0.0-20180127040702-4e3ac2762d5f/go.mod"
	"github.com/xeipuuv/gojsonpointer v0.0.0-20190905194746-02993c407bfb"
	"github.com/xeipuuv/gojsonpointer v0.0.0-20190905194746-02993c407bfb/go.mod"
	"github.com/xeipuuv/gojsonreference v0.0.0-20180127040603-bd5ef7bd5415"
	"github.com/xeipuuv/gojsonreference v0.0.0-20180127040603-bd5ef7bd5415/go.mod"
	"github.com/xeipuuv/gojsonschema v1.2.0"
	"github.com/xeipuuv/gojsonschema v1.2.0/go.mod"
	"github.com/xrash/smetrics v0.0.0-20201216005158-039620a65673"
	"github.com/xrash/smetrics v0.0.0-20201216005158-039620a65673/go.mod"
	"golang.org/x/mod v0.17.0"
	"golang.org/x/mod v0.17.0/go.mod"
	"golang.org/x/sys v0.0.0-20191026070338-33540a1f6037/go.mod"
	"golang.org/x/sys v0.0.0-20191115151921-52ab43148777/go.mod"
	"golang.org/x/sys v0.0.0-20220715151400-c0bba94af5f8/go.mod"
	"golang.org/x/sys v0.19.0"
	"golang.org/x/sys v0.19.0/go.mod"
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
	"gopkg.in/check.v1 v1.0.0-20201130134442-10cb98267c6c"
	"gopkg.in/check.v1 v1.0.0-20201130134442-10cb98267c6c/go.mod"
	"gopkg.in/yaml.v2 v2.4.0"
	"gopkg.in/yaml.v2 v2.4.0/go.mod"
	"gopkg.in/yaml.v3 v3.0.0-20200313102051-9f266ea9e77c/go.mod"
	"gopkg.in/yaml.v3 v3.0.1"
	"gopkg.in/yaml.v3 v3.0.1/go.mod"
	"sigs.k8s.io/yaml v1.3.0"
	"sigs.k8s.io/yaml v1.3.0/go.mod"
	"tags.cncf.io/container-device-interface v0.7.1"
	"tags.cncf.io/container-device-interface v0.7.1/go.mod"
	"tags.cncf.io/container-device-interface/specs-go v0.7.0"
	"tags.cncf.io/container-device-interface/specs-go v0.7.0/go.mod"
)

go-module_set_globals

SRC_URI="https://github.com/NVIDIA/nvidia-container-toolkit/tarball/ddeeca392c7bd8b33d0a66400b77af7a97e16cef -> nvidia-container-toolkit-1.15.0-ddeeca3.tar.gz
https://direct.funtoo.org/5d/f1/76/5df176dbebaa3392c65c6701855e864618617139117964f52ffcd56fa1f23c85e8c025c64a220641b7824130b70cad92b09ea3f33bc382c31f61357476bdd212 -> nvidia-container-toolkit-1.15.0-funtoo-go-bundle-2c13efdcee77bd5a03ed07b9202b64b267d1f088e7234e62f87195871d3ff17bff5816a4cafcaa37b04685bb99f7dc8f078054b71cc7c402cf64dfcd2d7c5d40.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE=""
S="${WORKDIR}/NVIDIA-nvidia-container-toolkit-ddeeca3"

RDEPEND="app-emulation/libnvidia-container"

DEPEND="${RDEPEND}"

BDEPEND="dev-lang/go"

src_compile() {
	emake binaries || die
}

src_install() {
	dobin "nvidia-container-runtime"
	dobin "nvidia-container-runtime-hook"
	dobin "nvidia-container-runtime.cdi"
	dobin "nvidia-container-runtime.legacy"
	dobin "nvidia-ctk"
	into "/usr/bin"
	insinto "/etc/nvidia-container-runtime"
	doins "${FILESDIR}/config.toml"
}

pkg_postinst() {
	elog "Your docker service must restart after install this package."
	elog "OpenRC: sudo rc-service docker restart"
	elog "You may need to edit your /etc/nvidia-container-runtime/config.toml"
	elog "file before running ${PN} for the first time."
	elog "For details, please see the NVIDIA docker manual page."
}
