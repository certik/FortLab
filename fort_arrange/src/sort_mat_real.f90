subroutine sort_mat_real(mat)
  real, intent(in out) :: mat(:,:)
  real :: vec(size(mat,1))
  integer :: map(size(mat,1))
  call SCOPY(size(mat,1),mat(:,1),1,vec,1)
  call sort(vec,map)
  call permute(map,mat)
end subroutine sort_mat_real

