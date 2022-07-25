---
title: Pros & Cons of Non-Invasive and Invasive BCI - PART 1 
catalog: true
lang: en
date: 2022-05-26 23:10:48
subtitle: Brain Computer Interface (BCI) always seem to be part of an utopic future. It is an ambitious technology that connects human brain with digital computers. What if one day we want a BCI connected, how would you choose between these two main types; non-invasive BCI or invasive BCI?
header-img: https://raw.githubusercontent.com/Gnefil/Gnefil.github.io/src/img/post_images/bci_bg.jpg
tags: [Biology, Neuroscience, BCI]
categories: [Neuroscience, BCI]
---

# Introducing BCI
---
Brain Computer Interfaces are systems that read and interpret electrical signals from brain’s intention and execute them via an external device instead of one’s own body, Figure 1 is a visual example. The current progress in BMI is divided into two main methodologies, by the way sensors are placed: non-invasive BMI and invasive BMI. Due to its increase in popularity and prominent results, an overview of the characteristics of each method is a topic worth examining. The following essay aims to discuss the different advantages and disadvantages that each brings. Non-invasive methods in contrast to the invasive methods, are merited by the global scale detection and safeness, they offer a more convenient way in respect to its social acceptance and have an unreplaceable niche. On the other hand, invasive methods have advantages over non-invasive in the higher quality and transfer rate, in their large potential to optimise current techniques and it is still an area to be explored.

