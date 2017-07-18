#ifndef __MEMDEFS_H__
#define __MEMDEFS_H__

#include "defs.h"

#define MEM_ALLOCATE_SIZE_ALIGN        (16)

#define  FTR_ALIGN_DOWN(address, align)   ((DGTPOINTER)(address)&(0-align)) 
#define  FTR_ALIGN_UP(address, align)     FTR_ALIGN_DOWN((DGTPOINTER)(address)+((align)-1), align) 

void InitMemoryAllocator();
void FreeMemoryAllocator();

DGTVOID* Malloc( UDGT32 nSize ); 
void Free( DGTVOID* Ptr ); 

#endif //__MEMDEFS_H__
