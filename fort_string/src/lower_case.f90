subroutine lower_case_scl(str)
  character(len=*), intent(in out) :: str
  integer ::str_idx,char_num
  do str_idx = 1,len_trim(str)
     char_num = ichar(str(str_idx:str_idx))
     if (char_num >= 65 .and. char_num < 90) str(str_idx:str_idx) = char(char_num + 32)
  end do
end subroutine lower_case_scl

subroutine lower_case_vec(str)
  character(len=*), intent(in out) :: str(:)
  integer ::str_idx,char_num,i
  do i = 1,size(str)
     do str_idx = 1,len_trim(str(i))
        char_num = ichar(str(i)(str_idx:str_idx))
        if (char_num >= 65 .and. char_num < 90) str(i)(str_idx:str_idx) = char(char_num + 32)
     end do
  end do
end subroutine lower_case_vec

subroutine lower_case_mat(str)
  character(len=*), intent(in out) :: str(:,:)
  integer ::str_idx,char_num,i,j
  do j = 1,size(str,2)
     do i = 1,size(str,1)
        do str_idx = 1,len_trim(str(i,j))
           char_num = ichar(str(i,j)(str_idx:str_idx))
           if (char_num >= 65 .and. char_num < 90) str(i,j)(str_idx:str_idx) = char(char_num + 32)
        end do
     end do
  end do
end subroutine lower_case_mat
