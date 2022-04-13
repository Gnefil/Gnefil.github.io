---
title: Patterning in vertebrates anterior-posterior axis
catalog: true
lang: zh
date: 2022-02-08 15:21:46
subtitle: 模式化是塑造中枢神经系统（CNS）的多样性和每个部分的作用的关键过程之一。在这篇文章中，我们通过对这个问题的回答文章，探讨青蛙（Xenopus Laevis）的前后轴模式化。
header-img: https://raw.githubusercontent.com/Gnefil/Gnefil.github.io/main/img/post_images/patterning_bg.jpg
tags: [生物学, 神经科学, 发育生物学, 模式化, 如何制作大脑]
categories: [神经科学, 如何制造大脑]
---
## 选择一只脊椎动物的模型，并解释神经管如何沿着前后轴模式化。

模式化在早期胚胎发育中是必不可少的。它是分布在整个胚胎空间的形态原的不均匀浓度梯度的结果。前后轴模式化是诱导不同的细胞命运以正确的方式形成不同类型的细胞的关键步骤之一。青蛙（Xenopus Laevis）是探索这种模式化的脊椎动物的一个例子。

当中胚层形成阶段，Nieuwkoop中心向施佩曼组织者 (Spemann Organizer) 发出信号，使其产生骨形态发生蛋白（BMP）抑制剂，如Noggin、Chordin、Follistatin和Cerberus，使细胞返回到神经干细胞（NSC）的命运。一旦这种信号被移除，神经管内的前后轴模式化就开始了。之前形成的NSC不断增殖神经板，使其向前方跨越背侧表面，直到最终包裹成要形成的神经管。施佩曼组织者停止产生BMP抑制剂，开始分泌成纤维细胞生长因子（FGF）。因此，位于后部的Spemann Organizer建立了一个FGF梯度，且后部的浓度更高。

在前部，脊柱前板和中胚层承担着产生BMP抑制剂的功能，以及其他形态物质的许多抑制剂。这些包括WNT抑制剂如Dickkopf（DKK）和Retinoic Acids（RA）抑制剂如CYP26。BMP、RA和BMP阻断剂等形态物质共同建立了一个梯度，其中最高浓度在前部。
相比之下，后部由来自施佩曼组织者的FGF和WNT8、位于后部脊索两侧的旁中胚层释放的RA主导。在这里，RA形态物质是之后阐述Homeobox（HOX）基因的一个关键成分，特别是在前三个月（Moore, Persaud and Torchia 2013）。

请记住，Xenopus的胚胎干细胞默认落入神经干细胞（NSC）的命运，这是因为主转录因子SRY-box 2（SOX2）和Octamer结合转录因子4（OCT4）。由于不允许所有干细胞都是NSC，BMP和其他形态因子被生产出来，因为它们可以抑制SOX2和OCT4的表达，从而形成非NSC（NNSC）。后来，Spemann Organizer被用来生产BMP阻断剂，将默认行为重置为NSC。同样，现在，由于BMP阻断剂在前部激活SOX2-OCT4，导致主前部身份基因的表达：Orthodenticle homeobox 2（OTX2）。这在某种程度上意味着，整个NSC都注定要形成前部。然而，当施佩曼组织者停止分泌BMP抑制剂而转向FGF时，它也带回了SOX2和OCT4抑制家族，阻碍了后部的前部形成。与OTX2在前部的主导地位相反，后部的形态体表达了Gastrulation Brain Homeobox 2（GBX2）。

这是扩大前后形态梯度的第一次主要对抗，WNT8、RA和FGF与它们的抑制剂竞争，分别表达GBX2和OTX2。在这场战斗中，由于浓度低，它们创造的中间区形成了Isthmic Organizer。这个边界有相对幼稚的NSC，所以这个区域在未来会被另一个基因所塑造。另外，这个边界很重要，因为它塑造了中脑和后脑的边界。

在这个阶段，在神经管的前-后形态中，有三个不同的部分。第一个部分是前面的部分。它是由OTX2导致的，并且到目前为止一直是由NSC的默认命运发展的。OTX2对前部的形成至关重要，因为缺乏它导致前部和面颅的不形成（Sanes, Reh, Harris and Landgraf 2019）。没有它的突变体完全失去了前脑和中脑，后脑的部分也失去了，因为前部对Isthmic Organizer的形成很重要。

第二和第三部分都来自同一组形态原，但由于浓度的不同，它们导致了不同的激活基因。较低浓度的WNT8、RA和FGF存在于神经管的后脑，因此，只能附着于高亲和力的基因。而越靠近后脑，在这种情况下是脊髓，浓度越高，所以它可以同时激活低亲和力和高亲和力的基因。请注意，通常低亲和力的基因会抑制高亲和力的基因的表达，导致细胞类型的不同梯度。相应地，第二个主要模式部分在后脑，由GBX2主导。这个区不仅有GBX2，而且还有其他8个HOX基因得到参与构建后脑。从中，有一个是用来与前脑有最密切的联系，以构造小脑，其他7个基因画出不同的HOX梯度。缺乏GBX2将不能正确地形成后脑，而前部将直接连接到脊髓。

随后，Caudal Homeobox（CDX）基因描绘了神经管的第三个和最后面的区域。其他两个HOX基因与CDX基因一起形成图案，以充分区分细胞。缺乏CDX的突变体将错过脊髓。

一旦前部模式化稳定下来并确认了前脑和后脑的命运，它就停止分泌抑制剂，因为不再需要它们。因此，许多失活的基因又开始表达。其中，FGF8与OTX2和GBX2一起成为形成Isthmic Organizer的基本基因（Joyner, Liu and Millet 2000）。这个新的组织中心，除了帮助OTX2和GBX2的过渡外，还对其周围进行规划。它是未来间脑和元脑的组成部分，其中包括视网膜和小脑的柱状体。如果Xenopus突变体缺乏FGF8，它的中脑和后脑的形成就会有缺陷。

前后轴模式化对于脊椎动物神经管内各种细胞类型的形成是不可或缺的。前后轴模式化加上背腹模式化和不同的homeobox基因共同赋予神经母细胞独特的身份，以形成相关的细胞类型并执行未来的任务。

**参考文献:**
- Joyner, A.L., Liu, A., and Millet S. (2000) "Otx2, Gbx2 and Fgf8 interact to position and maintain a mid–hindbrain organizer", Current opinion in cell biology, 12(6), pp. 736-741.
- Moore, K.L., Persaud, T.V.N., and Torchia, M.G. (2013) The Developing Human: Clinically Oriented Embryology. 9th. Saunders, pp. 506-509.
- Sanes, D.H., Reh, T.A., Harris, W.A., and Landgraf, M. (2019) Development of the Nervous System. 4th. Academic Press, pp. 27-52
