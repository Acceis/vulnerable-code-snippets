## Installation

1. Set up a Ruby environment (tested with Ruby 3.2.0). It's recommended to use a virtual environment using [ASDF-VM](https://asdf-vm.com/).
2. Install dependencies: `bundle install`.
3. Run! (see below)

## Usage

Start the vulnerable app:

```
VULN=on bundle exec rackup -s puma
```

Start the fixed app:

```
VULN=off bundle exec rackup -s puma
```

## Announcement and solution

Challenge announcement:

- 🇫🇷 https://twitter.com/acceis/status/1660582304572481541
- 🇬🇧 https://twitter.com/acceis/status/1660582306875158529

Solution article:

- 🇫🇷 https://www.acceis.fr/solution-de-lextrait-de-code-vulnerable-n4
- 🇬🇧 https://www.acceis.fr/solution-for-the-vulnerable-code-snippet-n4
