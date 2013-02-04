pure subroutine sort_int(x)
  integer, intent(in out) :: x(:)
  if (size(x) > max_interchange_sort_size) then
     call quick_sort(x)
  else
     call interchange_sort(x)
  end if
end subroutine sort_int

pure subroutine sort_real(x)
  real, intent(in out) :: x(:)
  if (size(x) > max_interchange_sort_size) then
     call quick_sort(x)
  else
     call interchange_sort(x)
  end if
end subroutine sort_real

pure subroutine sort_dble(x)
  double precision, intent(in out) :: x(:)
  if (size(x) > max_interchange_sort_size) then
     call quick_sort(x)
  else
     call interchange_sort(x)
  end if
end subroutine sort_dble

subroutine sort_map_int(x,map)
  integer, intent(in out) :: x(:)
  integer, intent(out) :: map(:)
  integer :: i,n
  n = size(x)
  if (size(map) /= n) then
     write(error_unit,'("Error: vector and map do not match in length.")')
  end if
  !  map = [1:n]
  map = (/(i,i = 1,n)/)
  if (n > max_interchange_sort_size) then
     call quick_sort(x,map)
  else
     call interchange_sort(x,map)
  end if
end subroutine sort_map_int

subroutine sort_map_real(x,map)
  real, intent(in out) :: x(:)
  integer, intent(out) :: map(:)
  integer :: i,n
  n = size(x)
  if (size(map) /= n) then
     write(error_unit,'("Error: vector and map do not match in length.")')
  end if
  !  map = [1:n]
  map = (/(i,i = 1,n)/)
  if (n > max_interchange_sort_size) then
     call quick_sort(x,map)
  else
     call interchange_sort(x,map)
  end if
end subroutine sort_map_real

subroutine sort_map_dble(x,map)
  double precision, intent(in out) :: x(:)
  integer, intent(out) :: map(:)
  integer :: i,n
  n = size(x)
  if (size(map) /= n) then
     write(error_unit,'("Error: vector and map do not match in length.")')
  end if
  !map = [1:n]
  map = (/(i,i = 1,n)/)
  if (n > max_interchange_sort_size) then
     call quick_sort(x,map)
  else
     call interchange_sort(x,map)
  end if
end subroutine sort_map_dble
