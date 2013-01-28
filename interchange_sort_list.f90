subroutine interchange_sort_list_dble(n,x)
  integer, intent(in) :: n
  double precision, intent(in out) :: x(n)
  integer :: i,j
  do i = 1,n - 1
     do j = i + 1,n
        if (x(i) > x(j)) call swap(x(i),x(j))
     end do
  end do
end subroutine interchange_sort_list_dble

subroutine interchange_sort_list_real(n,x)
  integer, intent(in) :: n
  real, intent(in out) :: x(n)
  integer :: i,j
  do i = 1,n - 1
     do j = i + 1,n
        if (x(i) > x(j)) call swap(x(i),x(j))
     end do
  end do
end subroutine interchange_sort_list_real

subroutine interchange_sort_list_int(n,x)
  integer, intent(in) :: n
  integer, intent(in out) :: x(n)
  integer :: i,j
  do i = 1,n - 1
     do j = i + 1,n
        if (x(i) > x(j)) call swap(x(i),x(j))
     end do
  end do
end subroutine interchange_sort_list_int
