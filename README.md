# ggsave

*Why you should prefer Cairo's png engine; visual proof.*

In the past, copying plots from RStudio Plots pane to some document was a pain in the ass, having to deal with horrible graphics quality. I thought that problem was caused by my RStudio version, some issue with my pc or even by Windows. Turns out it's a mix, because **RStudio's default PNG engine for Windows** produces ugly plots.

Here's what I mean

```r
ggsave(filename = "images/iris_default.png", plot = p,
       height = 5, width = 7, units = "in", dpi = 500)
```

![](https://github.com/DiabbZegpi/ggsave/blob/master/images/iris_default.png "Default PNG engine")

```r
ggsave(filename = "images/iris_default.png", plot = q,
       height = 5, width = 7, units = "in", dpi = 500, type = "cairo")
```

![](https://github.com/DiabbZegpi/ggsave/blob/master/images/iris_cairo.png "Cairo's engine")