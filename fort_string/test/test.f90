program test
  use fort_string
  implicit none
  integer, parameter :: n = 3,m = 3
  character(len=30) :: x(n)
  character(len=:),allocatable :: y(:)
  integer :: i,j
  x = '    23   '
  x(2) = ' |b    a|c| d |e  |a  |g'
  call strip(x,y)
  do i = 1,n
     print '("|",A,"|")',y(i)
  end do
  call split(x(2),' ',y)
  do i = 1,size(y)
     print '("/",A,"\")',y(i)
  end do
  
end program test
