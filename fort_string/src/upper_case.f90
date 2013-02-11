subroutine upper_case_scl(str)
  character(len=*) :: str
  integer ::str_idx,char_num
  do str_idx = 1,len_trim(str)
     char_num = ichar(str(str_idx:str_idx))
     if (char_num >= 97 .and. char_num < 122) str(str_idx:str_idx) = char(char_num - 32)
  end do
end subroutine upper_case_scl

subroutine upper_case_vec(str)
  character(len=*) :: str(:)
  integer ::str_idx,char_num,i
  do i = 1,size(str)
     do str_idx = 1,len_trim(str)
        char_num = ichar(str(str_idx:str_idx))
        if (char_num >= 97 .and. char_num < 122) str(str_idx:str_idx) = char(char_num - 32)
     end do
  end do
end subroutine upper_case_vec

subroutine upper_case_mat(str)
  character(len=*) :: str(:,:)
  integer ::str_idx,char_num,i,j
  do j = 1,size(str,2)
     do i = 1,size(str,1)
        do str_idx = 1,len_trim(str)
           char_num = ichar(str(str_idx:str_idx))
           if (char_num >= 97 .and. char_num < 122) str(str_idx:str_idx) = char(char_num - 32)
        end do
     end do
  end do
end subroutine upper_case_mat
