subroutine sort_mat_int(mat)
  integer, intent(in out) :: mat(:,:)
  integer :: vec(size(mat,1))
  integer :: map(size(mat,1))
  vec = mat(:,1)
  call sort(vec,map)
  call permute(map,mat)
end subroutine sort_mat_int
