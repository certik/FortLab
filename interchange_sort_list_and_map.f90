subroutine interchange_sort_list_and_map_int(n,x,map)
  integer, intent(in) :: n
  integer, intent(in out) :: x(n)
  integer, intent(in out) :: map(n)
  integer :: i,j
  do i = 1,n - 1
     do j = i + 1,n
        if (x(i) > x(j)) then
           call swap(x(i),x(j))
           call swap(map(i),map(j))
        end if
     end do
  end do
end subroutine interchange_sort_list_and_map_int

subroutine interchange_sort_list_and_map_real(n,x,map)
  integer, intent(in) :: n
  real, intent(in out) :: x(n)
  integer, intent(in out) :: map(n)
  integer :: i,j
  do i = 1,n - 1
     do j = i + 1,n
        if (x(i) > x(j)) then
           call swap(x(i),x(j))
           call swap(map(i),map(j))
        end if
     end do
  end do
end subroutine interchange_sort_list_and_map_real

subroutine interchange_sort_list_and_map_dble(n,x,map)
  integer, intent(in) :: n
  double precision, intent(in out) :: x(n)
  integer, intent(in out) :: map(n)
  integer :: i,j
  do i = 1,n - 1
     do j = i + 1,n
        if (x(i) > x(j)) then
           call swap(x(i),x(j))
           call swap(map(i),map(j))
        end if
     end do
  end do
end subroutine interchange_sort_list_and_map_dble
