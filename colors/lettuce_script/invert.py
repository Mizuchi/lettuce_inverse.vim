# python invert.py ../colors/lettuce.vim ../colors/lettuce_inverse.vim
import sys
from termcap import inverse_color


def is_color(line):
    colorList = ["guibg=", "guifg=", "ctermbg=", "ctermfg="]
    for i in colorList:
        if line.endswith(i):
            return True
    return False


def new_number(old):
    if old[0] == '#':
        p = eval("0x" + old[1:])
        q = eval("0x" + ('f' * len(old[1:])))
        new = hex(q - p)[2:]
        while len(new) < 6:
            new = '0' + new
        return '#' + new
    else:
        return str(inverse_color(int(old)))


def convert(line):
    result = ""
    i = 0
    while i < len(line):
        if is_color(result):
            newline = line[i:].split(None, 1)
            newline[0] = new_number(newline[0])
            line = line[:i] + (' '.join(newline)) + '\n'
        result += line[i]
        i += 1
    return result


def main():

    lines = None
    with open(sys.argv[1], 'r') as dataFile:
        lines = dataFile.readlines()
    with open(sys.argv[2], 'w') as out:
        for line in lines:
            print(convert(line))
            out.write(convert(line))

main()
