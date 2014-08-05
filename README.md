Basic vagrant configuration file for creating a VM for the purposes of building and testing
python projects.

What is included?
-----------------
* ubuntu/trusty64
* nginx
* ansible
* pip
* python
  - python2.6
  - python2.7 (default and default python2)
  - python3.2
  - python3.3
  - python3.4 (default python3)
  - pypy

Why?
----------
While I believe in CI and typically leverage Jenkins or Travis for that purpose, I do want to be able to
consistently test my code against different versions via tox or even manually as I do development without
needing to commit a change and wait for a CI to actually run the build and tests against each version.



