## Runtime Loop Fusion for Nested Data Parallelism
Master of Engineering - Computer Science and Engineering (Research)<br>
*The University of New South Wales*, Australia, 2014

[PDF version](https://raw.github.com/roldugin/Thesis/master/Runtime%20Array%20Fusion%20for%20Data%20Parallelism.pdf)

#### Abstract
The benefits of high level approach to parallel programming are well understood and are often desired in order to separate the *domain view* of the problem from the intricate implementation details. Yet, a naive execution of the resulting programs attracts unnecessary and even prohibitive performance costs.

One convenient way of expressing a program is by composing collective operations on large data structures. Even if these collective operations are implemented efficiently and provide a high degree of parallelism, the result of each operation must be fully computed and written into memory before the next operation can consume it as input. The cost of transferring these intermediate results to and from memory has a very noticeable impact on the performance of the algorithm and becomes a serious drawback of this high level approach.

Program optimisation which attempts to detect and eliminate the creation of intermediate results by combining multiple operations into one is known as *fusion*. While it is a well studied problem, there are unfilled gaps when it comes to fusing data parallel programs. In particular, I demonstrate a solution to the problems of multiple consumers and tupling.

Through my research, I have designed and implemented an embedded domain specific language called *LiveFusion* that offers fusible combinators operating on *flat* and *segmented* arrays. To achieve fusion I propose a generic loop representation and introduce the concept of *rates* that guide fusion.

The results show that *LiveFusion* is considerably more effective at exploiting opportunities for fusion than previous systems. Specifically, the average performance increase of 3.2 for a non-trivial program indicates the attractiveness of the approach.

George Roldugin


See also: https://github.com/roldugin/LiveFusion

