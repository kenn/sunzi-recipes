Sunzi Recipes
=============

[Sunzi](https://github.com/kenn/sunzi) is a server provisioning tool for minimalists.

This repository is a public source for Sunzi recipes, to demonstrate what Sunzi is capable of.

Recipes in this repository can be directly retrieved by `sunzi compile`. Just point to the URL of raw files in `sunzi.yml`.

Sunzi is Linux distro agnostic in itself, but in this repository most recipes are [Debian](http://www.debian.org/).

**Warning**: Everything in this repository is a work in progress.

Usage
-----

To use a recipe, take the URL of the raw text:

![take raw](https://c1.staticflickr.com/5/4753/24997573107_0d8d8eed8a_z.jpg)

and put it in `sunzi.yml`:

```yaml
recipes:
  authorized_keys: https://raw.githubusercontent.com/kenn/sunzi-recipes/master/authorized_keys.sh
```

and use it in `install.sh` (source recipes/[name] [args]):

```bash
source recipes/authorized_keys.sh kenn
```

and `sunzi deploy` will run the configuration change.

Other repositories
------------------

Here's a list of other Sunzi recipes available, for your convenience.

If you have a public repository, fork this project, add yours to this README and send a pull request.

* https://github.com/kyohsuke/sunzi-recipes
* https://github.com/ubilabs/sunzi-recipes
* https://github.com/crslade/sunzi-recipes
