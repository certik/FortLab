subroutine sort_mat_int(mat)
  !Variables
  !mat:      Matrix to be sorted
  !mat_copy: Internal copy of matrix
  integer, intent(in out) :: mat(:,:)
  integer :: map(size(mat,1))
  integer :: mat_copy(size(mat,1),size(mat,2))
  mat_copy = mat
  call sort(mat(:,1),map)
  call permute(map,mat_copy,mat)
end subroutine sort_mat_int

subroutine sort_mat_real(mat)
  !Variables
  !mat:      Matrix to be sorted
  !mat_copy: Internal copy of matrix
  real, intent(in out) :: mat(:,:)
  integer :: map(size(mat,1))
  real :: mat_copy(size(mat,1),size(mat,2))
  call SCOPY(size(mat,1) * size(mat,2), mat, 1, mat_copy, 1)
  call sort(mat(:,1),map)
  call permute(map,mat_copy,mat)
end subroutine sort_mat_real

subroutine sort_mat_dble(mat)
  !Variables
  !mat:      Matrix to be sorted
  !mat_copy: Internal copy of matrix
  double precision, intent(in out) :: mat(:,:)
  integer :: map(size(mat,1))
  double precision :: mat_copy(size(mat,1),size(mat,2))
  call DCOPY(size(mat,1) * size(mat,2), mat, 1, mat_copy, 1)
  call sort(mat(:,1),map)
  call permute(map,mat_copy,mat)
end subroutine sort_mat_dble

subroutine sort_mat_idx_col_int(mat,col)
  !Variables
  !mat:      Matrix to be sorted
  !col:      Column number to sort matrix by
  !mat_copy: Internal copy of matrix
  integer, intent(in out) :: mat(:,:)
  integer, intent(in) :: col
  integer :: map(size(mat,1))
  integer :: mat_copy(size(mat,1),size(mat,2))
  if (col > size(mat,2) .or. col < 1) then
     write(error_unit,'("Error: Column number is out of bounds.")')
     stop
  end if
  mat_copy = mat
  call sort(mat(:,col),map)
  call permute(map,mat_copy,mat)
end subroutine sort_mat_idx_col_int

subroutine sort_mat_idx_col_real(mat,col)
  !Variables
  !mat:      Matrix to be sorted
  !col:      Column number to sort matrix by
  !mat_copy: Internal copy of matrix
  real, intent(in out) :: mat(:,:)
  integer, intent(in) :: col
  integer :: map(size(mat,1))
  real :: mat_copy(size(mat,1),size(mat,2))
  if (col > size(mat,2) .or. col < 1) then
     write(error_unit,'("Error: Column number is out of bounds.")')
     stop
  end if
  call SCOPY(size(mat,1) * size(mat,2), mat, 1, mat_copy, 1)
  call sort(mat(:,col),map)
  call permute(map,mat_copy,mat)
end subroutine sort_mat_idx_col_real

subroutine sort_mat_idx_col_dble(mat,col)
  !Variables
  !mat:      Matrix to be sorted
  !col:      Column number to sort matrix by
  !mat_copy: Internal copy of matrix
  double precision, intent(in out) :: mat(:,:)
  integer, intent(in) :: col
  integer :: map(size(mat,1))
  double precision :: mat_copy(size(mat,1),size(mat,2))
  if (col > size(mat,2) .or. col < 1) then
     write(error_unit,'("Error: Column number is out of bounds.")')
     stop
  end if
  call DCOPY(size(mat,1) * size(mat,2), mat, 1, mat_copy, 1)
  call sort(mat(:,col),map)
  call permute(map,mat_copy,mat)
end subroutine sort_mat_idx_col_dble
