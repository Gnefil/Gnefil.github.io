---
title: Python parameters and arguments
catalog: true
lang: en
date: 2022-02-15 00:17:54
subtitle: Python's shorten and elegant coding style provides great efficiency to developers when programming, though sometimes (referring to myself) it can be a headache remembering implicit specifications. In particular, I had to fight hard to master python parameters and arguments.
header-img: https://raw.githubusercontent.com/Gnefil/Gnefil.github.io/main/img/post_images/python_parameters_arguments_bg.jpg
tags: [Python, Arguments, Parameters, Functions]
categories: [Python, Handy Tips]
---

# Parameters and arguments
In python, a function and its call may look like this:

```python
def sum(a, b):
    print(a+b)

sum(3, 5) # Will print: 8
```

Here, `a` and `b` are what is called **formal parameters** which are the values that a function accepts.`3` and `5` are **actual parameters** or **arguments** which are the values that are sent into the function. Accordingly, there are several types and rules for parameters and arguments in python which are the topic of this post.

---

## Formal parameters
These parameters can be classified into **mandatory** or **default** according to whether a default value is assigned in the function declaration. Also, to deal with an unsure number of parameters, functions may have variable-length parameters (**arbitrary parameters**).

### Mandatory VS Default parameters
Consider the following function:

```python
def sharing(number, fruit="apples", reaction="won't give you any"):
    print("I have {} {}, I {}".format(number, fruit, reaction))

sharing(3, "oranges") # Will print: I have 3 oranges, I won't give you any
```

#### Default
We notice that two of the parameters have an equal sign `=` with them, they are the default parameters, or the *optional* parameters. Being a default parameter means they are **not necessarily passed** when calling the function, like `reaction`, it is assigned with the default string if no argument is passed when calling `sharing`. Of course, they can be assigned when calling and will be overridden by the new value, in this case, `fruit` becomes `oranges` instead of `apples`.

#### Mandatory
Another kind of parameter is **mandatory assigned**, as an example, `number` here. These parameters are required when calling the function, otherwise will raise an error.


Note that: default parameters must appear after mandatory parameters.


### Arbitrary positional/keyword parameters
Sometimes, we want to pass a variable length of arguments when we are unsure of the number of values is being sent, here is when arbitrary parameters enter in the game.

#### Positional
Arbitrary positional parameters are declared by one asterisk (*) followed by the name of the variable containing this arbitrary parameter. For example:

```python
def juicy(filler, *fruits):
    for fruit in fruits:
        print(fruit+" is juicy")

# Will print: 
# Watermelon is juicy
# Orange is juicy
# Grapes is juicy
juicy("Apple", "Watermelon", "Orange", "Grapes")
```

The rule to "collect" values from the caller is, **after** processing all retrievable arguments for parameters that are before the arbitrary positional parameters. In this example, `"Apple"` is filled into `filler`, and the rest of the arguments are then included in `*fruits`. This kind of parameter is characterised by grouping into a tuple and can be taken out simply with a loop.

#### Keyword
The second kind of arbitrary parameter is called the arbitrary keyword parameter. They can be declared with double asterisk (\**). This is very similar to the previous one, only that it is stored as **key-value pairs**, hence the word "keyword". Another example:

```python
def fruit_colour(**fruits):
    for fruit, colour in fruits.items():
        print("{} is {}".format(fruit, colour))

# Will print:
# Apple is red
# Orange is orange
# Banana is yellow
fruit_colour(Apple = "red", Orange = "orange", Banana = "yellow")
```


Note that: arbitrary parameters must be unique in each function and are in the last positions of the parameter list.

---

## Actual parameters (Arguments)
Values that are passed in the calling of the function are the arguments. They can also be classified by the way they are assigned into the parameters, into **positional** or **keyword**.

Furthermore, the arguments can be strictly defined into **positional-only**, **positional or keyword**, or **keyword-only**.

### Positional VS Keyword arguments
Consider the following function:

```python
def sharing(number, colour="red", fruit="apples", reaction="won't give you any"):
    print("I have {} {} {}, I {}".format(number, colour, fruit, reaction))

sharing(3, "green", reaction="will give you some", fruit="oranges") # Will output: I have 3 green oranges, I will give you some
```

#### Positional
We see the regular way of passing arguments, by fixing the exact position of the arguments into the parameters we want them to be, e.g. `3` for `number` and `green` for colour. They are matched according to the exact order as they are passed to the exact order of the parameter list.


Note that: suppose `def f(a = 2, b = 4)` and calling with `f(5, a = 1) # Raises error`. You shouldn't assign an later default parameters `b` by positional arguments when having preceding default parameter `a` assigned with keyword argument, because the compiler will think both `5` and `= 1` is for `a`.


#### Keyword
Another way of assigning is to directly "extract" the variable we want to assign and assign it with `=`, this is the case of `reaction` and `fruit`. Using this kind of argument let you ignore the relative positions of the parameters, in the above example I placed `reaction` before `fruit` although the order is not equal to when declared.


Note that: the keyword arguments must be after the positional arguments.

### Positional-only, positional or keyword, or keyword-only
This technique is used when we want to strictly separate the arguments by limiting the ways they can assign to parameters. Following is an example using all three kind of function:

```python
def add(a, b, /, c, d, *, f, e):
    print(a+b+c+d+e+f)

add(1, 6, 5, d=6, e = 2, f = 10) # Will print: 30 
```

Even seem daunting, we can still use the parameters and arguments strategies (like default parameters) mentioned before, in this pattern.

- ***Positional-only***: These are marked by the start of parameter list until `/`, in this example `a` and `b`. They must be assigned positional arguments. This can be useful when the order of the arguments is fundamental and we don't care about the arguments name (maybe no real meaning).
- ***Positional or keyword***: Limited by `/` and `*`, they can use positional or keyword arguments, in this example `c` and `d`. 
- ***Keyword-only***: They can only be assigned using a keyword like `e` and `f`. It is important in the case when we want to prevent entering values by position or when the name of the variable has essential importance.

---

## Conclusion
Parameters and arguments is not a hard topic in python, though it can be a bit tricky if we overlook them. This is a summary post mainly to remind me of distinct types of parameters and arguments.