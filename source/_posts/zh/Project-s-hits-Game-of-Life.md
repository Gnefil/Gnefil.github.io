---
title: 'Project''s hits: Game of Life'
catalog: true
lang: zh
date: 2022-07-17 20:50:14
subtitle: 项目的毒打系列是笔者在写各个项目时，学或想到的一些有意思的小技巧。本篇文章是生命游戏的项目开发中遇到的一些毒打（当然，也受益匪浅），主要内容为CSS的clamp技巧以及如何将JS canvas图案旋转到任意角度绘制。
header-img: https://raw.githubusercontent.com/Gnefil/Gnefil.github.io/src/img/post_images/game_of_life_bg.png
tags: [CSS, JavaScript, clamp, canvas]
categories: [项目的毒打, 实用小笔记]
---

# 康威的生命游戏
康威的生命游戏（Conway's Game of Life）是一种细胞自动机。它虽然被称为游戏，却是一个零玩家的游戏。在这个自动机中，细胞们自主繁衍，进化，毁灭。它们或组成一个个有秩序的部落和"文明"，或默默地在历史中消失殆尽。笔者通过简易的HTML、CSS以及JS画出了一个动态生命游戏。玩家们扮演者至高者的角色，或冷漠地观察生命的演化，或于点击间改变一个细胞的生死以至于掌握文明的兴衰。关于这个项目的详情请移步到[简介](https://www.gnefil.com/projects/gameOfLife/index.html), 以及[项目](http://gameoflife.gnefil.com/)本身。

# 正文（毒打）
喜闻乐见的毒打环节orz，这次理解比较深刻的是：
- 解析**CSS clamp**对不同屏幕尺寸的调整
- 在**JS canvas**上将一个绘制好的**图案**，复制并**翻转**到不同角度上。

