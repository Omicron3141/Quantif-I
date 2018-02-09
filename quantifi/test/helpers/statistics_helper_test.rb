class StatisticsHelperTest < ActionView::TestCase
  # mean
  test "should return proper mean" do
  	data = [1,2,3,4,5]
  	mean = mean(data)
  	assert_equal(mean, 3)
  end

  test "mean should work for empty lists and return 0" do
  	data = []
  	mean = mean(data)
  	assert_equal(mean, 0)
  end

  test "mean should work for float means" do
  	data = [1,2,3,4]
  	mean = mean(data)
  	assert_equal(mean, 2.5)
  end

  #standard deviation
  test "should return proper stdev" do
  	data = [1,2,3,4,5]
  	sd = stdev(data)
  	assert_in_delta(sd, 1.58, 0.01)
  end

  test "stdev should work for empty lists and return 0" do
  	data = []
  	sd = stdev(data)
  	assert_equal(sd, 0)
  end

  test "stdev should work for float inputs" do
  	data = [1.1, 4.3, 7.7]
  	sd = stdev(data)
  	assert_in_delta(sd,3.3,0.1)
  end

end