pure function count_chars(str,chars) result(n)
  character(len=*), intent(in) :: str, chars
  integer :: n
  integer :: pos,inc
  n = 0
  pos = 0
  do
     inc = scan(str(pos + 1:),chars)
     if (inc == 0) exit
     pos = pos + inc
     n = n + 1
  end do
end function count_chars
