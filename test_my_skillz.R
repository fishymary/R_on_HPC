start <- Sys.time()
library(parallel)

my_fun <- function(size=1000){
  vec <- rnorm(size)
  return(sum(vec))
}

num_clust <- 4  # how many processes to run in parallel
cl <- makeCluster(num_clust)  # set up the cores
clusterExport(cl, c("my_fun")) # export items to each core

result <- clusterApply(cl, 1:40, function(i) my_fun())

stopCluster(cl) # end
saveRDS(result,file="result_hpc_1strun.Rdata")
(Sys.time()-start)
