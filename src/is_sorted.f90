function is_sorted_int(x) result(out)
  integer, intent(in) :: x(:)
  integer :: i,out
  out = 0
  do i = 2,size(x)
     if (x(i) < x(i - 1)) then
        out = i
        exit
     end if
  end do
end function is_sorted_int

function is_sorted_real(x) result(out)
  real, intent(in) :: x(:)
  integer :: i,out
  out = 0
  do i = 2,size(x)
     if (x(i) < x(i - 1)) then
        out = i
        exit
     end if
  end do
end function is_sorted_real

function is_sorted_dble(x) result(out)
  double precision, intent(in) :: x(:)
  integer :: i,out
  out = 0
  do i = 2,size(x)
     if (x(i) < x(i - 1)) then
        out = i
        exit
     end if
  end do
end function is_sorted_dble
