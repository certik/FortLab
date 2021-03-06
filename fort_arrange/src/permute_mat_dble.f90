subroutine permute_mat_dble(map,mat_in,mat_out)
  integer, intent(in) :: map(:)
  double precision, intent(in) :: mat_in(:,:)
  double precision, intent(out) :: mat_out(:,:) 
  if (maxval(map) > size(mat_in,1) .or. minval(map) < 1) then
     write(error_unit,"('Error: Invalid reference in map')")
     stop
  end if
  mat_out = mat_in(map,:)
end subroutine permute_mat_dble

