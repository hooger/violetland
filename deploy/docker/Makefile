# Default Target
all:				\
	fedora24-amd64-gcc	\
	fedora25-amd64-gcc	\
	fedora26-amd64-gcc	\
	fedora27-amd64-gcc	\
				\
	xenial-amd64-gcc	\
	zesty-amd64-gcc		\
	artful-amd64-gcc	\
				\
	windows-amd64-gcc	\
	windows-i686-gcc



# Supported Fedora versions
fedora24-amd64-gcc:
	mc fedora24-amd64-gcc ./execute-in-container.sh Debug

fedora25-amd64-gcc:
	mc fedora25-amd64-gcc ./execute-in-container.sh

fedora26-amd64-gcc:
	mc fedora26-amd64-gcc ./execute-in-container.sh

fedora27-amd64-gcc:
	mc fedora27-amd64-gcc ./execute-in-container.sh


# Supported Ubuntu versions
xenial-amd64-gcc:
	mc xenial-amd64-gcc ./execute-in-container.sh

zesty-amd64-gcc:
	mc zesty-amd64-gcc ./execute-in-container.sh

artful-amd64-gcc:
	mc artful-amd64-gcc ./execute-in-container.sh


# We do not target specific Windows versions but instead a statically linked
# binary
windows-amd64-gcc:
	mc windows-amd64-gcc ./execute-in-container.sh

windows-i686-gcc:
	mc windows-i686-gcc ./execute-in-container.sh

