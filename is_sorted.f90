function is_sorted_int(n,x) result(out)
  integer, intent(in) :: n
  integer, intent(in) :: x(n)
  integer :: i,out
  out = 0
  do i = 2,n
     if (x(i) < x(i - 1)) then
        out = i
        exit
     end if
  end do
end function is_sorted_int

function is_sorted_real(n,x) result(out)
  integer, intent(in) :: n
  real, intent(in) :: x(n)
  integer :: i,out
  out = 0
  do i = 2,n
     if (x(i) < x(i - 1)) then
        out = i
        exit
     end if
  end do
end function is_sorted_real

function is_sorted_dble(n,x) result(out)
  integer, intent(in) :: n
  double precision, intent(in) :: x(n)
  integer :: i,out
  out = 0
  do i = 2,n
     if (x(i) < x(i - 1)) then
        out = i
        exit
     end if
  end do
end function is_sorted_dble