![BCI sketch](https://raw.githubusercontent.com/Gnefil/Gnefil.github.io/src/img/post_images/bci_sketch.png)
<br/>

## BCI, BMI, origin
---
BCI is an interchangeable term with Brain Machine Interface (BMI) (Wolpaw, 2013; Wolpaw, Millán and Ramsey, 2020). BCI’s definition can dated back to two decades ago, as an alternative system that allows the interaction of the brain with the environment and does not follow the nervous and muscle pathway (Wolpaw et al, 2000). Early BCI started with EEG related research which is non-invasive. But since its prosperity in the last millennium, investigations into non-invasive BCI have come across to researchers’ eyes.
<br/>


### Non-invasive style
Non-invasive BCI research mainly focuses on Electroencephalogram (EEG). By adhering electrodes externally to the scalp of the participant, it detects Event-Related Potentials (ERP). Other techniques similar to EEG exist, but they are not suitable to build BCI (e.g., MEG is too expensive, fMRI has delayed sensing). For the main discussion, EEG will be used as a reference to non-invasive methods in general.
<br/>

### Invasive style
On the other side, invasive methods rely on a technique derived from single-cell recording, called Microelectrodes Array or Multielectrode Array (MEA). For the main discussion, MEA is also used as a reference to invasive methods. MEA consists of an array of small electrodes each at millimetres scale (e.g. Blackrock Neurotech Utah array), then through neurosurgery open up the skull to implant the array into deeper layers in the cortex. Despite its implanting complexity, investigations focused on this technique because of its potential, and produced many prominent results both in primates (Wessberg et. al, 2000; Serruya et. al, 2002; Velliste et. al, 2008) and human (Hochberg et. al, 2012). Similarly, MEA and single-cell recording are not unique invasive recording methods but are the most suitable (e.g., Positron Emission Tomography (PET) has a terrible time resolution). More comparisons in spatial and temporal resolution can be found in Figure 2, notice that when lower target size and detection time, higher resolution.

![Sensoring techniques](https://raw.githubusercontent.com/Gnefil/Gnefil.github.io/src/img/post_images/sensoring_techniques.png)
<br/>
<br/>

Once explored the distinctions between non-invasive and invasive methods, what are the pros and cons respect each other? The first half of the discussion focuses on the reasons for using a non-invasive method instead of invasive ones, while the second half examines the opposite, the advantages of invasives in respect to non-invasive BCI disadvantages.
<br/>
<br/>

# Why non-invasive BCI and not invasive BCI
---
*In this PART 1 of the discussion, we will discuss why we should go for a ***non-invasive*** BCI instead of invasive BCI.*

## Detect as a whole
From a technical point of view, one pro of non-invasive BCI is its global scale detection (Waldert, 2016). Because the electrodes in EEG adhere nearly to any part of the skull, it allows the detection of all regions of interest. Then, signals can be gathered and extracted as a global feature of the command across the whole brain. Why may this be helpful? For instance, it helps to find high-level commands, instead of local changes when executing an action (Millán and Carmena, 2010). This kind of detection is crucial to understanding more abstract intentions, such as someone’s cognitive state.

A real application of these global signals is to identify the error-related potential (Millán and Carmena, 2010). During one’s planning and execution of an intention, say extending his left hand to grasp the cup A, he may want to stop the action. At this stage, brain generates a global error-related signal, and tries to inhibit current movement. That is when global scale detection is useful, it helps identify the ceasing signal.
<br/>

## Safeness is a priority

#### Non-invasive BCI plays safe
Moving on now to safeness, it is another big point in non-invasive BCI advantage, whereas is one main concern in invasive BCI (Belkacem et. al, 2020; He, Dong, and Qi, 2020; Millán and Carmena, 2010; Lebedev and Nicolelis, 2006; Waldert, 2016). Since patients’ safeness is one of the highest priorities, EEG recording is almost a default clinical option if not otherwise stated (Lebedev and Nicolelis, 2017). For this reason, in most clinical cases, EEG is preferred over invasive methods.

#### Risks in invasive BCI
The first risk which is avoided in non-invasive BCI is the surgical risk. Opening the scalp means cutting the dura and pia mater, it leads to one of the most important human organs being exposed to the air. Even with extreme precaution, the wound may get infected or cause inflammatory symptoms during the operation. What’s more, when choosing to go through surgery, the possibility of failure is unavoidable. Consequences are even worse if the subject of operation is the brain. Should one choose non-invasive BCI, all these possible consequences are avoided.

In addition, the risks of surgery in itself are not the only safeness concerns of invasive BCI. Despite a successful operation, the invasive method still damages the brain. To find and prepare the location of the array, the insert device punctuates the cortex tissue, which holes the cortex. With such a vascularized organ, damage to vessels may be irreversible. One might wonder if a healthy person or less severely impaired patients are willing to damage their cortex in the brain, in exchange for control of an external device.

Apart from cortex damage, the existence of MEA in the cortex also raises multiple concerns. The first and most intuitive one is that the inserted device will also injure the tissue, and the deeper in the cortex, the more extensive the disturbance. Moreover, the device may obstacle and interfere with the local neuron environment because it is an intruder to the cells. Consequently, normal processes and synapses may get interrupted by the array. What’s more, once the array is implanted into the cortex, the properties of the array determine the long-term viability of this BCI. Yet, this is another problem to tackle when looking at invasive BCI.
<br/>

## Long-term degradation
Here are some common problems when exploring long-term degradation in invasive BCI (He, Dong, and Qi, 2020; Waldert, 2016). The first is the biocompatibility of electrodes. For a long time, silicon glass is often used as the material to build the electrodes, but it urges a biocompatible material for substitution so that the harmful effects between electrodes and tissues get reduced. Another problem is that in long run, the brain will develop scar tissue that covers the electrodes, as a self-protection measure (Millán and Carmena, 2010). Such layers will greatly reduce the Signal-to-Noise Rate (SNR) and stability of recording. SNR is a crucial measure, as it talks about how much of the collected information is relevant and useful, and which proportion is due to background noises. Reduction in SNR reveals the instability of invasive BCI in the long term. Furthermore, during the wearing of such arrays, the patient’s regular actions may lead to micromotions, unpredictable micromotions that severely impact the recording of signals. To sum up, invasive BCI has a long-term degradation problem once the electrodes are inserted.

By contrast, non-invasive BCI avoids this kind of concern. EEG recordings are damage-free and will not have to concern and try to tackle these long-term degradation problems, as wearing and replacement of external electrodes is much easier (Norton et. al, 2015).
<br/>

![Transition image](https://raw.githubusercontent.com/Gnefil/Gnefil.github.io/src/img/post_images/bci_transition_1.jpg)
<br/>

#### BUT, non-invasive methods are optimising
Now, even though this section examined the surgical damages and long-term degradation, which are some of the main disadvantages of invasive BCI, the current line of research is developing solutions to tackle these disadvantages and are having some prominent results.

Hanson et. al (2019) were concerned about the intrusiveness of current invasive BCI and wanted a more stable and safe system. The pipes that penetrate the brain limit longevity due to their big size. As a result, they proposed different requirements between the inserted device (MEA) and the insert device. The former needs to be small and flexible like a polymer, to decrease as much as possible adverse effects, while the latter must be stiff to be able to hole. Based on both requirements, they successfully demonstrated the viability of a “sewing machine” system to implant invasive BCI. Nonetheless, it still causes some damage, especially in the upper layers of the cortex.

In terms of material for electrodes, there are now systems that are built based on biocompatible polymer and achieved to be flexible (Chung et. al, 2019). Other advantages of such material include being long-lasting, reduction of damage (due to its flexibility), and decreasing micromotion by being adhesive.

As a systematic gathering of all these new development trends, Musk (2019) and Neuralink proposed a white paper with a large-scale MEA system with much less invasiveness. It uses flexible threads, each accompanied by 32 biocompatible electrodes, attached to the surface of the neuron. Then, it ensures more surface cover and the least damage with a surgical robot. This machine makes extreme precise insertions, avoids vessels, and minimizes bleeding. Finally, it allows a much broader bandwidth to transmit the information.
<br/>


## Social acceptance

#### Convenient "wearable"
So far, previous sections focused on the technical side and safeness of non-invasive methods, the following part discusses the social aspect of non-invasive BCI. Regarding the social attitude towards non-invasive BCI, one remarkable advantage is the convenience (Belkacem et. al, 2020; He, Dong, and Qi, 2020; Millán and Carmena, 2010). To put in comparison, the time spent wearing electrodes externally is nothing compared to the long preparation and procedure to implant electrodes internally; invasive BCI is not “wearable”. Also, more adaptation and training time are required to accommodate MEA.  Furthermore, in contrast to the chronical character of MEA, EEG recording can be temporal and is possible to quit at any time. For example, if a patient recovers from an injury through non-invasive BCI, then he can stop using it soon after, a case which is not possible for someone using invasive BCI.

#### Economical and public acceptance
Having discussed the convenience of non-invasive BCI, another significant aspect of these methods is their economic and socio-ethical acceptance (He, Dong, and Qi, 2020; Waldert, 2016). Generally, non-invasive methods are more affordable than invasive methods, not only because of components cost, but also the surgical and maintenance costs. Therefore, if in a future BCI are common in the general population, non-invasive methods may be preferred over invasive methods because of the price. Also, as mentioned earlier, there is generally a higher public acceptance of non-invasive techniques, as it supposes a less mental barrier compared to implanting some device inside the brain. Interestingly though, despite the high priority of non-invasiveness in end-users, the majority of paraplegic people are willing to recover with invasive methods if necessary (Collinger et. al, 2013).

#### Considering ethics 
What’s more, a criticised problem in invasive methods is the socio-ethical controversies about how ethical is to implant devices in people’s heads. This is an issue often debated. For instance, the possibility of wireless MEA. As it is wireless, the transmission of data could be hacked, causing catastrophic consequences. How responsible it is to implant something like that?
<br/>

## Irreplaceable niche
Finally, a fundamental and unreplaceable advantage of EEG is that there will always be a part of the population unable to go through invasive implantations, and there will always be a part of the brain where electrodes cannot be implanted. Consequently, non-invasive methods have a solid niche that invasive BCI is not able to reach (Millán and Carmena, 2010).
<br/>