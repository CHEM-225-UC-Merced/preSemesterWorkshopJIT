      module complex_mod
!
!     This module provides a custom complex variable type.
!
      implicit none
      type myComplex
        private
        real::realPart,imaginaryPart
      end type myComplex

      contains

      function setMyComplex(realPart,imaginaryPart) result(z)
!
!     This function is used to set the value of a MyComplex object.
!
!
!     Variable Declarations
!
      implicit none
      real,intent(in)::realPart,imaginaryPart
      type(myComplex)::z
!
!     Do the work...
!
      z%realPart = realPart
      z%imaginaryPart = imaginaryPart
!
      return
      end function setMyComplex


      subroutine printMyComplex(z,zName,iOut)
!
!     This subroutine prints the value of a myComplex variable, z.
!
!
!     Variable Declarations
!
      implicit none
      type(myComplex),intent(in)::z
      character(len=*),optional::zName
      integer,optional::iOut
      integer::myIOut
!
!     Format Statements
!
 1000 format(1x,a,f12.5,'  + ',f12.5,' i')
!
!     Print z.
!
      if(present(iOut)) then
        myIOut = iOut
      else
        myIOut = 6
      endIf
      if(present(zName)) then
        write(myIOut,1000) TRIM(zName),z%realPart,z%imaginaryPart
      else
        write(myIOut,1000) ' z = ',z%realPart,z%imaginaryPart
      endIf
!
      return
      end subroutine printMyComplex

      end module complex_mod
