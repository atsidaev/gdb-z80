/* BFD back-end for Motorola M68K COFF LynxOS files.
   Copyright 1993 Free Software Foundation, Inc.
   Written by Cygnus Support.

This file is part of BFD, the Binary File Descriptor library.

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.  */

#define TARGET_SYM	m68klynx_coff_vec
#define TARGET_NAME	"coff-m68k-lynx"

#define LYNXOS

#define COFF_LONG_FILENAMES

#define _bfd_m68kcoff_howto_table _bfd_m68klynx_howto_table	
#define _bfd_m68kcoff_rtype2howto _bfd_m68klynx_rtype2howto	
#define _bfd_m68kcoff_howto2rtype _bfd_m68klynx_howto2rtype	

#define LYNX_SPECIAL_FN _bfd_m68klynx_special_fn

#include "bfd.h"

static bfd_reloc_status_type _bfd_m68klynx_special_fn PARAMS ((bfd *abfd,
						      arelent *reloc_entry,
						      asymbol *symbol,
						      PTR data,
						      asection *input_section,
						      bfd *output_bfd,
						      char **error_message));

/* For some reason when using m68k COFF the value stored in the .text
   section for a reference to a common symbol is the value itself plus
   any desired offset.  (taken from work done by Ian Taylor, Cygnus Support,
   for I386 COFF).  */

/* If we are producing relocateable output, we need to do some
   adjustments to the object file that are not done by the
   bfd_perform_relocation function.  This function is called by every
   reloc type to make any required adjustments.  */

static bfd_reloc_status_type
_bfd_m68klynx_special_fn (abfd, reloc_entry, symbol, data, input_section, output_bfd,
			  error_message)
     bfd *abfd;
     arelent *reloc_entry;
     asymbol *symbol;
     PTR data;
     asection *input_section;
     bfd *output_bfd;
     char **error_message;
{
  symvalue diff;

  if (output_bfd == (bfd *) NULL)
    return bfd_reloc_continue;

  if (bfd_is_com_section (symbol->section))
    {
      /* We are relocating a common symbol.  The current value in the
	 object file is ORIG + OFFSET, where ORIG is the value of the
	 common symbol as seen by the object file when it was compiled
	 (this may be zero if the symbol was undefined) and OFFSET is
	 the offset into the common symbol (normally zero, but may be
	 non-zero when referring to a field in a common structure).
	 ORIG is the negative of reloc_entry->addend, which is set by
	 the CALC_ADDEND macro below.  We want to replace the value in
	 the object file with NEW + OFFSET, where NEW is the value of
	 the common symbol which we are going to put in the final
	 object file.  NEW is symbol->value.  */
      diff = symbol->value + reloc_entry->addend;
    }
  else
    {
      /* For some reason bfd_perform_relocation always effectively
	 ignores the addend for a COFF target when producing
	 relocateable output.  This seems to be always wrong for 386
	 COFF, so we handle the addend here instead.  */
      diff = reloc_entry->addend;
    }

#define DOIT(x) \
  x = ((x & ~howto->dst_mask) | (((x & howto->src_mask) + diff) & howto->dst_mask))

  if (diff != 0)
    {
      const reloc_howto_type *howto = reloc_entry->howto;
      unsigned char *addr = (unsigned char *) data + reloc_entry->address;

      switch (howto->size)
	{
	case 0:
	  {
	    char x = bfd_get_8 (abfd, addr);
	    DOIT (x);
	    bfd_put_8 (abfd, x, addr);
	  }
	  break;

	case 1:
	  {
	    short x = bfd_get_16 (abfd, addr);
	    DOIT (x);
	    bfd_put_16 (abfd, x, addr);
	  }
	  break;

	case 2:
	  {
	    long x = bfd_get_32 (abfd, addr);
	    DOIT (x);
	    bfd_put_32 (abfd, x, addr);
	  }
	  break;

	default:
	  abort ();
	}
    }

  /* Now let bfd_perform_relocation finish everything up.  */
  return bfd_reloc_continue;
}
/* Compute the addend of a reloc.  If the reloc is to a common symbol,
   the object file contains the value of the common symbol.  By the
   time this is called, the linker may be using a different symbol
   from a different object file with a different value.  Therefore, we
   hack wildly to locate the original symbol from this file so that we
   can make the correct adjustment.  This macro sets coffsym to the
   symbol from the original file, and uses it to set the addend value
   correctly.  If this is not a common symbol, the usual addend
   calculation is done, except that an additional tweak is needed for
   PC relative relocs.
   FIXME: This macro refers to symbols and asect; these are from the
   calling function, not the macro arguments.  */

#define CALC_ADDEND(abfd, ptr, reloc, cache_ptr)		\
  {								\
    coff_symbol_type *coffsym = (coff_symbol_type *) NULL;	\
    if (ptr && bfd_asymbol_bfd (ptr) != abfd)			\
      coffsym = (obj_symbols (abfd)				\
	         + (cache_ptr->sym_ptr_ptr - symbols));		\
    else if (ptr)						\
      coffsym = coff_symbol_from (abfd, ptr);			\
    if (coffsym != (coff_symbol_type *) NULL			\
	&& coffsym->native->u.syment.n_scnum == 0)		\
      cache_ptr->addend = - coffsym->native->u.syment.n_value;	\
    else if (ptr && bfd_asymbol_bfd (ptr) == abfd		\
	     && ptr->section != (asection *) NULL)		\
      cache_ptr->addend = - (ptr->section->vma + ptr->value);	\
    else							\
      cache_ptr->addend = 0;					\
    if (ptr && _bfd_m68klynx_howto_table[reloc.r_type].pc_relative) \
      cache_ptr->addend += asect->vma;				\
  }


#include "coff-m68k.c"
