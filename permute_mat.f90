subroutine permute_mat_int(n,m,k,map,mat_in,mat_out)
  integer, intent(in) :: n,m,k,map(m)
  integer, intent(in) :: mat_in(n,k)
  integer, intent(out) :: mat_out(m,k)
  integer :: i 
  if (maxval(map) > n .or. maxval(map) < 1) then
     write(error_unit,10)
     stop
  end if 
  do i = 1,m
     mat_out(i,:) = mat_in(map(i),:)
  end do
10 format('Error: Invalid reference in map')
end subroutine permute_mat_int

subroutine permute_mat_real(n,m,k,map,mat_in,mat_out)
  integer, intent(in) :: n,m,k,map(m)
  real, intent(in) :: mat_in(n,k)
  real, intent(out) :: mat_out(m,k)
  integer :: i 
  if (maxval(map) > n .or. maxval(map) < 1) then
     write(error_unit,10)
     stop
  end if
  do i = 1,m
     call SCOPY(k,mat_in(map(i),:),1,mat_out(i,:),1)
  end do
10 format('Error: Invalid reference in map')
end subroutine permute_mat_real

subroutine permute_mat_dble(n,m,k,map,mat_in,mat_out)
  integer, intent(in) :: n,m,k,map(m)
  double precision, intent(in) :: mat_in(n,k)
  double precision, intent(out) :: mat_out(m,k)
  integer :: i 
  if (maxval(map) > n .or. maxval(map) < 1) then
     write(error_unit,10)
     stop
  end if
  do i = 1,m
     call DCOPY(k,mat_in(map(i),:),1,mat_out(i,:),1)
  end do
10 format('Error: Invalid reference in map')
end subroutine permute_mat_dble
