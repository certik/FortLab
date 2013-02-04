subroutine sort_mat_idx_col_dble(mat,col)
  double precision, intent(in out) :: mat(:,:)
  integer, intent(in) :: col
  double precision :: vec(size(mat,1))
  integer :: map(size(mat,1))
  if (col > size(mat,2) .or. col < 1) then
     write(error_unit,'("Error: Column number is out of bounds.")')
     stop
  end if
  call DCOPY(size(mat,1), mat(:,col), 1, vec, 1)
  call sort(vec,map)
  call permute(map,mat)
end subroutine sort_mat_idx_col_dble
