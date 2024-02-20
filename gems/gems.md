The RubyGems site is [https://rubygems.org](https://rubygems.org/?locale=es)

To check the current installed version of `gem``

```
gem -v
```

Update `gem` for the current working version of Ruby

```
gem update --system
```

To install a gem for the current active version of Ruby

```
gem install <gem-name>
```

If you have multiple Ruby versions, you need to install
the gem for each Ruby version you will need the gem for.

To uninstall a gem

```
gem uninstall <gem-name>
```

A file named `Gemfile` can be created to store the specs of the
gems that a Ruby project uses. An example of the content of a
`GemFile` is

```
source "https://rubygems.org"

gem "faker, "~> 3.2.0"
```

The `~>` symbol indicates that any patch-level version is accepted (for example,
3.2.1, 3.2.2, 3.2.3 ...). If the instruction were written as `~> 3.2`, then,
any minor-level version is allowed (3.2, 3.3, 3.4, ...).
