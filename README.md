# lua-selectex

[![test](https://github.com/mah0x211/lua-selectex/actions/workflows/test.yml/badge.svg)](https://github.com/mah0x211/lua-selectex/actions/workflows/test.yml)

lua-selectex is a helper module for handling variadic arguments.


## Installation

```sh
luarocks install selectex
```


## Functions

### n = selectex.len(...)

returns the number of arguments.


**Returns**

- `n:number`: number of arguments


### ... = selectex.head(index, ...)

returns the variadic arguments from the first to the `index`-th.

**Params**

- `index:number`: index number

**Returns**

- `...`: selected variadic arguments

    
### ok = selectex.tail(index, ...)

returns the variadic arguments from the `index`-th to the last.

**Params**

- `index:number`: index number

**Returns**

- `...`: selected variadic arguments
