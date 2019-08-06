# Chrome installation

## common
these notes are applicable only for 64-x chrome versions

## install via ppa
1. download a key and install it:
   ```sh
   $ wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | Sudo apt-key add -
   ```

2. add the chrome repository to sources:
   ```sh
   $ sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
   ```

3. update the apt cache:
   ```sh
   $ sudo apt-get update
   ```

4. install the stable version:
   ```sh
   $ sudo apt-get install google-chrome-stable
   ```
   for the beta version use `google-chrome-beta`, for the unstable - `google-chrom-unstable`


## Installation with a deb-package

1. Download the package:
   ```sh
   $ wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
   ```

2. Install the package:
   ```sh
   $ sudo dpkg -i google-chrome-stable_current_amd64.deb
   ```

3. Run google-chrome under a regular user:
   ```sh
   $ google-chrome-stable
   ```

