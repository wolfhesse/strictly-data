library(stringr)
urlpattern=function(a,urlp){
  return (str_replace(urlp, 'PATTERN', a))
}