## CSS clamp
### clamp 语法
相信大家对clamp语法不是很陌生，若有必要可以查询[文档](https://developer.mozilla.org/zh-CN/docs/Web/CSS/clamp)。

#### clamp 变量
CSS的clamp函数接收以下变量:
```css
clamp(MIN, VAL, MAX)
```
然后会返还取决于这三个变量的一个数值。在这中间，如果`VAL`相当于的绝对数值不小于`MIN`且不大于`MAX`，那么clamp将返还`VAL`。

在这段描述中，可以看出`MIN`和`MAX`扮演着最大值和最小值的角色。如果`VAL`小于`MIN`则采用`MIN`。同样，如果`VAL`大于`MAX`则采用`MAX`。

这种功能其实可以被更早出现的`max()`，`min()`实现，甚至，clamp其实就相当于：
```css
max(MIN, min(VAL, MAX))
```
clamp不只是将它们合并起来，并且优化了`max()`和`min()`的名字和其实际应用是反直觉的问题。比如，当我们想定一个最小单位的字体大小，可能第一个想到的是`min()`。但这样只会进一步地**缩小**字体大小。这种时候需要的却是`max()`以在有更小的字体大小值时，选择那个最小制定的字体大小。而clamp很好地解决了这个反直觉问题。

#### clamp 例子
```css
font-size: clamp(5rem, 10vw, 20rem)
```

### clamp 解析
读者们在读的时候可能会有一个疑惑，`VAL`和`MIN`（以`MIN`举例但同样适用`MAX`）作为固定的CSS数值，它们怎么会时常`VAL`大`MIN`小，时常`VAL`小`MIN`大呢？
其实答案很简单，当这个数值取决于其他元素的大小而动态调整时，就会需要clamp来限制大小。

举个例子，例如上一个clamp代码例子，`10vw`在屏幕大小为2000px宽度时，为**200px**。假设此时`1rem`相当于16px，那么`MIN`等于**80px**。不难看出此时clamp将返还**200px** (没有大于20rem的320px)。

但如果用户在手机屏幕上进行阅览，那么屏幕大小可能缩小到400px宽度。此时`10vw`相当于**40px**，而`5rem`还是等于**80px**（在真实情况下，手机的rem其实会更小一些）。因此，根据clamp的规则，此时`VAL < MIN`，所以会返还`MIN`的**80px**，遵守了最小字体的大小。

因此可见clamp可以很便捷地限制大小，以达到动态的限制效果。但，它不仅仅可以中和过大过小，也可以更极限的超出比例拉长缩小，也是笔者在分析后得到的有趣结论之一。

#### clamp 的两种组合
到现在为止，不知道各位有没有注意到，笔者举的clamp例子的变量都是这个形式：
```css
clamp(固定值，比例，固定值)
```
那么如果我们以这个形式：
```css
clamp(比例，固定值，比例)
```
使用clamp的画会有什么奇特的效果呢？为此，我将这两种不同效果的clamp分别称呼为稳定clamp和变化clamp。
<br>

##### 稳定 clamp
稳定clamp其实是比较常规的clamp用法，例如用于稳定字体大小，图片大小。
```css
clamp(固定值，比例，固定值)
```
由于有着固定的数值限制，这个数值一般不会因为父元素/屏幕的大小而有很剧烈的变化。例如在小屏幕手机的时候不会因为屏幕的小而变得太小，也不会因为大型电脑屏幕而变得过大。**因此稳定clamp十分适合套用在重要的，需要稳定表现的元素，** 就比如字体，图片。
<br>

##### 变化 clamp
变化clamp的需求场景比较少，例子包括margin，padding和border。
```css
clamp(比例，固定值，比例)
```
在优先固定值的情况下，意味着就算不同屏幕下，这个元素的大小也会保持。在一些情况下，这个clamp也适用图片等需要固定大小的元素。但在多数情况下，我们可以充分利用两头限制的比例大小，而优先的固定值仅仅作为一个触发线，来分割大屏幕需要的比例和小屏幕需要的比例。

稳定clamp的出现已经解决了让两头的比例趋近于平衡的中间值，因此变化clamp的用处将是相反的，也就是加大两头的差别。这意味着在小屏幕的时候元素会变得比比例的大小还要小，在大屏幕，将会比贴合比例的大还要大。**因此变化clamp十分适合套用在不这么重要的，次要的，在屏幕较小时让出空间给更重要的元素发挥的，屏幕较大的时候可以填补空白的，元素，** 比如margin，padding和border。

### 小结
CSS clamp是一个相当适用的函数，可以在不同需求下变成不同的动态调整。如果想要研究最正确的clamp数值，还需要比例和固定值混杂的变量以达到最完美的表现。具体的数值可以参考网上关于clamp的最完美贴合需求参数相关关键字的搜索文章。
<br>
<br>

## JS canvas 图案翻转
在表现生命游戏的选择上，我使用了HTML的canvas来呈现动态视觉化。所以画细胞的时候也用到了canvas里面的绘画功能。那么每个生命该怎么表现呢笔者在几分钟的思考后决定使用一圈叶子来表示细胞。结果图：
![Cells in game of life](https://raw.githubusercontent.com/Gnefil/Gnefil.github.io/src/img/post_images/game_of_life_cell.png)

具体怎么实现呢？画出一整个细胞的函数`drawCell()`是这样的：
```javascript
// Draw whole cell
drawCell = (color, size) => {

    // Localise center of the diagram
    // i and j are attributes of each cell from Cell class
    // grid_size is the length of the square sides that each cell is in
    const x_center = (this.i + 0.5) * grid_size;
    const y_center = (this.j + 0.5) * grid_size;

    // ...

    // Draw each leaf
    this.drawLeaf(Math.PI / 4, x_center, y_center, size, color);

    // As many directions as wanted, towards different angle
    this.drawLeaf(Math.PI * 3 / 4, x_center, y_center, size, color);
    this.drawLeaf(Math.PI * 5 / 4, x_center, y_center, size, color);
    this.drawLeaf(Math.PI * 7 / 4, x_center, y_center, size, color);

    this.drawLeaf(0, x_center, y_center, size, color);
    this.drawLeaf(Math.PI/2, x_center, y_center, size, color);
    this.drawLeaf(Math.PI, x_center, y_center, size, color);
    this.drawLeaf(Math.PI*3/2, x_center, y_center, size, color);
}
```

我们首先需要画出一片叶子，也就是一个基础单位。再然后就可以呼叫这片叶子函数并旋转到不同角度。

### 画一片叶子

在`drawCell()`这个函数中，`drawLeaf()`被多次呼叫，来构成多个叶子簇拥的细胞图案。而`drawLeaf()`是这个样子的：
```javascript
// Draw single leaf
drawLeaf = (deg, x_center, y_center, size, color) => {

        // Draw 1 leave
        let p1 = {x: x_center, y: y_center - 1/2*size};
        let c1 = {x: x_center + 1 / 3 * size, y: y_center - 1 / 6 * size};
        let p2 = {x: x_center - 1 / 6 * size, y: y_center - 1 / 6 * size};
        let c2 = {x: x_center + 1 / 3 * size, y: y_center - 1 / 6 * size};
        let p3 = {x: x_center - 1/9 * size, y: y_center};
        let p4 = {x: x_center + 1/16 * size, y: y_center};
        let c4 = {x: x_center - 1/3 * size, y: y_center - 1/6 * size};
        let p5 = {x: x_center, y: y_center - 1/3 * size};
        let c5 = {x: x_center + 1/12 * size, y: y_center - 5/12 * size};

        ctx.beginPath();
        ctx.moveTo(p1.x, p1.y);
        this.drawCurve(p1, p2, c1, 1 / 2 * size);
        this.drawCurve(p2, p3, c2, 1 / 2 * size);
        ctx.lineTo(p4.x, p4.y);
        this.drawCurve(p4, p5, c4, 1 / 2 * size);
        this.drawCurve(p1, p5, c5, 1 / 12 * size);
        ctx.fillStyle = color;
        ctx.fill();

        // Draw the stems
        ctx.beginPath()
        ctx.moveTo(p1.x, p1.y);
        ctx.lineTo(x_center, y_center);
        ctx.strokeStyle = this.alive ? colors.vein_alive : (this.next_gen < 3 ? colors.vein_under_population : colors.vein_over_population);
        ctx.stroke();
        ctx.closePath();
    }
```

效果出来是这样的：
![One leaf in game of life](https://raw.githubusercontent.com/Gnefil/Gnefil.github.io/src/img/post_images/game_of_life_leaf.png)

这个例子如果跑起来，将只适用用于一片叶子，稍后我们看看怎么将它复制旋转。现在先简单地讲解一下怎么构造出一片叶子。

#### 点，线，面
笔者用的这种方法比较笨重和原始。可能更好的办法是直接使用画好的图片，再让canva自己画出一模一样的图片。

为了画出这片叶子，其中间的步骤并不难。先是假定我们要画的是朝上方的叶子，第一步是算出每一个用于勾勒轮廓的**关键点**。什么是关键点呢？指的是在画轮廓线的时候会出现变化的点。比如说，如果我们要画一个正方形的边，那么它的四个角就是关键点，因为线在这个点上会出现变化。同样，这个也适用于弧形，两个不同弧形的交接处也是一个关键点。在这个例子中`p1`到`p2`描绘的是左上方的弧形，而`p2`到`p3`勾勒的是另一个弧形，有着不同的圆心`c1`和`c2` (p.s. 现在是一样的了，但之前的的草稿图案中是两个不同的圆心，而且分成两部分比较直观，所以保留两个圆心)。

![Points in leaves](https://raw.githubusercontent.com/Gnefil/Gnefil.github.io/src/img/post_images/game_of_life_points.png)

关于关键点的坐标系，笔者采用了各自X，Y轴的中心点作为每一个细胞的坐标系。上方为+y，下方为-y，左边是-x，右边是+x这样有利于之后的根据中心点复制旋转其他叶子，毕竟旋转的轴心就是X，Y轴的中心点。当然，也可以采用左上角的角落作为坐标系的中心点。以各自中心点找到各个关键点的相对坐标是一个比较冗长且需要尝试的步骤。

使用这种方法后，接下来可以用不同的关键点连出一段段**线**。例如`drawCurve()`虽然是一个Cell类的自定义函数，里面其实就是一个`ctx.arc()`，一个用于画曲线的JavaScript函数。还有比如`lineTo()`也是画线的函数，它画的就是基础直线。

最后就是将线连起来的面积填充成完整的叶子的一**面**。填充可以使用`ctx.fill()`来做到。最后的最后笔者还加了一些线当作叶脉，作为点缀。

### 画多片叶子
复制并粘贴来画多片叶子其实并不难，只需要多呼叫几次`drawLeaf()`就可以了。问题是如何有规律的旋转呢？

对于这种需要角度，周期性的方法，笔者通常第一想到的就是三角函数。如果用sin和cos来有规律的加，减，0，1，那是不是能够达到这种效果呢？答案是肯定的。

起初，笔者想到的是这种方法：假设每一个点有x和y偏移量，称dx，dy，可以是正或负或无。这个偏移量d是和中轴的差，比如`p1`的dy就是-1/2.暂时忽略`size`因为它的值是不变的。那么就可以用cos和sin来周期性地增加减少d。比如上叶子的`p1`-dx在有叶子上应该是+dy，这个画面应该不难想象，各位读者可以试试看。

#### 天真的尝试
每一个点的dx和dy，在每一个角度中都会增加一部分其中一个偏移量，而减少另一个偏移量，到最后甚至dx跑到y上，dy跑到x上。这是为了保证叶子的坐标是具有周期性的。当然，当dx和dy在不同角度下已经不一定是表示x和y的偏移量，那我们就给它们换一个名称。我们称原始叶子的x偏移量**d1**而不再是dx，y偏移量**d2**而不再是dy。

这个周期性和偏移量听起来可能很绕，用表格表示就是：

| 90º leaf | xd1 | xd2 | yd1 | yd2 |
|----------|-----|-----|-----|-----|
| Scale    | 1   | 0   | 0   | 1   |

这个应该不难理解。在最原始的90°叶子上，x有多少d1，多少d2？因为我们已经定义过**原始叶子的x偏移量是d1，y偏移量是d2**了，所以x有完整d1而无d2。而y有完整d2而无d1。

于是笔者很理所当然的觉得剩下的角度规律应该是这样的：
| Any leaf | xd1 | xd2 | yd1 | yd2 |
|----------|-----|-----|-----|-----|
| Degrees  | sin | cos | cos | sin |

就有了以下代码：
```javascript
// Attempt for multiple leaves
drawLeaf = (deg, x_center, y_center, size, color) => {
    let cos = Math.cos(deg);
    let sin = Math.sin(deg);

    // Draw 1 leave
    // let p1 = {x: x_center, y: y_center - 1/2*size};
    // let c1 = {x: x_center + 1 / 3 * size, y: y_center - 1 / 6 * size};
    // let p2 = {x: x_center - 1 / 6 * size, y: y_center - 1 / 6 * size};
    // let c2 = {x: x_center + 1 / 3 * size, y: y_center - 1 / 6 * size};
    // let p3 = {x: x_center - 1/9 * size, y: y_center};
    // let p4 = {x: x_center + 1/16 * size, y: y_center};
    // let c4 = {x: x_center - 1/3 * size, y: y_center - 1/6 * size};
    // let p5 = {x: x_center, y: y_center - 1/3 * size};
    // let c5 = {x: x_center + 1/12 * size, y: y_center - 5/12 * size};


    // Draw leaf depending on degree
    let p1 = { x: x_center - sin * 1 / 2 * size, y: y_center - cos * 1 / 2 * size };
    let c1 = { x: x_center + cos * 1 / 3 * size - sin * 1 / 6 * size, y: y_center + sin * 1 / 3 * size - cos * 1 / 6 * size };
    let p2 = { x: x_center - 1 / 6 * size, y: y_center - 1 / 6 * size };
    let c2 = { x: x_center + cos * 1 / 3 * size - sin * 1 / 6 * size, y: y_center + sin * 1 / 3 * size - cos * 1 / 6 * size };
    let p3 = { x: x_center - cos * 1 / 9 * size, y: y_center - sin * 1 / 9 * size };
    let p4 = { x: x_center + cos * 1 / 16 * size, y: y_center + sin * 1 / 16 * size };
    let c4 = { x: x_center - cos * 1 / 3 * size - sin * 1 / 6 * size, y: y_center - sin * 1 / 3 * size - cos * 1 / 6 * size };
    let p5 = { x: x_center - sin * 1 / 3 * size, y: y_center - cos * 1 / 3 * size };
    let c5 = { x: x_center + cos * 1 / 12 * size - sin * 5 / 12 * size, y: y_center + sin * 1 / 12 * size - cos * 5 / 12 * size };

    // ...
```


**但是**，一旦尝试用这种写法的画的话，会出现错误，叶子根本就不像是叶子，各种坐标像是紊乱了。讲道理，当写代码解析到这里，笔者发现这里的叶子竟然是不对的，心里是崩溃的。那铁定不能放弃的啊，于是继续尝试，比如将sin和cos调换，把初始角度设成0º，等等等等，但就是不行。到最后都有点想放弃，直接用方块完事了。这时候笔者尝试把对的，完整的角度表格写出来，结果竟然是这样的。

#### 最终的规律
当笔者把每一个角度对应的值写出来后，它长这个样子：

| Degrees | xd1 | xd2 | yd1 | yd2 |
|---------|-----|-----|-----|-----|
| 0       | 0   | -1  | 1   | 0   |
| 90      | 1   | 0   | 0   | 1   |
| 180     | 0   | 1   | -1  | 0   |
| 270     | -1  | 0   | 0   | -1  |

比较一下后，可以发现关键的三角函数并不是：
| Any leaf | xd1 | xd2 | yd1 | yd2 |
|----------|-----|-----|-----|-----|
| Degrees  | sin | cos | cos | sin |

而是
| Any leaf | xd1 |  xd2 | yd1 | yd2 |
|----------|-----|------|-----|-----|
| Degrees  | sin | -cos | cos | sin |

因为cos和-cos都等于0，而笔者忽略了-sin和-cos这个部分，才导致代码一直画的不对。所以立马拿了其他角度来核对，结果发现每个角度的d1和d2都完美地对上了！

笔者立马用在代码里，如下：
```javascript
// Abstracted for all degrees
drawLeaf = (deg, x_center, y_center, size, color) => {

    // ...

    // Need in x and y, take angle of leave's tip as the theta
    // subset meaning d
    // x: subset1 -> sin
    // x: subset2 -> -cos
    // y: subset2 -> sin
    // y: subset1 -> cos

    const sin = Math.sin(deg);
    const cos = Math.cos(deg);


    let p1 = { x: x_center + sin * 0 - (-cos) * 1 / 2 *  size, y: y_center - sin * 1 / 2 * size + cos * 0};
    let c1 = { x: x_center + sin * 1 / 3 * size - (-cos) * 1 / 6 * size, y: y_center - sin * 1 / 6 * size + cos * 1 / 3 * size };
    let p2 = { x: x_center - sin * 1 / 6 * size - (-cos) * 1 / 6 * size, y: y_center - sin * 1 / 6 * size - cos * 1 / 6 * size };
    let c2 = { x: x_center + sin * 1 / 3 * size - (-cos) * 1 / 6 * size, y: y_center - sin * 1 / 6 * size + cos * 1 / 3 * size };
    let p3 = { x: x_center - sin * 1 / 9 * size + (-cos) * 0, y: y_center + sin * 0 - cos * 1 / 9 * size };
    let p4 = { x: x_center + sin * 1 / 16 * size + (-cos) * 0, y: y_center + sin * 0 + cos * 1 / 16 *  size };
    let c4 = { x: x_center - sin * 1 / 3 * size - (-cos) * 1 / 6 * size, y: y_center - sin * 1 / 6 * size - cos * 1 / 3 * size };
    let p5 = { x: x_center + sin * 0 - (-cos) * 1 / 3 *  size, y: y_center - sin * 1 / 3 * size + cos * 0};
    let c5 = { x: x_center + sin * 1 / 12 * size - (-cos) * 5 / 12 * size, y: y_center - sin * 5 / 12 * size + cos * 1 / 12 * size };

    // ...
}
```

成功地得到想要地叶子细胞！
![Cells in game of life](https://raw.githubusercontent.com/Gnefil/Gnefil.github.io/src/img/post_images/game_of_life_cell.png)

### 小结
在这个JavaScript canvas篇，我们学会了如何用三角函数来旋转复制一个特定图案。如果角度需求和坐标系是中心点的，可以直接用笔者最后得出的规律表格，直接使用这些三角函数即可。不过更重要的是这个可以适用于不同场景，不同角度。本文介绍了一个思路，一个可以被借鉴然后优化的例子。


## 结尾
总体来说，笔者在写这个项目的时候有需要面临挑战，需要不懈坚持，享受了过程。也学到了不少东西，总结出来给大家启发。希望有帮助到各位，如果没有的话也算是读了篇补充额外知识的有趣文章。