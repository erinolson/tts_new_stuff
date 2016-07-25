def randomCalc():
    ops = {'+':operator.add,
           '-':operator.sub,
           '*':operator.mul,
           '/':operator.truediv}
    num1 = random.randint(0,12)
    num2 = random.randint(1,10)   # I don't sample 0's to protect against divide-by-zero
    op = random.choice(list(ops.keys()))
    answer = ops.get(op)(num1,num2)
    print('What is {} {} {}?\n'.format(num1, op, num2))
    return answer


def askQuestion():
    answer = randomCalc()
    guess = float(input())
    return guess == answer
Finally making a multi-question quiz

def quiz():
    print('Welcome. This is a 10 question math quiz\n')
    score = 0
    for i in range(10):
        correct = askQuestion()
        if correct:
            score += 1
            print('Correct!\n')
        else:
            print('Incorrect!\n')
    return 'Your score was {}/10'.format(score)
