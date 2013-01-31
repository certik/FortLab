subroutine interchange_sort_list_and_map_int(x,map)
  integer, intent(in out) :: x(:)
  integer, intent(in out) :: map(:)
  integer :: i,j
  do i = 1,size(x) - 1
     j = minloc(x(i:),1)
     if (j > 1) then
        call swap(x(i),x(i + j - 1))
        call swap(x(i),x(i + j - 1))
     end if
  end do
end subroutine interchange_sort_list_and_map_int

subroutine interchange_sort_list_and_map_real(x,map)
  real, intent(in out) :: x(:)
  integer, intent(in out) :: map(:)
  integer :: i,j
  do i = 1,size(x) - 1
     j = minloc(x(i:),1)
     if (j > 1) then
        call swap(x(i),x(i + j - 1))
        call swap(x(i),x(i + j - 1))
     end if
  end do
end subroutine interchange_sort_list_and_map_real

subroutine interchange_sort_list_and_map_dble(x,map)
  double precision, intent(in out) :: x(:)
  integer, intent(in out) :: map(:)
  integer :: i,j
  do i = 1,size(x) - 1
     j = minloc(x(i:),1)
     if (j > 1) then
        call swap(x(i),x(i + j - 1))
        call swap(x(i),x(i + j - 1))
     end if
  end do
end subroutine interchange_sort_list_and_map_dble
