require(DNABarcodes)
barc <- create.dnabarcodes(n = 12, dist = 3, filter.triplets = T, metric = "seqlev",filter.gc = T, filter.self_complementary = T, cores = 24)
write.csv(barc, "barc.csv")
