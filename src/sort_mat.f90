subroutine sort_mat_dble(mat)
  double precision, intent(in out) :: mat(:,:)
  integer :: map(size(mat,1))
  double precision :: x(size(mat,1))
  call DCOPY(size(mat,1),mat(:,1),1,x,1)
  call sort(x,map)
  call permute(map,mat,mat)
end subroutine sort_mat_dble

subroutine sort_mat_real(mat)
  real, intent(in out) :: mat(:,:)
  integer :: map(size(mat,1))
  real :: x(size(mat,1))
  call SCOPY(size(mat,1),mat(:,1),1,x,1)
  call sort(x,map)
  call permute(map,mat,mat)
end subroutine sort_mat_real

subroutine sort_mat_int(mat)
  integer, intent(in out) :: mat(:,:)
  integer :: map(size(mat,1))
  integer :: x(size(mat,1))
  x = mat(:,1)
  call sort(x,map)
  call permute(map,mat,mat)
end subroutine sort_mat_int


subroutine sort_mat_idx_col_dble(mat,col)
  double precision, intent(in out) :: mat(:,:)
  integer, intent(in) :: col
  integer :: map(size(mat,1))
  double precision :: x(size(mat,1))
  if (col > size(mat,2) .or. col < 1) then
     write(error_unit,'("Error: Column number is out of bounds.")')
     stop
  end if
  call DCOPY(size(mat,1),mat(:,col),1,x,1)
  call sort(x,map)
  call permute(map,mat,mat)
end subroutine sort_mat_idx_col_dble

subroutine sort_mat_idx_col_real(mat,col)
  real, intent(in out) :: mat(:,:)
  integer, intent(in) :: col
  integer :: map(size(mat,1))
  real :: x(size(mat,1))
  if (col > size(mat,2) .or. col < 1) then
     write(error_unit,'("Error: Column number is out of bounds.")')
     stop
  end if
  call SCOPY(size(mat,1),mat(:,col),1,x,1)
  call sort(x,map)
  call permute(map,mat,mat)
end subroutine sort_mat_idx_col_real

subroutine sort_mat_idx_col_int(mat,col)
  integer, intent(in out) :: mat(:,:)
  integer, intent(in) :: col
  integer :: map(size(mat,1))
  integer :: x(size(mat,1))
  if (col > size(mat,2) .or. col < 1) then
     write(error_unit,'("Error: Column number is out of bounds.")')
     stop
  end if
  x = mat(:,col)
  call sort(x,map)
  call permute(map,mat,mat)
end subroutine sort_mat_idx_col_int
