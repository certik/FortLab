subroutine sort_map_real(vec,map)
  real, intent(in out) :: vec(:)
  integer, intent(out) :: map(:)
  integer :: i
  if (size(map) /= size(vec)) then
     write(error_unit,'("Error: vector and map do not match in length.")')
  end if
  !  map = [1:size(vec)]
  map = (/(i,i = 1,size(vec))/)
  if (size(vec) > max_interchange_sort_size) then
     call quick_sort(vec,map)
  else
     call interchange_sort(vec,map)
  end if
end subroutine sort_map_real

