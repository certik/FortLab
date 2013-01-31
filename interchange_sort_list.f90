subroutine interchange_sort_list_dble(x)
  double precision, intent(in out) :: x(:)
  integer :: i,j
  do i = 1,size(x) - 1
     j = minloc(x(i:),1)
     if (j > 1) call swap(x(i),x(i + j - 1))
  end do
end subroutine interchange_sort_list_dble

subroutine interchange_sort_list_real(x)
  real, intent(in out) :: x(:)
  integer :: i,j
  do i = 1,size(x) - 1
     j = minloc(x(i:),1)
     if (j > 1) call swap(x(i),x(i + j - 1))
  end do
end subroutine interchange_sort_list_real

subroutine interchange_sort_list_int(x)
  integer, intent(in out) :: x(:)
  integer :: i,j
  do i = 1,size(x) - 1
     j = minloc(x(i:),1)
     if (j > 1) call swap(x(i),x(i + j - 1))
  end do
end subroutine interchange_sort_list_int
