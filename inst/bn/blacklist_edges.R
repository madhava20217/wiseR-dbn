blacklist_edges <- function(colns, timeslices){
  n_rows = (length(colns)*length(colns)*(timeslices-1)*timeslices)/2;
  temp <- data.frame(matrix(NA, nrow = n_rows, ncol = 2));
  colnames(temp) <- c("from", "to")

  indexer <- 1  # for row indexing
  from_col <- character(nrow(temp))
  to_col <- character(nrow(temp))

  for (i in 0:(timeslices-2)){
    #print(paste0("Outer loop: ", i))
    for(j in (i+1):(timeslices-1)){
      #print(paste0("    Inner loop: ", j))
      for (k in colns){
        for (l in colns){
          #temp[indexer, ] = c(paste0(k, "_t_", i), paste0(l, "_t_", j))
          from_col[indexer] <- paste0(k, "_t_", i);
          to_col[indexer]   <- paste0(l, "_t_", j);
          indexer <- indexer+1;
        }
      }
    }
  }

  temp$`from` <- from_col;
  temp$`to`   <- to_col;

  return(temp)
}
