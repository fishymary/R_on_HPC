High Performance Computing and R at UC Santa Barbara
========================================================
author: Mary Donovan
date: April 9, 2019
autosize: true

Outline
========================================================

- What is high performance computing?
- Overview of UCSB resources
- Accessing pod and knot
- Running jobs
- Some specifics for R
- An example
- Give it a try

What is high performance computing?
========================================================
Multiple computer notes, with fast interconnect, where each node consists of many CPU cores
Allows multiple users to run computations simulataneously
Allows single users to access multiple cores and multiple nodes for parallel jobs
Can have high end GPUs (large amounts of memory)

What is high performance computing?
========================================================
Why and when to use HPC? 
- Designed for when computational problems are either too large or take too long for standard computers
- Parallel computing




Overview of UCSB resources
========================================================
Enterprise Technology Services, Center for Scientific Computing, (MRL?)
pod and knot

Accessing pod and knot
========================================================
accounts
remote access - command line interface
login node versus compute nodes - don't run stuff on the login node! 
talk about storage systems?

Running jobs
========================================================
  - scheduler
  - queues

Some specifics for R
========================================================
  - versions
  - libraries

An example
========================================================
1. transfer input files
2. create a submission script
3. submit your job and check the status
4. scheduler runs computation on compute nodes
5. transfer output files 

Give it a try
========================================================

Slide With Code
========================================================


```r
summary(cars)
```

```
     speed           dist       
 Min.   : 4.0   Min.   :  2.00  
 1st Qu.:12.0   1st Qu.: 26.00  
 Median :15.0   Median : 36.00  
 Mean   :15.4   Mean   : 42.98  
 3rd Qu.:19.0   3rd Qu.: 56.00  
 Max.   :25.0   Max.   :120.00  
```

Slide With Plot
========================================================

![plot of chunk unnamed-chunk-2](R_on_HPC-figure/unnamed-chunk-2-1.png)
