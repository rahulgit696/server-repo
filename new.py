# numbers = [1,2,3,2,2,2,33,4,5,5,5,6,67,88,88,99]
# unique_numbers = []
# for num in numbers:
#     if num not in unique_numbers:
#         unique_numbers.append(num)
# print(unique_numbers)

def letter_combinations(digits):
    if not digits:
        return []
    phone = {'2': ['a', 'b', 'c'],
             '3': ['d', 'e', 'f'],
             '4': ['g', 'h', 'i'],
             '5': ['j', 'k', 'l'],
             '6': ['m', 'n', 'o'],
             '7': ['p', 'q', 'r', 's'],
             '8': ['t', 'u', 'v'],
             '9': ['w', 'x', 'y', 'z']}
    res = []
    def backtrack(combination, next_digits):
        if len(next_digits) == 0:
            res.append(combination)
        else:
            for letter in phone[next_digits[0]]:
                backtrack(combination + letter, next_digits[1:])
    backtrack("", digits)
    return res
num = "33"
second = letter_combinations(num)
print(second)