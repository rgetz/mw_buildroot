################################################################################
#
# lttng-modules-rfsoc
#
################################################################################

LTTNG_MODULES_RFSOC_VERSION = 2.9.7
LTTNG_MODULES_RFSOC_SITE = http://lttng.org/files/lttng-modules
LTTNG_MODULES_RFSOC_SOURCE = lttng-modules-$(LTTNG_MODULES_RFSOC_VERSION).tar.bz2
LTTNG_MODULES_RFSOC_LICENSE = LGPL-2.1/GPL-2.0 (kernel modules), MIT (lib/bitfield.h, lib/prio_heap/*)
LTTNG_MODULES_RFSOC_LICENSE_FILES = lgpl-2.1.txt gpl-2.0.txt mit-license.txt LICENSE
LTTNG_MODULES_RFSOC_MODULE_MAKE_OPTS = CONFIG_LTTNG=m CONFIG_LTTNG_CLOCK_PLUGIN_TEST=m

$(eval $(kernel-module))
$(eval $(generic-package))
