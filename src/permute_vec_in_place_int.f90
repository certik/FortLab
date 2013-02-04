subroutine permute_vec_in_place_int(map,vec)
  integer, intent(in) :: map(:)
  integer, intent(in out) :: vec(size(map))
  if (maxval(map) > size(vec) .or. minval(map) < 1) then
     write(error_unit,"('Error: Invalid reference in map')")
     stop
  end if
  vec = vec(map)
end subroutine permute_vec_in_place_int




