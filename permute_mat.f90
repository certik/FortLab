subroutine permute_mat_int(n,m,k,map,mat_in,mat_out)
  integer, intent(in) :: n,m,k,map(m)
  integer, intent(in) :: mat_in(n,k)
  integer, intent(out) :: mat_out(m,k)
  integer :: i 
  if (maxval(map) > n .or. maxval(map) < 1) then
     write(error_unit,"('Error: Invalid reference in map')")
     stop
  end if
  mat_out = mat_in(map,:)
end subroutine permute_mat_int

subroutine permute_mat_real(n,m,k,map,mat_in,mat_out)
  integer, intent(in) :: n,m,k,map(m)
  real, intent(in) :: mat_in(n,k)
  real, intent(out) :: mat_out(m,k)
  integer :: i 
  if (maxval(map) > n .or. maxval(map) < 1) then
     write(error_unit,"('Error: Invalid reference in map')")
     stop
  end if
  mat_out = mat_in(map,:)
end subroutine permute_mat_real

subroutine permute_mat_dble(n,m,k,map,mat_in,mat_out)
  integer, intent(in) :: n,m,k,map(m)
  double precision, intent(in) :: mat_in(n,k)
  double precision, intent(out) :: mat_out(m,k)
  integer :: i 
  if (maxval(map) > n .or. maxval(map) < 1) then
     write(error_unit,"('Error: Invalid reference in map')")
     stop
  end if
  mat_out = mat_in(map,:)
end subroutine permute_mat_dble
