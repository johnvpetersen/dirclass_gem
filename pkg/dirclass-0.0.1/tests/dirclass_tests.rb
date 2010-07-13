require 'test/unit'
require 'lib/dirclass.rb'

class MyFirstTest < Test::Unit::TestCase
  def test_ascending_sort
     files = Dir.list :directory => 'tests/testdir'
     assert_equal 3, files.count
     assert_equal 'file_1.txt', files[0][:file]
     assert_equal 'file_2.txt', files[1][:file]
     assert_equal 'file_3.txt', files[2][:file]  
  end
  
  def test_descending_sort
    files = Dir.list :directory => 'tests/testdir', :order=>'DESC'
    assert_equal 3, files.count
    assert_equal 'file_3.txt', files[0][:file]
    assert_equal 'file_2.txt', files[1][:file]
    assert_equal 'file_1.txt', files[2][:file]  
  end
  
  def test_search_pattern
    files = Dir.list :directory => 'tests/testdir', :pattern => 'file_1.txt'
    assert_equal 1, files.count
    assert_equal 'file_1.txt', files[0][:file]

    files = Dir.list :directory => 'tests/testdir', :pattern => 'file*.txt', :order => 'DESC'
    assert_equal 3, files.count
    assert_equal 'file_3.txt', files[0][:file]
    assert_equal 'file_2.txt', files[1][:file]
    assert_equal 'file_1.txt', files[2][:file]
  end

  def test_no_files
    files = Dir.list :directory => 'tests/testdir', :pattern => 'FOOBAR'
    assert_equal 0, files.count
  end
end