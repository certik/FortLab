subroutine sort_mat_dble(n,m,mat)
  integer, intent(in) :: n,m
  double precision, intent(in out) :: mat(n,m)
  integer :: map(n)
  double precision :: list(n)
  call DCOPY(n,mat(:,1),1,list,1)
  call sort(n,list,map)
  call permute(n,n,m,map,mat,mat)
end subroutine sort_mat_dble

subroutine sort_mat_real(n,m,mat)
  integer, intent(in) :: n,m
  real, intent(in out) :: mat(n,m)
  integer :: map(n)
  real :: list(n)
  call SCOPY(n,mat(:,1),1,list,1)
  call sort(n,list,map)
  call permute(n,n,m,map,mat,mat)
end subroutine sort_mat_real

subroutine sort_mat_int(n,m,mat)
  integer, intent(in) :: n,m
  integer, intent(in out) :: mat(n,m)
  integer :: map(n)
  integer :: list(n)
  list = mat(:,1)
  call sort(n,list,map)
  call permute(n,n,m,map,mat,mat)
end subroutine sort_mat_int

subroutine sort_mat_idx_col_dble(n,m,mat,col)
  integer, intent(in) :: n,m,col
  double precision, intent(in out) :: mat(n,m)
  integer :: map(n)
  double precision :: list(n)
  if (col > m .or. col < 1) then
     write(error_unit,'("Error: Column number is out of bounds.")')
     stop
  end if
  call DCOPY(n,mat(:,col),1,list,1)
  call sort(n,list,map)
  call permute(n,n,m,map,mat,mat)
end subroutine sort_mat_idx_col_dble

subroutine sort_mat_idx_col_real(n,m,mat,col)
  integer, intent(in) :: n,m,col
  real, intent(in out) :: mat(n,m)
  integer :: map(n)
  double precision :: list(n)
  if (col > m .or. col < 1) then
     write(error_unit,'("Error: Column number is out of bounds.")')
     stop
  end if
  call SCOPY(n,mat(:,col),1,list,1)
  call sort(n,list,map)
  call permute(n,n,m,map,mat,mat)
end subroutine sort_mat_idx_col_real

subroutine sort_mat_idx_col_int(n,m,mat,col)
  integer, intent(in) :: n,m,col
  integer, intent(in out) :: mat(n,m)
  integer :: map(n)
  integer :: list(n)
  if (col > m .or. col < 1) then
     write(error_unit,'("Error: Column number is out of bounds.")')
     stop
  end if
  list = mat(:,col)
  call sort(n,list,map)
  call permute(n,n,m,map,mat,mat)
end subroutine sort_mat_idx_col_int
