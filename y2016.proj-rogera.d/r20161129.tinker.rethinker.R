
library(rethinker)

rethink_db_host = "rethinkdb.wolfspool.chickenkiller.com" # dep
rethink_db_host = "s0"      # .1 intern: deutschland
# admin .here: http://base.wolfslab.local.wolfspool.at:18080/

d0 <-
  function() {
    cn = openConnection(host = rethink_db_host, port = 28015)
    return(cn)
  }

d1 <- function()
  r()$db("test")$table("scratchpad_rstudio")$insert(
    list(
      id_previous = "779",
      stuff = list(who = "cares", extended = 'yes'),
      mode = "manual"
    ),
    conflict = "update",
    return_changes = TRUE
  )$run(cn)

d2 <- function()
  1

d3 <- function()
  r()$db("test")$table("products_rstudio")$insert(
    list(
      id = p1$id,
      title = p1$title,
      body_html = p1$body_html,
      handle = p1$handle
    )
    ,
    conflict = "update",
    return_changes = TRUE
  )$run(cn)

d4 <- function(p1)
  r()$db("test")$table("products_rstudio")$insert(
    list(
      id = p1$id,
      title = p1$title,
      body_html = p1$body_html,
      handle = p1$handle
    )
    ,
    conflict = "update",
    return_changes = TRUE
  )$run(cn)
