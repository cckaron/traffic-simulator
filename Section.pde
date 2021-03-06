class Section extends Thread {
  String direct;
  float up_left_x, up_left_y, up_right_x, up_right_y;
  float down_left_x, down_left_y, down_right_x, down_right_y;
  HashMap<String, Float> point = new HashMap<String, Float>();

  Section(String dir, float u_l_x, float u_l_y, float u_r_x, float u_r_y, float d_l_x, float d_l_y, float d_r_x, float d_r_y) {
    direct = dir;
    up_left_x = u_l_x;
    up_left_y = u_l_y;
    up_right_x = u_r_x;
    up_right_y = u_r_y;
    down_left_x = d_l_x;
    down_left_y = d_l_y;
    down_right_x = d_r_x;
    down_right_y = d_r_y;
  }

  void start() {
    System.out.printf("Section %s start", direct);
    System.out.println("");
    super.start();
  }

  boolean inSection(Car car) {
    //System.out.printf("car(x,y): (%f, %f)", car.x, car.y);
    //System.out.println();
    //System.out.printf("up_left(x,y): (%f, %f)", up_left_x, up_left_y);
    //System.out.println();
    //System.out.printf("up_right(x,y): (%f, %f)", up_right_x, up_right_y);
    //System.out.println();
    //System.out.printf("down_left(x,y): (%f, %f)", down_left_x, down_left_y);
    //System.out.println();
    //System.out.printf("down_right(x,y): (%f, %f)", down_right_x, down_right_y);
    //System.out.println();

    if ((car.x > up_left_x && car.y > up_left_y) && //up_left
      (car.x < up_right_x && car.y > up_right_y) && //up_right
      (car.x > down_left_x && car.y < down_left_y) && //down_left
      (car.x < down_right_x && car.y < down_right_y)) //down_right
    {
      return true;
    }
    return false;
  }
}
