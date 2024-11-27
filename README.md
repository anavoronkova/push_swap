# Push_swap

## Summary
**Push_swap** is a C project focused on sorting data using two stacks with a limited set of operations. The goal is to find the most efficient way to sort the stack with the lowest possible number of actions, enhancing skills in algorithms and complexity management.

## Introduction
The **Push_swap** project involves sorting a stack of integers using two stacks (`a` and `b`) and a set of specific operations. The task is to write a program that calculates and displays the smallest sequence of operations needed to sort the stack in ascending order. This project helps in understanding sorting algorithms and their computational complexity.

## Installation
1. Clone the repository:
   ```
   git clone <repository_url>
   ```
2. Navigate to the project directory:
   ```
   cd push_swap
   ```
3. Compile the project:
   ```
   make
   ```

## Usage
Run the program with:
```
./push_swap <list_of_integers>
```
Replace `<list_of_integers>` with the list of numbers to be sorted.

## Features
- **Operations**: Utilize operations like `sa`, `sb`, `ss`, `pa`, `pb`, `ra`, `rb`, `rr`, `rra`, `rrb`, and `rrr` to sort the stacks.
- **Two Stack System**: Stack `a` is used to store the initial values while stack `b` is empty initially.
- **Error Handling**: Handles errors like invalid arguments, non-integer inputs, duplicate values, and values out of integer range.
- **Efficient Sorting**: Outputs the smallest list of operations to sort the stack.

## Example
To sort a list of integers:
```
./push_swap 4 67 3 87 23
```
The program will output the operations needed to sort the stack:
```
pb
sa
pb
ss
pa
pa
```
