; Copyright (c) 2022, Jörg Burbach, Ducks on the Water
; All rights reserved.

; This source code is licensed under the BSD-style license found in the LICENSE file in the root directory of this source tree. 

global bpb_disk_info

jmp bootBlock

TIMES 3-($-$$) DB 0x90   	; Support 2 or 3 byte encoded JMPs before BPB.

bpb_disk_info:
    ; Dos 4.0 EBPB 1.44MB floppy
    OEMname:           db    "OZON.OS    "
    bytesPerSector:    dw    512
    sectPerCluster:    db    1
    reservedSectors:   dw    1
    numFAT:            db    2
    numRootDirEntries: dw    224
    numSectors:        dw    2880
    mediaType:         db    0xf0
    numFATsectors:     dw    9
    sectorsPerTrack:   dw    18
    numHeads:          dw    2
    numHiddenSectors:  dd    0
    numSectorsHuge:    dd    0
    driveNum:          db    0
    reserved:          db    0
    signature:         db    0x29
    volumeID:          dd    0x2d7e5a1a
    volumeLabel:       db    "OZON.OS    "
    fileSysType:       db    "FAT12   "
							