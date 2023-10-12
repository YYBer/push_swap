# push_swap

This is an algorithm project of 42.


For any random non-repeating set of numbers, they need to be sorted from smallest to largest. 

![image](https://github.com/YYBer/push_swap/blob/main/push_swap.gif)

The alignment can only use the following rules:

sa (swap a) : Swap the top two numbers in A

sb (swap b) : Swap the top two numbers in B

ss : sa + sb

ra (rotate a) : Top number in A goes to bottom of A

rb (rotate b) : Top number in B goes to bottom of B

rr : ra + rb

rra (reverse rotate a) : Bottom number in A goes to top of A

rra (reverse rotate b) : Bottom number in B goes to top of B

rrr : rra + rrb

pa (push a) : Top number in B goes to top of A

pb (push b) : Top number in A goes to top of B

For 100 numbers，average 650 steps.

For 500 numbers, average 5300-5400 steps.

I wrote a post in honor of this favorite project of mine: https://medium.com/@YYBer/my-one-month-push-swap-journey-explore-an-easily-understand-and-efficient-algorithm-11449eb17752

----------------
for checker.sh, you have to 
chmod 777 checker_linux
then
./checker.sh
