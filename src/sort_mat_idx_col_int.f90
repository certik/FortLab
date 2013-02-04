subroutine sort_mat_idx_col_int(mat,col)
  integer, intent(in out) :: mat(:,:)
  integer, intent(in) :: col
  integer :: vec(size(mat,1))
  integer :: map(size(mat,1))

  if (col > size(mat,2) .or. col < 1) then
     write(error_unit,'("Error: Column number is out of bounds.")')
     stop
  end if
  vec = mat(:,col)
  call sort(vec,map)
  call permute(map,mat)
end subroutine sort_mat_idx_col_int
