subroutine interchange_sort_list_and_map_int(n,x,map)
  integer, intent(in) :: n
  integer, intent(in out) :: x(n)
  integer, intent(in out) :: map(n)
  integer :: i,j
  do i = 1,n - 1
     j = minloc(x(i:))
     if (j > 1) then
        call swap(x(i),x(i + j - 1))
        call swap(x(i),x(i + j - 1))
     end if
  end do
end subroutine interchange_sort_list_and_map_int

subroutine interchange_sort_list_and_map_real(n,x,map)
  integer, intent(in) :: n
  real, intent(in out) :: x(n)
  integer, intent(in out) :: map(n)
  integer :: i,j
  do i = 1,n - 1
     j = minloc(x(i:))
     if (j > 1) then
        call swap(x(i),x(i + j - 1))
        call swap(x(i),x(i + j - 1))
     end if
  end do
end subroutine interchange_sort_list_and_map_real

subroutine interchange_sort_list_and_map_dble(n,x,map)
  integer, intent(in) :: n
  double precision, intent(in out) :: x(n)
  integer, intent(in out) :: map(n)
  integer :: i,j
  do i = 1,n - 1
     j = minloc(x(i:))
     if (j > 1) then
        call swap(x(i),x(i + j - 1))
        call swap(x(i),x(i + j - 1))
     end if
  end do
end subroutine interchange_sort_list_and_map_dble
