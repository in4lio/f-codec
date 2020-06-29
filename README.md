# Python `f` Codec

Wrap lonesome f-strings in `print()`.

## How to install

```sh
> python3 -m pip install f-codec
```

## Why?

```python
# -*- coding: f -*-

import sys

f'''
Python
'''
if sys.version_info > (3, 0):
    f''' {sys.version}
'''
else:
    f'''
The sunset for Python 2 has passed.
'''

f''''''

def dictionary(inst, level=0):
    o = '    ' * level

    f''' {{
''' > o

    for name, val in inst.items():
        if isinstance(val, dict):
            f'''
    {name} =
''' > o
            dictionary(val, level + 1)
        else:
            f'''
    {name} = {val},
''' > o

    f'''
}}
''' > o

decl = {
    'a': 1,
    'b': 2,
    'c': { 'a': 3, 'b': 4 },
    'd': { 'a': 5, 'b': { 'a': 6, 'b': 7 }, 'c': 8},
    'e': 9
}

f'''
decl =
'''
dictionary(decl)
```

```sh
> python3 test.py

Python 3.7.7 (default, Mar 10 2020, 15:43:33)
[Clang 11.0.0 (clang-1100.0.33.17)]

decl = {
    a = 1,
    b = 2,
    c = {
        a = 3,
        b = 4,
    }
    d = {
        a = 5,
        b = {
            a = 6,
            b = 7,
        }
        c = 8,
    }
    e = 9,
}
```
