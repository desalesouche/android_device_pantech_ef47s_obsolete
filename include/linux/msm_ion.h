/****************************************************************************
 ****************************************************************************
 ***
 ***   This header was automatically generated from a Linux kernel header
 ***   of the same name, to make information necessary for userspace to
 ***   call into the kernel available to libc.  It contains only constants,
 ***   structures, and macros generated from the original header, and thus,
 ***   contains no copyrightable information.
 ***
 ***   To edit the content of this header, modify the corresponding
 ***   source file (e.g. under external/kernel-headers/original/) then
 ***   run bionic/libc/kernel/tools/update_all.py
 ***
 ***   Any manual change here will be lost the next time this script will
 ***   be run. You've been warned!
 ***
 ****************************************************************************
 ****************************************************************************/
#ifndef __LINUX_MSM_ION_H__
#define __LINUX_MSM_ION_H__
#include <linux/ion.h>

#define ION_HEAP_CP_MASK (1 << ION_HEAP_TYPE_CP)
#define ION_SECURE (1 << ION_HEAP_ID_RESERVED)
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define ION_HEAP(bit) (1 << (bit))
#define ION_VMALLOC_HEAP_NAME "vmalloc"
#define ION_AUDIO_HEAP_NAME "audio"
#define ION_SF_HEAP_NAME "sf"
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define ION_MM_HEAP_NAME "mm"
#define ION_CAMERA_HEAP_NAME "camera_preview"
#define ION_IOMMU_HEAP_NAME "iommu"
#define ION_MFC_HEAP_NAME "mfc"
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define ION_WB_HEAP_NAME "wb"
#define ION_MM_FIRMWARE_HEAP_NAME "mm_fw"
#define ION_QSECOM_HEAP_NAME "qsecom"
#define ION_FMEM_HEAP_NAME "fmem"
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define CACHED 1
#define UNCACHED 0
#define ION_CACHE_SHIFT 0
#define ION_SET_CACHE(__cache) ((__cache) << ION_CACHE_SHIFT)
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define ION_IS_CACHED(__flags) ((__flags) & (1 << ION_CACHE_SHIFT))
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define ION_IOC_CLEAN_CACHES _IOWR(ION_IOC_MAGIC, 20,   struct ion_flush_data)
#define ION_IOC_INV_CACHES _IOWR(ION_IOC_MAGIC, 21,   struct ion_flush_data)
#define ION_IOC_CLEAN_INV_CACHES _IOWR(ION_IOC_MAGIC, 22,   struct ion_flush_data)
#define ION_IOC_GET_FLAGS _IOWR(ION_IOC_MAGIC, 23,   struct ion_flag_data)
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#endif

