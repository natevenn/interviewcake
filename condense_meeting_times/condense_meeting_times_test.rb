gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'meeting_times'

class CondenseMeetingTimesTest < Minitest::Test

  def test_condense_array_of_overlapping_meetings
    meeting_times_1 = [[3,5], [2,4], [1,5], [0,3]]
    meeting_times_2 = [[3,5], [2,4], [6,8], [7,9], [10,12]]
    result1 = MeetingTimes.condense_meeting_times(meeting_times_1)
    result2 = MeetingTimes.condense_meeting_times(meeting_times_2)
    assert_equal [[0,5]], result1
    assert_equal [[2,5], [6,9], [10,12]], result2
  end

end
