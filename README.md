# Chocolatey Packaging Metadata

This repository provides the following Chocolatey packages:

- [Zeal](https://community.chocolatey.org/packages/zeal) (virtual package for Zeal (Install))
- [Zeal (Install)](https://community.chocolatey.org/packages/zeal.install)
- [Zeal (Portable)](https://community.chocolatey.org/packages/zeal.portable)

## Installation

```shell
choco install zeal
```

or

```shell
choco install zeal.portable
```

## Maintainer Instructions

1. Update `.nuspec` files.
1. Prepare package:

  ```shell
  choco pack
  ```

1. Test installation:

  ```shell
  choco install --source . <package>
  ```

1. Publish the package:

  ```shell
   choco push --source https://push.chocolatey.org/
   ```

## Support

- [GitHub Issues](https://github.com/zealdocs/zeal/issues)
- [GitHub Discussions](https://github.com/orgs/zealdocs/discussions)
