---
title: Pros & Cons of Non-Invasive and Invasive BCI - PART 2
catalog: true
lang: en
date: 2022-06-03 12:24:23
subtitle: Brain Computer Interface (BCI) always seem to be part of an utopic future. It is an ambitious technology that connects human brain with digital computers. What if one day we want a BCI connected, how would you choose between these two main types; non-invasive BCI or invasive BCI?
header-img: https://raw.githubusercontent.com/Gnefil/Gnefil.github.io/src/img/post_images/bci_bg.jpg
tags: [Biology, Neuroscience, BCI]
categories: [Neuroscience, BCI]
---

# Why invasive BCI and not non-invasive BCI
---
In summary, PART 1 reviewed the pros of non-invasive BCI and cons of invasive BCI, in the global scale detection, safeness, convenience, and public acceptance. The part that follows moves to the advantages of invasive BCI and disadvantages of non-invasive BCI, that are focusing on the quality and variety of recording, transfer rate, and the potential of each methodology.

*This is PART 2 of the discussion, we will discuss why we should go for a ***invasive*** BCI instead of non-invasive BCI.*
<br/>

## The closer, the better

A question may raise talking about invasive methods, wondering why there is a need for invasive BCI if EEG-based BCI is already able to detect signals. The main problem is that, due to EEG’s nature, it can only record limited-quality signals, and at a low transfer rate. Due to this fact, that part of the current research has been looking at new possibilities of faster and more sensitive data, like invasive BCI.

### Insufficient resolution in EEG
As mentioned previously when introducing the methodology of each type of BCI, poor quality of the recording is often at the top of non-invasive BCI cons. The quality is limited in three aspects: low spatial resolution (Belkacem et. al, 2020; Millán and Carmena, 2010; He, Dong, and Qi, 2020), mostly low amplitude signals (Lachaux, 2012) and low-frequency signal recording (Muthukumaraswamy, 2013). EEG detects potential in low spatial resolution because it is not fine enough to record exactly a target tissue in the cortex from external recording. This is especially true when trying to explore vertically, in the deep layers of the cortex, where EEG cannot identify. Moreover, EEG receives a lower potential amplitude because it is far from the source point (inside the cortex) and the amplitude gets attenuated when travelling that distance. Likewise, the frequency bandwidth that external recording can detect also gets narrowed because tissues absorb a high frequency of signals.

### Simply better
By contrast, MEA has the advantage to be closely adhered next to the target region in the cortex. Leading to an excellent spatial resolution in all dimensions including detection in multiple layers, a higher broader amplitude range and wider frequency bandwidth (Lebedev and Nicolelis, 2006; Lebedev and Nicolelis, 2017; Millán and Carmena, 2010; He, Dong, and Qi, 2020; Waldert, 2016).
<br/>

## Useful information transfer rate

In addition to the quality of data, invasive BCI also overtakes non-invasives in the transfer speed of data; both in SNR and speed in machine.

### Signal highway and city road
Now, turning to the information transfer rate, it is another issue in favour of invasive BCI (Wolpaw et. al, 2002). The information transfer rate is concerned with how fast the relevant information is extracted. It goes beyond SNR, as SNR can be considered individually while the former is a rate for all multiple trials and considers the retrieving process. 
<br>

![Transition image](https://raw.githubusercontent.com/Gnefil/Gnefil.github.io/src/img/post_images/bci_transition_2.jpg)
<br>


In contrast to the high transfer rate of invasive methods, non-invasive has a very poor transfer rate (Millán and Carmena, 2010). This low rate can be a result of the weak signals mixed with background electromagnetic. Furthermore, these add to the irregular conductance of the scalp and the limited number of electrodes it can place. Consequently, non-invasive EEG requires multiple trials to record the complete signal (Carpi, De Rossi and Menon, 2006). In addition, the muscle artifacts that lie in the middle of the recording pathway severely interfere with the original potentials. Another source of distortion is the extracellular environment, which affects in different degrees the transmission of signals to EEG. Altogether, the noisy effects of non-invasive BCI are very substantial and have been limiting further progress of EEG for decades (Millán and Carmena, 2010). Meanwhile, all these noises are insignificant to MEA due to its closure to the potentials, resulting in a high transfer rate in general (Waldert, 2016).
<br/>

## Non-invasives improve too
Nonetheless, non-invasive literature did not stop looking for solutions to these problems. Wolpaw et. al (2002) proposed several optimisation lines for non-invasive trade-offs and several have been found with solutions. One of them is the reduction of the muscle artifacts, an issue which Muthukumaraswamy (2013) discussed the recommended approaches. Moreover, as the optimisation is hard on the recording side, there have been algorithms to increase the BCI performance on the signal translation side (Lotte et. al, 2007; Schalk et. al, 2004). Finally, works on the quick adaptation of non-invasive also seem to speed up the as a whole (Blankertz et. al, 2007). Overall, developments in non-invasive limitations had helped compensate for the poor performance to some degree.
<br/>

## Future pontential
Now, moving to the final section, the most valuable characteristic that invasive methods have, is probably all the potential that it still has. As the investigation into BCI progresses, more and more solutions have been given to limitations on invasive BCI. For instance, several improvements have been mentioned when talking about safeness and long-term degradation in the first part. Due to the direct connections of MEA, it may be an approach to elaborate somatosensory inputs (Waldert, 2016). Because of these improvements, invasive methods have prospering potential (Lebedev and Nicolelis, 2006; Saha et. al, 2021). On the other hand, improvements in non-invasive methods have been severely limited by the external nature of EEG; even though there is optimisation in aspects away from the recording, the main obstacles to getting high quality and variety of data have not changed too much for the last 50 years (Millán and Carmena, 2010). 
<br>

![Transition image](https://raw.githubusercontent.com/Gnefil/Gnefil.github.io/src/img/post_images/bci_transition_3.jpg)


## ECoG, semi-invasive BCI
Interestingly, there is a method categorised as semi-invasive, which is called Electrocorticography (ECoG) or intracranial EEG (iEEG). Such a technique offers the possibility to compensate for the poor spatial resolution of EEG and the clinical risk of more invasive methods (Leuthardt et. al, 2004). Currently, it is also a research line (Khodagholy et. Al, 2015) trying to call for a balance between the advantage of both bigger branches while reducing the disadvantages.
<br>
<br>


# Conclusion
---
To conclude, this discussion reflected the merits and downsides of both types of BCI. Currently, they are both essential to current BCI research. Non-invasive methods have developed as a mature technique with an unreplaceable niche, whereas invasive BCI can work with the best quality of data and is still in development. Considering both methodologies, it is still a matter of suitable methods for each situation. The future trends show a high expectance of less harmful and better invasive BCI while exploring widespread opportunities in non-invasive BCI. This discussion focused on a general overview of the pros and cons of these techniques, and a possible next step is to examine the performance of real cases and their impacts.
<br>
<br>

# References
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
