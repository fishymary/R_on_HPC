High Performance Computing with R @ UC Santa Barbara
========================================================
author: Mary Donovan and Sharon Solis
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
- Demo

What is high performance computing?
========================================================
left: 40%
![plot of chunk unnamed-chunk-2](R_on_HPC-figure/controller6_small-1.jpg)
***
- Multiple computer nodes, with fast interconnect, where each node consists of many CPU cores 
(aka "cluster")
- Allows multiple users to run computations simulataneously  
- Allows single users to access multiple cores and multiple nodes for parallel jobs  
- Can have high end GPU nodes (specialized processors)
- Can have large memory nodes (approx 1TB RAM)

What is high performance computing?
========================================================
Why and when to use HPC? 
- Designed for when computational problems are either too large, take too long, and/or require large file storage for standard computers  

- When HPC might not be your solution:
  - There’s lots of interaction with the program, and single runs (You need a really powerful desktop)
  - You need 1,000 nodes, but only once every 3 months (Cloud resources may be your solution)
  - You need 1,000 nodes, all the time (You need your own cluster)
  - You work with sensitive data

What is high performance computing?
========================================================
- Serial vs. Parallel computing
- Serial:
  - one core on one node at a time
- Parallel:
  - many tasks can be performed at once that are independent
  - or tasks can occur at the same time when 'boundry conditions' match up
  
  
Overview of UCSB resources
========================================================
- Center for Scientific Computing 
  - pod cluster (2018), knot cluster (2011), braid (condo clusters)
- Letters and Science Information Technology - Aristotle cloud cluster 
      - ideal for teaching e.g., Jypter notebooks
      - presistent internet connection collected data
- Extreme Science and Engineering Discovery Environment (XSEDE)
- West coast consumer wide consumer grade GPU cluster (machine learning) - Nautilus cluster
- Triton Shared Computing Cluster (TSCC) at San Diego Supercomputing Center (SDSC)

Overview of UCSB resources
========================================================
- Campus available cluster Knot (CentOS/RH 6):  
110 node, ~1400 core system  
4 ‘fat nodes’(1TB RAM)  
GPU nodes (12 M2050’s) (now too old)  

- Campus available cluster Pod (CentOS/RH7):  
70 node, ~2600 core system  
4 ‘fat nodes’(1TB RAM)  
GPU nodes (3) (Quad NVIDIA V100/32 GB with NVLINK)  
GPU Development node (P100, 1080Ti, Titan V)  

- Condo clusters: (PI’s buy compute nodes)  
Guild (60 nodes)  
Braid (120 nodes, also has GPUs)  

Accessing UCSB Resources
========================================================
- for pod and knot accounts  
Request access: http://csc.cnsi.ucsb.edu/acct

- Xsede: NSF sponsored service organization that provides
access to computing resources.  

Campus Champion (Sharon Solis): Represents XSEDE on the campus
![xsed logo](R_on_HPC-figure/xsede_logo.png)


Using the UCSB Clusters - Pod and Knot
========================================================
![plot of chunk unnamed-chunk-2](R_on_HPC-figure/pod.png)


Using the UCSB Clusters - Pod and Knot
========================================================
![plot of chunk unnamed-chunk-2](R_on_HPC-figure/hpc_graphic.png)
- login node versus compute nodes - don't run stuff on the login node!  
- limit to 4TB-10TB in your home directory
- command line interface  

Some basic commands
========================================================
  - pwd
  - cd
  - ls
  - mkdir
  - mv
  - rm
  - nano
  - (up arrow, stores 1000 lines)

To learn more
========================================================
Software Carpentry intro to Unix shell: http://swcarpentry.github.io/shell-novice/


An example workflow
========================================================
![plot of chunk unnamed-chunk-2](R_on_HPC-figure/hpc_graphic.png)
***
1. login to cluster
2. transfer input files
3. create a submission script
4. submit your job and check the status
5. scheduler runs computation on compute nodes
6. examine and transfer output files 


(1) login to cluster 
========================================================

```
ssh username@pod.cnsi.ucsb.edu
```

(2) transfer input files
========================================================
  
Lets  make a quick R code to run
On your computer in the terminal:  
```
echo "data <- data.frame(x=seq(1:10),y=seq(1:10)); write.csv(data,"testcsv.csv",row.names=F)" > myscript.R

```  
Now transfer that to pod:

```
scp myscript.R user@pod.cnsi.ucsb.edu:myscript.R
```



(3) create a submission script
========================================================
```
nano submit.job
#!/bin/bash -l
#Serial (1 core on one node) job...
#SBATCH --nodes=1 --ntasks-per-node=1

cd $SLURM_SUBMIT_DIR
module load R
Rscript myscript.R
```

(4) submit your job and check the status  
========================================================

```
sbatch submit.job
showq | grep mdono
```

For the short queue: 
```
sbatch -p short submit.job
```

If you need to cancel:
```
qdel job_id
```


(5) wait...
========================================================
<iframe src="https://giphy.com/embed/d2qJhxeaaWXPG" width="480" height="357" frameBorder="0" class="giphy-embed" allowFullScreen></iframe><p><a href="https://giphy.com/gifs/queue-d2qJhxeaaWXPG">via GIPHY</a></p>

(6) transfer output files  
========================================================
```
scp user@pod.cnsi.ucsb.edu:testcsv.csv ./testcsv.csv
```

Some specifics for R
========================================================
to start R on the command line
```
module load R
```
check R version

```
which R
```  
installing packages?   
- on first go it will ask you to make a folder on your home directory, choose Y and pick your cran mirror


Some tips
========================================================
- Remote login: UCSB VPN  
- Try a small version of  your code on your computer first to make sure it runs from beginning to end.   
- Be explicit about location of input and output files  
- For parallel stuff the `parallel` package is helpful  

- Please include in your papers! 
"We acknowledge support from the Center for Scientific Computing from the CNSI, MRL: an NSF MRSEC (DMR-1720256) and NSF CNS-1725797."

Demo
========================================================
Your turn: Try running on pod
```
test_my_skillz.R
```
(use the short queue)

Demo
========================================================
```
ssh username@pod.cnsi.ucsb.edu
git clone https://github.com/fishymary/R_on_HPC.git
cd R_on_HPC
cat submit.job
sbatch -p short submit.job
showq | grep [username]
ls
cat slurm-[jobid]
```

***
1. login to cluster
2. transfer input files
3. create a submission script
4. submit your job and check the status
5. scheduler runs computation on compute nodes
6. examine and transfer output files 
