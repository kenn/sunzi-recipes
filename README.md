Sunzi Recipes
=============

[Sunzi](https://github.com/kenn/sunzi) is a server provisioning tool for minimalists.

This repository is a public source for Sunzi recipes, to demonstrate what Sunzi is capable of.

Recipes in this repository can be directly retrieved by `sunzi compile`. Just point to the URL of raw files in `sunzi.yml`.

**Warning**: Everything in this repository is a work in progress.

Linux distributions
-------------------

Sunzi is Linux distro agnostic in itself.

But if you haven't settled yet, I'd say [Debian](http://www.debian.org/) with [Dotdeb](http://www.dotdeb.org/) is worth a try.

Dotdeb is a repository maintained by awesome [Guillaume Plessis](https://twitter.com/w_a_s_t_e), and it has the following packages as of February 29th, 2012:

* Nginx 1.0.12
* MySQL 5.5.20
* Redis 2.4.8
* Percona toolkit 2.0.3

Those packages are as recent as they could get - if you want to catch up with cutting edge features from the latest versions of Nginx, MySQL, Redis, etc. then Dotdeb will definitely make you happy. :)

There's a recipe for you to set up Dotdeb here: https://github.com/kenn/sunzi-recipes/blob/master/debian/dotdeb.sh

To use Dotdeb, put the following piece in `sunzi.yml`:

```yaml
recipes:
  dotdeb: https://raw.github.com/kenn/sunzi-recipes/master/debian/dotdeb.sh
```

with `install.sh`:

```bash
source recipes/dotdeb.sh

aptitude -y install nginx
```

and `sunzi deploy` will install the latest Nginx.

Other repositories
------------------

Here's a list of other Sunzi recipes available, for your convenience.

If you have a public repository, fork this project, add yours to this README and send a pull request.

* https://github.com/kyohsuke/sunzi-recipes
* https://github.com/ubilabs/sunzi-recipes
