subroutine permute_mat_in_place_real(map,mat)
  integer, intent(in) :: map(:)
  real, intent(in out) :: mat(:,:)
  real :: vec(size(mat,1))
  integer :: i
  
  !Check that map and mat match
  if (size(mat,1) /= size(map)) then
     write(error_unit,"('Error: Map length and dim 1 of matrix do not match.')")
     stop
  end if
  
  !Check bounds on map
  if (maxval(map) > size(mat,1) .or. minval(map) < 1) then
     write(error_unit,"('Error: Invalid reference in map')")
     stop
  end if

  !Run though the columns of matrix swapping them by the map, this should be faster than doing it by rows as mat = mat(map,:) would do
  do i = 1,size(mat,2)
     call SCOPY(size(mat,1), mat(:,i), 1, vec, 1)
     mat(:,i) = vec(map)
  end do   
end subroutine permute_mat_in_place_real


