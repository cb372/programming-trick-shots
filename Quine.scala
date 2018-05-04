object Quine extends App {
  val quotes = "\"\"\""
  val x =
"""object Quine extends App {
  val quotes = "\"\"\""
  val x =
%s%s%s
  println(x.format(quotes, x, quotes))
}"""
  println(x.format(quotes, x, quotes))
}
