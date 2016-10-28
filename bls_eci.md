```r
#!/usr/bin/env R

library(rjson)
library(blsAPI)

response <- blsAPI('CIU1010000000000A')
json <- fromJSON(response)
df <- data.frame(
  year=character(),
  period=character(), 
  periodName=character(),
  value=character(),
  stringsAsFactors=FALSE)
i <- 0
for(d in json$Results$series[[1]]$data){
  i <- i + 1
  df[i,] <- unlist(d)
}

print(df)
```

```r
   year period  periodName value
1  2015    Q04 4th Quarter   2.0
2  2015    Q03 3rd Quarter   2.0
3  2015    Q02 2nd Quarter   2.0
4  2015    Q01 1st Quarter   2.6
5  2014    Q04 4th Quarter   2.2
6  2014    Q03 3rd Quarter   2.2
7  2014    Q02 2nd Quarter   2.0
8  2014    Q01 1st Quarter   1.8
9  2016    Q02 2nd Quarter   2.3
10 2016    Q01 1st Quarter   1.9
```

