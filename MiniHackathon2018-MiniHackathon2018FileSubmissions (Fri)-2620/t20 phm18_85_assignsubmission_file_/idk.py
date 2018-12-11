import create_list
#
nums = open('numbers.txt', 'r+')

numbers = []
for line in nums:
    numbers.append(int(line))

# counter = 0
# first = numbers[0]
#
# ans = 0
# for n in numbers:
#     if (n + numbers[counter + 1] + numbers[counter + 2])==first:
#         ans += 1
#     print(ans)
#     counter += 1


def is_prime_number(x):
    if x >= 2:
        for y in range(2,x):
            if not ( x % y ):
                return False
    else:
	return False
    return True

counter = 0
for n in numbers:
    if is_prime_number(n):
        counter += 1;

print(counter)
