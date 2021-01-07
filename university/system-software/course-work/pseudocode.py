 1:  def main():
 2:      for line in inputFile:
 3:          label, operator, operand = parse(line)
 4:          macrodef = namtab.get(operator)
 5:          if macrodef:
 6:              expand(label, operator, operand, macrodef)
 7:          elif operator == "MACRO":
 8:              define(label, operand)
 9:          else:
10:              outFile.write(line)

def define(name, params): 
    params = split(params, ',')
    level = 1
    macrodef = {start: deftab.size, end: deftab.size}
    for line in inputFile:
        operator = getOperator(line)
        if operator == "MACRO":
            level += 1
        elif operator == "MEND":
            level -= 1
            if level <= 0:
                break
        line = line.replace(params).withIndicies()
        deftab.push(line)
    macrodef.end = deftab.size
    namtab.put(name, macrodef)

def defineDuringExpanding(start, name, params):
    params = split(params, ',')
    level = 1
    macrodef = {start: deftab.size, end: deftab.size}
    end = start
    for i in range(start, deftab.size):
        line = deftab[i]
        operator = getOperator(line)
        if operator == "MACRO":
            level +=1
        elif operator == "MEND": 
            level -=1
            if level <= 0:
                end = i
                break
        line.replace(params).withIndicies()
        deftab.push(line)
    macrodef.end = deftab.size
    namtab.put(name, macrodef)
    return end

def expand(label, name, args, macrodef):
    out.write(label)
    args = split(args, ',')
    for i in range(macrodef.start, macrodef.end):
        line = deftab[i]
        line = line.replaceIndiciesWith(args)
        label, operator, operand = parse(line)
        innerdef = namtab.get(operator)
        if innerdef:
            expand(label, mnemonic, operand, innerdef)
        elif operator == "MACRO":
            i = defineDuringExpanding(i + 1, label, operand)
        else:
            out.write(line)