# How to install/upgrade/remove mfext metwork module (with internet access)

[//]: # (automatically generated from https://github.com/metwork-framework/resources/blob/master/cookiecutter/_%7B%7Bcookiecutter.repo%7D%7D/.metwork-framework/install_a_metwork_package.md)

## Prerequisites

You must:

- have configured the metwork yum repository. Please see [the corresponding document](configure_metwork_repo.md) document to do that.
- have an internet access on this computer

## Install mfext metwork module

## Full installation

You just have to execute the following command (as `root` user):

```bash
yum install metwork-mfext
```

## Minimal installation

If you prefer to start with a minimal installation, you have to execute the following command
(as `root` user):

```bash
yum install metwork-mfext-minimal
```

## Optional Addons

### Optional dependencies addons

```bash
# To install some devtools
yum install metwork-mfext-layer-python3_devtools

# To install some scientific libraries
yum install metwork-mfext-layer-python3_scientific

# To install python2 support
# (including corresponding scientific and devtools addons)
yum install metwork-mfext-layer-python2
yum install metwork-mfext-layer-python2_scientific
yum install metwork-mfext-layer-python2_devtools
```







## Uninstall mfext metwork module


To uninstall mfext metwork module, use the following command (still as `root` user):



```bash
yum remove "metwork-mfext*"
```

## Upgrade mfext metwork module

To upgrade mfext metwork module, use the following commands (still as `root` user):



```bash
# We upgrade mfext metwork module
yum upgrade "metwork-mfext*"
```



## Uninstall all metwork modules

To uninstall all metwork modules, use following root commands:

```bash
# We stop metwork services
service metwork stop

# we remove metwork modules
yum remove "metwork-*"
```

## Upgrade all metwork modules

The same idea applies to upgrade.

For example, to upgrade all metwork modules on a computer, use following root commands:

```bash
# We stop metwork services
service metwork stop

# We upgrade metwork modules
yum upgrade "metwork-*"

# We start metwork services
service metwork start
```
