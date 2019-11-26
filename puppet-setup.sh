#!/bin/sh
# Install Ubuntu's packages for Puppet. On Xenial, it gets v3.8.5.
apt update
apt install -y puppet-common puppet-module-puppetlabs-postgresql puppet-module-puppetlabs-vcsrepo

# Get the Puppet module that lets us work with Python and Pip.
puppet module install stankevich-python

# Get the module for using unattended apt upgrades (an old version that still works on Puppet 3).
puppet module install puppet-unattended_upgrades --version 2.2.0
