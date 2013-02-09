function real2str(num) result(str)
  real, intent(in) :: num
  character(len=:) ,allocatable :: str
  character(len=max_real_len) :: base_str
  write(base_str,*) num
  str = trim(adjustl(base_str))
end function real2str

function dble2str(num) result(str)
  double precision, intent(in) :: num
  character(len=:) ,allocatable :: str
  character(len=max_dble_len) :: base_str
  write(base_str,*) num
  str = trim(adjustl(base_str))
end function dble2str

function int2str(num) result(str)
  integer, intent(in) :: num
  character(len=:) ,allocatable :: str
  character(len=max_int_len) :: base_str
  write(base_str,*) num
  str = trim(adjustl(base_str))
end function int2str
