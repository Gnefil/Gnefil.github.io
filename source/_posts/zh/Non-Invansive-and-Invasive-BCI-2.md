---
title: Pros & Cons of Non-Invasive and Invasive BCI - PART 2
catalog: true
lang: zh
date: 2022-06-03 12:24:17
subtitle: 脑计算机接口（BCI）总会给人感觉是一种乌托邦式未来的科技。它是一项雄心勃勃的技术，企图将人脑与数字计算机连接起来。假如在不遥远的未来，我们可以装上脑机接口，你将如何在这两种类型中选择；非侵入性BCI或侵入性BCI？
header-img: https://raw.githubusercontent.com/Gnefil/Gnefil.github.io/src/img/post_images/bci_bg.jpg
tags: [生物学, 神经科学, 脑机接口]
categories: [神经科学, 脑机接口]
---

# 那又为什么要用有创BCI而不是无创BCI
---
综上所述，PART 1 回顾了非侵入性BCI的优点和侵入性BCI的缺点，包括全局范围的检测、安全性、便利性和公众接受度。接下来的部分是有创BCI的优点和无创BCI的缺点，着重讨论点是信息的质量和种类、传输率和各方法的潜力。

这是讨论的第二部分，我们将讨论为什么我们应该选择 **_侵入式_** BCI而不是非侵入式BCI
<br/>

## 越近越好

谈到侵入性方法时可能会提出一个问题，即如果基于EEG的BCI已经能够检测信号，为什么还需要侵入性BCI？其实其主要问题是，由于EEG的性质，它只能记录有限质量的信号，而且传输率低。由于这一问题，有部分研究一直在寻找更快和更准确数据的新可能性，例如侵入性BCI。

### 脑电图的分辨率不足
如前所述，在介绍每种类型BCI的方法时，数据质量差往往是无创BCI的首要弊端。质量受限于三个方面：低空间分辨率（Belkacem等，2020；Millán和Carmena，2010；He、Dong和Qi，2020），大部分为低振幅信号（Lachaux，2012）和低频信号记录（Muthukumaraswamy，2013）。脑电图检测潜力的空间分辨率低，因为它不够精细，无法准确记录皮层中的目标组织，从外部记录。当试图垂直探索时，在大脑皮层的深层，EEG无法识别，这一点尤其真实。此外，EEG接收到的电位振幅较低，因为它离源点（皮层内部）较远，振幅在经过这一距离时得到衰减。同样，外部记录能够检测到的频率带宽也会变窄，因为组织会吸收高频率的信号。

### 有创特性决定了是更优质的数据
相比之下，MEA的优势在于紧贴大脑皮层的目标区域。导致在所有维度上都有很好的空间分辨率，包括多层的检测，更高的更广泛的振幅范围和更宽的频率带宽（Lebedev和Nicolelis，2006；Lebedev和Nicolelis，2017；Millán和Carmena，2010；He, Dong和Qi，2020；Waldert，2016）。
<br/>

## 有效信息传输率

除数据质量外，侵入性BCI在数据传输速度上也超过了非侵入性；无论是信噪比还是物理上的速度。

### 信息高速和内城慢速道
现在，转向信息传输率，这是另一个有利于侵入性BCI的问题（Wolpaw等人，2002）。信息传输率与提取相关信息的速度有关。它超越了信噪比，因为信噪比可以单独考虑，而前者是所有多次试验的速率，并考虑检索过程。
<br>

