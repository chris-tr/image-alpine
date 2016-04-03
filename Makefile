NAME =			alpine
VERSION =		latest
VERSION_ALIASES =	3.3.0 3.3 3 edge
TITLE =			Alpine Linux
DESCRIPTION =		Alpine Linux
SOURCE_URL =		https://github.com/scaleway/image-alpine
VENDOR_URL =		http://www.alpinelinux.org
DEFAULT_IMAGE_ARCH =	x86_64

IMAGE_VOLUME_SIZE =	50G
IMAGE_BOOTSCRIPT =	stable
IMAGE_NAME =		Alpine Linux 3.3

# This is specific to distribution images
# -- to fetch latest code, run 'make sync-image-tools'
IMAGE_TOOLS_FLAVORS =   openrc,common,docker-based
IMAGE_TOOLS_CHECKOUT =  764a58e59811d5f6217a3f71a4e009d6ec3e5138


##
## Image tools  (https://github.com/scaleway/image-tools)
##
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/scw-builder | bash
-include docker-rules.mk
