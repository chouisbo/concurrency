
import scala.util.Random;

object ScalaSorted {

    def main(args: Array[String]): Unit = {
    
        var data = new Array[Int](32768)
        var rand = new Random()
        for (i <- 0 until data.length) {
            data(i) = rand.nextInt(256)
        }

        data = data.sorted
        var sum = 0
        for (j <-0 until 100000) {
            for (i <-0 until data.length) {
                if (data(i) >= 128) {
                    sum += data(i)
                }
            }
        }

    }
}

