subroutine sort_mat_dble(mat)
  double precision, intent(in out) :: mat(:,:)
  double precision :: vec(size(mat,1))
  integer :: map(size(mat,1))
  call DCOPY(size(mat,1),mat(:,1),1,vec,1)
  call sort(vec,map)
  call permute(map,mat)
end subroutine sort_mat_dble

