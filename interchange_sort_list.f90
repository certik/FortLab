subroutine interchange_sort_list_dble(n,x)
  integer, intent(in) :: n
  double precision, intent(in out) :: x(n)
  integer :: i,j
  do i = 1,n - 1
     j = minloc(x(i:))
     if (j > 1) call swap(x(i),x(i + j - 1))
  end do
end subroutine interchange_sort_list_dble

subroutine interchange_sort_list_real(n,x)
  integer, intent(in) :: n
  real, intent(in out) :: x(n)
  integer :: i,j
  do i = 1,n - 1
     j = minloc(x(i:))
     if (j > 1) call swap(x(i),x(i + j - 1))
  end do
end subroutine interchange_sort_list_real

subroutine interchange_sort_list_int(n,x)
  integer, intent(in) :: n
  integer, intent(in out) :: x(n)
  integer :: i,j
  do i = 1,n - 1
     j = minloc(x(i:))
     if (j > 1) call swap(x(i),x(i + j - 1))
  end do
end subroutine interchange_sort_list_int
