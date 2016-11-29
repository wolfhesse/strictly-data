r()$db("test")$table("scratchpad")$insert(
  list(
    stuff=list(who="cares",extended='yes'),
    mode='manual'
  ),
  conflict="update",
  return_changes=TRUE
)$run(cn)
