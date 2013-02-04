subroutine permute_vec_real(map,vec_in,vec_out)
  integer, intent(in) :: map(:)
  real, intent(in) :: vec_in(:)
  real, intent(out) :: vec_out(:)
  if (maxval(map) > size(vec_in) .or. minval(map) < 1) then
     write(error_unit,"('Error: Invalid reference in map')")
     stop
  end if
  vec_out = vec_in(map)
end subroutine permute_vec_real

