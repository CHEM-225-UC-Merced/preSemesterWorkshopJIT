      program jit101
!
!     This is a just-in-time program to demonstrate subroutines and a few other
!     things we've covered thus far.
!
      implicit none
      real::x,y
      real,parameter::m=1.0,b=-12.0
      real,external::lineValueFunction
!
!     Ask the user for the value of x. Then, evaluate the function value
!     (y=mx+b) and print it out.
!
      write(*,*)' What is the value of x?'
      read(*,*) x
      write(*,*)' m = ',m
      write(*,*)' b = ',b
      write(*,*)' x = ',x

!hph+
!      y = m*x+b
      call lineValue(m,b,x,y)
      y = lineValueFunction(m,b,x)
      write(*,*)' mx+b = ',m*x+b
      write(*,*)' The value from the function is ',lineValueFunction(m,b,x)
!hph-

      write(*,*)' The function value is y = ',y
!
      end program jit101


      subroutine lineValue(m,b,x,y)
!
!     This subroutine calculates the value of the line y=mx+b.
!
      implicit none
      real,intent(in)::m,b,x
      real,intent(out)::y
!
!     Do the work.
!
      y = m*x + b
!
      return
      end subroutine lineValue


      function lineValueFunction(m,b,x) result(y)
!
!     This function calculates the value of the line y=mx+b.
!
      implicit none
      real,intent(in)::m,b,x
      real::y
!
!     Do the work.
!
      y = m*x + b
!
      return
      end function lineValueFunction
