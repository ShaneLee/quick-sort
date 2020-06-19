object Main extends App {
    
  def quicksort(arr: List[Int]): List[Int] = arr match {
    case Nil => Nil
    case pivot :: tail =>
      val (lower, upper) = tail.partition(_ < pivot)
      quicksort(lower) ::: pivot :: quicksort(upper)
  }
  
  println(quicksort((args(0).split(",").map(_.toInt).toList)).mkString(", "))
}

