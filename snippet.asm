00E06478 | 60                       | pushad                                  |
00E06479 | 9C                       | pushfd                                  |
00E0647A | FC                       | cld                                     |
00E0647B | E8 82000000              | call patch0.E06502                      |
00E06480 | 60                       | pushad                                  |
00E06481 | 89E5                     | mov ebp,esp                             |
00E06483 | 31C0                     | xor eax,eax                             |
00E06485 | 64:8B50 30               | mov edx,dword ptr fs:[eax+30]           |
00E06489 | 8B52 0C                  | mov edx,dword ptr ds:[edx+C]            |
00E0648C | 8B52 14                  | mov edx,dword ptr ds:[edx+14]           |
00E0648F | 8B72 28                  | mov esi,dword ptr ds:[edx+28]           | esi:"minkernel\\ntdll\\ldrinit.c"
00E06492 | 0FB74A 26                | movzx ecx,word ptr ds:[edx+26]          |
00E06496 | 31FF                     | xor edi,edi                             | edi:"LdrpInitializeProcess"
00E06498 | AC                       | lodsb                                   |
00E06499 | 3C 61                    | cmp al,61                               | 61:'a'
00E0649B | 7C 02                    | jl patch0.E0649F                        |
00E0649D | 2C 20                    | sub al,20                               |
00E0649F | C1CF 0D                  | ror edi,D                               | edi:"LdrpInitializeProcess"
00E064A2 | 01C7                     | add edi,eax                             | edi:"LdrpInitializeProcess"
00E064A4 | E2 F2                    | loop patch0.E06498                      |
00E064A6 | 52                       | push edx                                |
00E064A7 | 57                       | push edi                                | edi:"LdrpInitializeProcess"
00E064A8 | 8B52 10                  | mov edx,dword ptr ds:[edx+10]           |
00E064AB | 8B4A 3C                  | mov ecx,dword ptr ds:[edx+3C]           |
00E064AE | 8B4C11 78                | mov ecx,dword ptr ds:[ecx+edx+78]       |
00E064B2 | E3 48                    | jecxz patch0.E064FC                     |
00E064B4 | 01D1                     | add ecx,edx                             |
00E064B6 | 51                       | push ecx                                |
00E064B7 | 8B59 20                  | mov ebx,dword ptr ds:[ecx+20]           |
00E064BA | 01D3                     | add ebx,edx                             |
00E064BC | 8B49 18                  | mov ecx,dword ptr ds:[ecx+18]           |
00E064BF | E3 3A                    | jecxz patch0.E064FB                     |
00E064C1 | 49                       | dec ecx                                 |
00E064C2 | 8B348B                   | mov esi,dword ptr ds:[ebx+ecx*4]        | esi:"minkernel\\ntdll\\ldrinit.c"
00E064C5 | 01D6                     | add esi,edx                             | esi:"minkernel\\ntdll\\ldrinit.c"
00E064C7 | 31FF                     | xor edi,edi                             | edi:"LdrpInitializeProcess"
00E064C9 | AC                       | lodsb                                   |
00E064CA | C1CF 0D                  | ror edi,D                               | edi:"LdrpInitializeProcess"
00E064CD | 01C7                     | add edi,eax                             | edi:"LdrpInitializeProcess"
00E064CF | 38E0                     | cmp al,ah                               |
00E064D1 | 75 F6                    | jne patch0.E064C9                       |
00E064D3 | 037D F8                  | add edi,dword ptr ss:[ebp-8]            |
00E064D6 | 3B7D 24                  | cmp edi,dword ptr ss:[ebp+24]           |
00E064D9 | 75 E4                    | jne patch0.E064BF                       |
00E064DB | 58                       | pop eax                                 |
00E064DC | 8B58 24                  | mov ebx,dword ptr ds:[eax+24]           |
00E064DF | 01D3                     | add ebx,edx                             |
00E064E1 | 66:8B0C4B                | mov cx,word ptr ds:[ebx+ecx*2]          |
00E064E5 | 8B58 1C                  | mov ebx,dword ptr ds:[eax+1C]           |
00E064E8 | 01D3                     | add ebx,edx                             |
00E064EA | 8B048B                   | mov eax,dword ptr ds:[ebx+ecx*4]        |
00E064ED | 01D0                     | add eax,edx                             |
00E064EF | 894424 24                | mov dword ptr ss:[esp+24],eax           |
00E064F3 | 5B                       | pop ebx                                 |
00E064F4 | 5B                       | pop ebx                                 |
00E064F5 | 61                       | popad                                   |
00E064F6 | 59                       | pop ecx                                 |
00E064F7 | 5A                       | pop edx                                 |
00E064F8 | 51                       | push ecx                                |
00E064F9 | FFE0                     | jmp eax                                 |
00E064FB | 5F                       | pop edi                                 | edi:"LdrpInitializeProcess"
00E064FC | 5F                       | pop edi                                 | edi:"LdrpInitializeProcess"
00E064FD | 5A                       | pop edx                                 |
00E064FE | 8B12                     | mov edx,dword ptr ds:[edx]              |
00E06500 | EB 8D                    | jmp patch0.E0648F                       |
00E06502 | 5D                       | pop ebp                                 |
00E06503 | 6A 01                    | push 1                                  |
00E06505 | 8D85 B2000000            | lea eax,dword ptr ss:[ebp+B2]           |
00E0650B | 50                       | push eax                                |
00E0650C | 68 318B6F87              | push 876F8B31                           |
00E06511 | FFD5                     | call ebp                                |
00E06513 | BB F0B5A256              | mov ebx,56A2B5F0                        |
00E06518 | 68 A695BD9D              | push 9DBD95A6                           |
00E0651D | FFD5                     | call ebp                                |
00E0651F | 3C 06                    | cmp al,6                                |
00E06521 | 7C 0A                    | jl patch0.E0652D                        |
00E06523 | 80FB E0                  | cmp bl,E0                               |
00E06526 | 75 05                    | jne patch0.E0652D                       |
00E06528 | BB 4713726F              | mov ebx,6F721347                        |
00E0652D | EB 19                    | jmp patch0.E06548                       |
00E0652F | 53                       | push ebx                                |
00E06530 | FFD5                     | call ebp                                |
00E06532 | 6361 6C                  | arpl word ptr ds:[ecx+6C],sp            |
00E06535 | 632E                     | arpl word ptr ds:[esi],bp               |
00E06537 | 65:78 65                 | js patch0.E0659F                        |
00E0653A | 0000                     | add byte ptr ds:[eax],al                |
00E0653C | 0000                     | add byte ptr ds:[eax],al                |
00E0653E | 0000                     | add byte ptr ds:[eax],al                |
00E06540 | 0000                     | add byte ptr ds:[eax],al                |
00E06542 | 0000                     | add byte ptr ds:[eax],al                |
00E06544 | 0000                     | add byte ptr ds:[eax],al                |
00E06546 | 0000                     | add byte ptr ds:[eax],al                |
00E06548 | 9D                       | popfd                                   |
00E06549 | 61                       | popad                                   |
00E0654A | 55                       | push ebp                                |
00E0654B | 8BEC                     | mov ebp,esp                             |
00E0654D | E9 11BAFFFF              | jmp patch0.E01F63                       |
