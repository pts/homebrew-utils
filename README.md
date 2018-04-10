Homebrew formulae for some [@pts software](https://github.com/pts)
==================================================================

[Homebrew](https://brew.sh/) is a package manager for **macOS**, allowing to easily install, update and uninstall command-line software. If you do not have it already, you can install it by pasting this line at a Terminal prompt:

    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

With Homebrew installed, you can install [pdfsizeopt](#pdfsizeopt) (as well as other utilities) from source in one simple command.



## [pdfsizeopt](https://github.com/pts/pdfsizeopt)

### Installation

To install the last official macOS release of `pdfsizeopt`, run the following command in your Terminal:

    brew install pts/utils/pdfsizeopt
    
To install a development version ("bleeding edge") from the current state of the Github repository:

    brew install pts/utils/pdfsizeopt --HEAD
   
   
### Usage

Homebrew will install `pdfsizeopt` with all its dependencies (Ghostscript, `tif22pnm`, `pngout`, `sam2p`, `jbig2enc`, `advancecomp`) in their respective directory (`/usr/local/Cellar/pdfsizeopt/`, `/usr/local/Cellar/tif22pnm/`, etc.) and symlink the executables to `/usr/local/bin`, so you will be able to use all the pieces of software with a single command anywhere on your system (as long as `/usr/local/bin` is in your `PATH`):

    pdfsizeopt inputfile outputfile
    
    
    
## [sam2p](https://github.com/pts/sam2p)

To install `sam2p` directly (it is already installed as a depedency of `pdfsizeopt` if you have installed it), run:

    brew install pts/utils/sam2p
    
    
    
## [tif22pnm](https://github.com/pts/tif22pnm)

To install `tif22pnm` directly (it is also installed as a dependency of `pdfsizeopt`):

    brew install pts/utils/tiff22pnm

