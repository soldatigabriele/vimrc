source ~/.vim/zshrc

export BASH_CONF="bash_profile"
export PATH="~/.composer/vendor/bin:$PATH"
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

export CUDA_HOME=/usr/local/cuda
export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:$CUDA_HOME/lib"
export PATH="$CUDA_HOME/bin:$PATH"


# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

