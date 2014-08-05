Basic [vagrant](https://docs.vagrantup.com/v2/) configuration file for creating a VM [(virtualbox)](https://www.virtualbox.org/) for the purposes of building and testing
python projects.

What is included?
-----------------
* ubuntu/trusty64 [ubuntu](http://www.ubuntu.com/)
* [nginx](http://nginx.org/)
* [ansible](http://docs.ansible.com/)
* [pip](http://pip.readthedocs.org/en/latest/index.html)
* [python](https://www.python.org/)
  - [python2.6](https://docs.python.org/2.6/)
  - [python2.7](https://docs.python.org/2/) (**default and default python2**)
  - [python3.2](https://docs.python.org/3.2/)
  - [python3.3](https://docs.python.org/3.3/)
  - [python3.4](https://docs.python.org/3.4/) (**default python3**)
  - [pypy](http://pypy.org/)

Why?
----------
While I believe in CI and typically leverage [Jenkins](http://jenkins-ci.org/) or [Travis](https://travis-ci.org/) for that purpose,
I do want to be able to consistently test my code against different versions via [tox](http://tox.readthedocs.org/en/latest/) or even
manually as I do development without needing to commit a change and wait for a CI to actually run the build and tests against each version.