![Transition image](https://raw.githubusercontent.com/Gnefil/Gnefil.github.io/src/img/post_images/bci_transition_2.jpg)
<br>


与侵入性方法的高效传输率相比，非侵入性的传输率非常低（Millán和Carmena，2010）。这种低比率可能是由于混有背景电磁的微弱信号造成的。此外，这些加上头皮的不规则导电性和它能放置的电极数量有限。因此，无创脑电图需要多次试验来记录完整的信号（Carpi, De Rossi and Menon, 2006）。此外，位于记录路径中间的肌肉伪影严重干扰了原始电位。另一个失真来源是细胞外环境，它在不同程度上影响了信号向EEG的传输。总之，非侵入性BCI的噪音影响非常大，几十年来一直限制着EEG的进一步发展（Millán和Carmena，2010）。另一方相反，由于MEA（有创BCI）对电位的封闭性，所有这些噪音对MEA来说都是微不足道的，因此一般来说传输率很高（Waldert，2016）。
<br/>

## 非侵入性的改进
尽管如此，非侵入性学界并没有停止寻找这些问题的解决方案。Wolpaw等人（2002年）提出了几条非侵入性权衡的优化路线，有几个已经找到了解决方案。其中之一是减少肌肉伪影，Muthukumaraswamy（2013）讨论了推荐的方法。此外，由于记录方面的优化很难，已经有算法在信号转换方面提高BCI性能（Lotte等人，2007；Schalk等人，2004）。最后，关于非侵入性的快速适应性的工作似乎也加快了整体的速度（Blankertz等人，2007）。总的来说，非侵入性限制的发展在一定程度上帮助弥补了性能不佳的问题。
<br/>

## 未来的潜力
在最后一节，侵入式方法所具有的最有价值的特点可能是它仍然具有的所有潜力。随着BCI研究的进展，现有越来越多的解决方案针对侵入性BCI的弊端。例如，在谈到第一部分的安全性和长期退化时，已经提到了一些改进。其次，由于MEA的直接连接，它可能是阐述体感输入的一种方法（Waldert，2016）。由于这些改进，侵入性方法具有不可忽视的潜力（Lebedev和Nicolelis，2006；Saha等人，2021）。另一方面，非侵入性方法的改进受到EEG外部性质的严重限制；即使在记录数据的方面进行了优化，但在过去的50年里，低质量和单调数据类型的主要障碍没有太大变化（Millán和Carmena，2010）。
<br>

![Transition image](https://raw.githubusercontent.com/Gnefil/Gnefil.github.io/src/img/post_images/bci_transition_3.jpg)


## ECoG，半侵入性BCI
有趣的是，有一种方法被归类为半侵入性，即皮质电图（ECoG）或颅内脑电图（iEEG）。这种技术提供了弥补脑电图空间分辨率差和更多侵入性方法的临床风险的可能性（Leuthardt等人，2004）。目前，这也是一条研究路线（Khodagholy et. Al, 2015），试图呼吁平衡这两个大分支的优势，同时减少劣势。
<br>
<br>


# 总结
---
总而言之，本次讨论反映了两种BCI的优点和缺点。目前，它们都是当前BCI研究中必不可少的方法。非侵入性方法已发展为一种成熟的技术，具有不可替代的优势，而侵入性BCI可以带来最优质的数据，并且仍在发展中。考虑到这两种方法，这仍然是一个适合每种情况的方法问题。未来的趋势显示，在探索非侵入性BCI的广泛机会的同时，对危害较小和更好的侵入性BCI有很高的期望。该讨论侧重于对这些技术的优点和缺点的总体概述，下一步可能是研究真实案例的性能及其影响。
<br>
<br>

# 参考文献
References from both parts:
- Belkacem, A. N., Jamil, N., Palmer, J. A., Ouhbi, S. and Chen, C. (2020) 'Brain computer interfaces for improving the quality of life of older adults and elderly patients', Frontiers in Neuroscience, 14, pp. 692.
- Blankertz, B., Dornhege, G., Krauledat, M., Kunzmann, V., Losch, F., Curio, G. and Müller, K. (2007) '5 The Berlin Brain-Computer Interface: Machine Learning-Based Detection of User Speciﬁc Brain States', Dornhege, G., del, R., Millán, J., Hinterberger, T., McFarland, D., Müller, KR (eds.) Toward Brain-Computer Interfacing, pp. 85-101.
- Carpi, F., De Rossi, D. and Menon, C. (2006) 'Non invasive brain-machine interfaces', ESA Ariadna Study, 5, pp. 6402.
- Chung, J. E., Joo, H. R., Fan, J. L., Liu, D. F., Barnett, A. H., Chen, S., Geaghan-Breiner, C., Karlsson, M. P., Karlsson, M. and Lee, K. Y. (2019) 'High-density, long-lasting, and multi-region electrophysiological recordings using polymer electrode arrays', Neuron, 101(1), pp. 21-31. e5.
- Collinger, J. L., Boninger, M. L., Bruns, T. M., Curley, K., Wang, W. and Weber, D. J. (2013) 'Functional priorities, assistive technology, and brain-computer interfaces after spinal cord injury', Journal of rehabilitation research and development, 50(2), pp. 145.
- Hanson, T. L., Diaz-Botia, C. A., Kharazia, V., Maharbiz, M. M. and Sabes, P. N. (2019) 'The “sewing machine” for minimally invasive neural recording', BioRxiv, pp. 578542.
- He, G., Dong, X. and Qi, M. (2020) 'From the perspective of material science: a review of flexible electrodes for brain-computer interface', Materials Research Express, 7(10), pp. 102001.
- Hochberg, L. R., Bacher, D., Jarosiewicz, B., Masse, N. Y., Simeral, J. D., Vogel, J., Haddadin, S., Liu, J., Cash, S. S. and Van Der Smagt, P. (2012) 'Reach and grasp by people with tetraplegia using a neurally controlled robotic arm', Nature, 485(7398), pp. 372-375.
- Khodagholy, D., Gelinas, J. N., Thesen, T., Doyle, W., Devinsky, O., Malliaras, G. G. and Buzsáki, G. (2015) 'NeuroGrid: recording action potentials from the surface of the brain', Nature neuroscience, 18(2), pp. 310-315.
- Lachaux, J.-P., Axmacher, N., Mormann, F., Halgren, E. and Crone, N. E. (2012) 'High-frequency neural activity and human cognition: past, present and possible future of intracranial EEG research', Progress in neurobiology, 98(3), pp. 279-301.
- Lebedev, M. A. and Nicolelis, M. A. (2006) 'Brain–machine interfaces: past, present and future', TRENDS in Neurosciences, 29(9), pp. 536-546.
- Lebedev, M. A. and Nicolelis, M. A. (2017) 'Brain-machine interfaces: From basic science to neuroprostheses and neurorehabilitation', Physiological reviews, 97(2), pp. 767-837.
- Leuthardt, E. C., Schalk, G., Wolpaw, J. R., Ojemann, J. G. and Moran, D. W. (2004) 'A brain–computer interface using electrocorticographic signals in humans', Journal of neural engineering, 1(2), pp. 63.
- Lotte, F., Congedo, M., Lécuyer, A., Lamarche, F. and Arnaldi, B. (2007) 'A review of classification algorithms for EEG-based brain–computer interfaces', Journal of neural engineering, 4(2), pp. R1.
- Millán, J. d. R. and Carmena, J. (2010) 'Invasive or noninvasive: understanding brain-machine interface technology', IEEE Engineering in Medicine and Biology Magazine, 29(ARTICLE), pp. 16-22.
- Musk, E. (2019) 'An integrated brain-machine interface platform with thousands of channels', Journal of medical Internet research, 21(10), pp. e16194.
- Muthukumaraswamy, S. (2013) 'High-frequency brain activity and muscle artifacts in MEG/EEG: a review and recommendations', Frontiers in human neuroscience, 7, pp. 138.
- Norton, J. J., Lee, D. S., Lee, J. W., Lee, W., Kwon, O., Won, P., Jung, S.-Y., Cheng, H., Jeong, J.-W. and Akce, A. (2015) 'Soft, curved electrode systems capable of integration on the auricle as a persistent brain–computer interface', Proceedings of the National Academy of Sciences, 112(13), pp. 3920-3925.
- Saha, S., Mamun, K. A., Ahmed, K., Mostafa, R., Naik, G. R., Darvishi, S., Khandoker, A. H. and Baumert, M. (2021) 'Progress in brain computer interface: challenges and opportunities', Frontiers in Systems Neuroscience, pp. 4.
- Schalk, G., McFarland, D. J., Hinterberger, T., Birbaumer, N. and Wolpaw, J. R. (2004) 'BCI2000: a general-purpose brain-computer interface (BCI) system', IEEE Transactions on biomedical engineering, 51(6), pp. 1034-1043.
- Serruya, M. D., Hatsopoulos, N. G., Paninski, L., Fellows, M. R. and Donoghue, J. P. (2002) 'Instant neural control of a movement signal', Nature, 416(6877), pp. 141-142.
- Shih, J. J., Krusienski, D. J. and Wolpaw, J. R. 'Brain-computer interfaces in medicine'. Mayo clinic proceedings: Elsevier, 268-279.
- Velliste, M., Perel, S., Spalding, M. C., Whitford, A. S. and Schwartz, A. B. (2008) 'Cortical control of a prosthetic arm for self-feeding', Nature, 453(7198), pp. 1098-1101.
- Waldert, S. (2016) 'Invasive vs. non-invasive neuronal signals for brain-machine interfaces: will one prevail?', Frontiers in neuroscience, 10, pp. 295.
- Wessberg, J., Stambaugh, C. R., Kralik, J. D., Beck, P. D., Laubach, M., Chapin, J. K., Kim, J., Biggs, S. J., Srinivasan, M. A. and Nicolelis, M. A. (2000) 'Real-time prediction of hand trajectory by ensembles of cortical neurons in primates', Nature, 408(6810), pp. 361-365.
- Wolpaw, J. R. (2013) 'Brain–computer interfaces', Handbook of Clinical Neurology: Elsevier, pp. 67-74.
- Wolpaw, J. R., Birbaumer, N., Heetderks, W. J., McFarland, D. J., Peckham, P. H., Schalk, G., Donchin, E., Quatrano, L. A., Robinson, C. J. and Vaughan, T. M. (2000) 'Brain-computer interface technology: a review of the first international meeting', IEEE transactions on rehabilitation engineering, 8(2), pp. 164-173.
- Wolpaw, J. R., Birbaumer, N., McFarland, D. J., Pfurtscheller, G. and Vaughan, T. M. (2002) 'Brain–computer interfaces for communication and control', Clinical neurophysiology, 113(6), pp. 767-791.
- Wolpaw, J. R., Millán, J. D. R. and Ramsey, N. F. (2020) 'Brain-computer interfaces: Definitions and principles', Handbook of clinical neurology, 168, pp. 15-23.
