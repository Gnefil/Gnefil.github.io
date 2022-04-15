---
title: Python parameters and arguments
catalog: true
lang: zh
date: 2022-02-15 00:18:36
subtitle: Python 简洁优雅的编码风格为开发者在编程时提供了极大的效率，尽管有时（指我自己）记住隐含的规范也是一件令人头疼的事。对于我来说，其中一个例子就是掌握Python的形参和实参。
header-img: https://raw.githubusercontent.com/Gnefil/Gnefil.github.io/src/img/post_images/python_parameters_arguments_bg.jpg
tags: [Python, 参数, 形参, 实参]
categories: [Python, 实用小笔记]
---
# 参数和参数
在Python中，一个函数和它的调用可能看起来像这样。

```python
def sum(a, b):
    print(a+b)

sum(3, 5) # Will print: 8
```

这里，`a`和`b`是所谓的**形式参数，是函数接受的值**。`3`和`5`是**实际参数**，是被送入函数的值。因此，在Python中，形参和实参有几种类型和规则，这便是本帖的主题。

---

## 形式参数
这些形参可以根据在函数声明中是否分配了默认值，分为**强制**和**默认**。另外，为了处理形参数量不确定的问题，函数可以有可变长度的形参（**任意形参**）。

### 强制形参 VS 默认形参
考虑以下这个函数。

```python
def sharing(number, fruit="apples", reaction="won't give you any"):
    print("I have {} {}, I {}".format(number, fruit, reaction))

sharing(3, "oranges") # Will print: I have 3 oranges, I won't give you any
```

#### 默认值
我们注意到，有两个形参带有等号`=`，它们是默认形参，或者说是**可选择的形参**。作为默认形参意味着它们在调用函数时**不一定会被传递**，像`reaction`，如果在调用`sharing`时没有传递形参，它就会被分配默认的字符串。当然，它们也可以在调用时被分配，并将被新的值覆盖，在这种情况下，`fruit`变成了`oranges`而不是`apples`。

#### 强制性
另一种形参是**强制性地需要赋值**，举个例子，这里是`number`。这些形参在调用函数时是必须的，否则将引发错误。


注意：默认形参必须出现在强制性形参之后。


### 任意位置/关键字形参
有时，当我们不确定要发送的值的数量时，我们想传递一个可变长度的实参，这里就是任意形参发挥作用的时候。

#### 位置
任意位置形参是用一个星号（*）加上这个任意形参的变量名称来声明的。比如说

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

从调用者那里"收集"归于任意实参的变量的规则是，在处理了所有可被接收的实参的形参**之后**，这些形参在任意位置形参之前。在这个例子中，`"Apple"`被填入`filler`，其余的实参就被纳入`*fruits`。这种形参的特点是最后会被纳为为一个元组，可以简单地用一个循环取出来。

#### 关键字
第二种任意形参被称为任意关键字形参。声明方式是双星号(\**)它们与前一种非常相似，只是它是以**关键字-值**对的形式存储的，因此有"关键字"一词。来看看这个例子。

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


注意：任意形参在每个函数中必须是唯一的，并且位于形参列表的最后位置。

---

## 实际参数(Arguments)
在调用函数时传递的值就是实参。它们也可以按分配到形参中的方式分类，分为**位置**和**关键字**。

此外，实参可以被严格被语法定义为**仅位置**，**位置性或关键字**，或**仅关键字**。

### 位置实参 VS 关键字实参
考虑以下函数。

```python
def sharing(number, colour="red", fruit="apples", reaction="won't give you any"):
    print("I have {} {} {}, I {}".format(number, colour, fruit, reaction))

sharing(3, "green", reaction="will give you some", fruit="oranges") # Will output: I have 3 green oranges, I will give you some
```

#### 位置
我们看到传递实参的常规方式，将实参的确切位置固定在我们想要的形参中，例如，`3`输入进`number`，`green`输入进`colour`。它们将按照准确的顺序进行匹配型参列表的顺序。


注意：假设`def f(a = 2, b = 4)`并以`f(5, a = 1) # Raise error`来调用。当前面的默认型参`a`用关键字实参分配时，你不应该用位置实参分配后面的默认实参`b`，因为编译器会认为`5`和`=1`都是在对`a`赋值。


#### 关键字
另一种赋值方式是直接"提起"我们想要赋值的变量，然后用`=`赋值，这就是`reaction`和`fruit`的例子。使用这种实参可以忽略实参的相对位置，在上面的例子中，我把`reaction`放在`fruit`前面，尽管顺序与声明时不一样。


注意：关键字实参必须在位置实参之后。

### 仅位置实参，位置实参或关键字实参，或仅关键字实参
当我们想通过限制形参的赋值方式来严格区分实参时，就可以使用这种语法。下面是一个使用这三种函数的例子。

```python
def add(a, b, /, c, d, *, f, e):
    print(a+b+c+d+e+f)

add(1, 6, 5, d=6, e = 2, f = 10) # Will print: 30 
```

即使看起来令人生畏，我们仍然可以在这种函数中使用之前提到的型参和实参语法（如默认型参）。

- ***仅位置***：这些实参位于列表的开始处直到`/`标记，在这个例子中是`a`和`b`。它们必须被指定为位置实参。当实参的顺序是不可忽视的，并且我们不关心实参的名字（也许没有实际意义）时，这种参数就派上用场了。
- ***位置或关键字***：位于`/`和`*`之间，它们可以使用位置实参或关键字实参，在这个例子中是`c`和`d`。
- ***仅关键字***。它们只能使用关键字赋值，如`e`和`f`。当我们想防止按位置输入数值或变量的名称具有重要意义时，请使用这种参数。

---

## 总结
在python中，形参和实参并不是一个很难的语法，尽管如果我们忽略了它们，它们可能会变得有点小麻烦。最后，这是一个总结性的帖子，主旨提醒我注意参数的不同类型。
