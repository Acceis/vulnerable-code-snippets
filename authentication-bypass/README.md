## Installation

1. Set up a PHP environment (tested with PHP 8.2.7). It's recommended to use a virtual environment using [ASDF-VM](https://asdf-vm.com/).
2. Install dependencies: `composer install`.
3. Run! (see below)

## Usage

Start the vulnerable app:

```
VULN=on php -S 127.0.0.2:8080
```

Start the fixed app:

```
VULN=off php -S 127.0.0.2:8080
```

## Announcement and solution

Challenge announcement:

- 🇫🇷 https://twitter.com/acceis/status/1682008440766443525
- 🇬🇧 https://twitter.com/acceis/status/1682008443354333184

Solution article:

- 🇫🇷 https://acceis.fr/solution-de-lextrait-de-code-vulnerable-n6/
- 🇬🇧 https://acceis.fr/solution-for-the-vulnerable-code-snippet-n6/
