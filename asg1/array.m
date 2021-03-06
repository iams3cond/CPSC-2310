comment(`  Andrew Hunter')
comment(`  2310 program 1    ')
comment(`  August 31, 2016  ')

word(zero,0)
word(one,1)
word(length,15)
word(i,0)
word(sum,0)

comment(` array elements   ')
word(array0, 1)
word(array1, 1)
word(array2, 2)
word(array3, 3)
word(array4, 7)
word(array5, 10)
word(array6, 16)
word(array7, 9)
word(array8, 18)
word(array9, 50)
word(array10, 21)
word(array11, 15)
word(array12, 17)
word(array13, 31)
word(array14, 24)

label(start)

	comment(` insert code to initialize sum to 0    ')
        load(zero)
        store(sum)

	comment(` insert code to initialize i to length ')
        load(length)
        store(i)

label(loop)

	comment(` Add the next element to the array and store in sum')
	load(sum)
	word(opcode,40)
	word(address,array0)
	store(sum)

	comment(` Increment the address by one')
	load(address)
	add(one)
	store(address)

	comment(` Count down from length to 0')
	load(i)
	sub(one)
	store(i)

	comment(` Once i hits zero, exit the program')
	bgt0(loop)

label(done)

	print(sum)

	halt

	end(start)
