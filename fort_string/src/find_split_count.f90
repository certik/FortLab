!Find the number of strings in the 
function find_split_count_scl(str,dlm) result(n)
  character(len=*), intent(in) :: str
  character(len=*), intent(in) :: dlm
  integer :: n
  integer, allocatable :: dlm_idx(:)
  call index_chars(str,dlm,dlm_idx)
  

subroutine find_split_idx(str,dlm,split_idx)
  
  
subroutine split(str,dlm,strings)
  character(len=*), intent(in) :: str,dlm
  character(len=:), allocatable, intent(out) :: strings(:)
  integer :: n,m,i,j,k
  integer, allocatable :: dlm_idx(:)

  !Get character index
  
  
  
  !Allocate
  allocate(character(len=m) :: strings(n))
  j = 1
  if (dlm_idx(1) > 1) then
     strings(j) = str(1:dlm_idx(1) - 1)
     j = j + 1
  end if
  do i = 2,size(dlm_idx)
     if (dlm_idx(i) - dlm_idx(i - 1) > 1) then
        strings(j) = str(dlm_idx(i - 1) + 1:dlm_idx(i) - 1)
        j = j + 1
     end if
  end do
  if (len(str) > dlm_idx(size(dlm_idx))) then
     strings(j) = str(dlm_idx(size(dlm_idx)) + 1:)
  end if
end subroutine split

