#if defined(__arm__)
.text
	.align 3
methods:
	.space 16
	.align 2
Lm_0:
Binding__ctor:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,8,208,77,226,13,176,160,225,0,0,139,229,8,208,139,226
	.byte 0,9,189,232,8,112,157,229,0,160,157,232

Lme_0:
	.align 2
Lm_2:
Binding_initNEND:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,13,176,160,225
bl p_1

	.byte 0,0,80,227,0,0,0,10
bl p_2

	.byte 0,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_2:
	.align 2
Lm_4:
wrapper_managed_to_native_System_Array_GetGenericValueImpl_int_object_:

	.byte 13,192,160,225,240,95,45,233,120,208,77,226,13,176,160,225,0,0,139,229,4,16,139,229,8,32,139,229
bl p_3

	.byte 16,16,141,226,4,0,129,229,0,32,144,229,0,32,129,229,0,16,128,229,16,208,129,229,15,32,160,225,20,32,129,229
	.byte 0,0,155,229,0,0,80,227,16,0,0,10,0,0,155,229,4,16,155,229,8,32,155,229
bl p_4

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . -4
	.byte 0,0,159,231,0,0,144,229,0,0,80,227,10,0,0,26,16,32,139,226,0,192,146,229,4,224,146,229,0,192,142,229
	.byte 104,208,130,226,240,175,157,232,148,0,160,227,6,12,128,226,2,4,128,226
bl p_5
bl p_6
bl p_7

	.byte 242,255,255,234

Lme_4:
	.align 2
Lm_5:
wrapper_managed_to_native_Binding_initNEND_:

	.byte 13,192,160,225,240,95,45,233,104,208,77,226,13,176,160,225
bl p_3

	.byte 0,16,141,226,4,0,129,229,0,32,144,229,0,32,129,229,0,16,128,229,16,208,129,229,15,32,160,225,20,32,129,229
bl p_8

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . -4
	.byte 0,0,159,231,0,0,144,229,0,0,80,227,5,0,0,26,0,32,139,226,0,192,146,229,4,224,146,229,0,192,142,229
	.byte 104,208,130,226,240,175,157,232
bl p_7

	.byte 247,255,255,234

Lme_5:
.text
	.align 3
methods_end:
.text
	.align 3
method_offsets:

	.long Lm_0 - methods,-1,Lm_2 - methods,-1,Lm_4 - methods,Lm_5 - methods

.text
	.align 3
method_info:
mi:
Lm_0_p:

	.byte 0,0
Lm_2_p:

	.byte 0,0
Lm_4_p:

	.byte 0,1,2
Lm_5_p:

	.byte 0,1,2
.text
	.align 3
method_info_offsets:

	.long Lm_0_p - mi,0,Lm_2_p - mi,0,Lm_4_p - mi,Lm_5_p - mi

.text
	.align 3
extra_method_info:

	.byte 0,1,6,83,121,115,116,101,109,46,65,114,114,97,121,58,71,101,116,71,101,110,101,114,105,99,86,97,108,117,101,73
	.byte 109,112,108,32,40,105,110,116,44,111,98,106,101,99,116,38,41,0,1,6,66,105,110,100,105,110,103,58,105,110,105,116
	.byte 78,69,78,68,95,32,40,41,0

.text
	.align 3
extra_method_table:

	.long 11,0,0,0,1,4,11,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,50,5,0
.text
	.align 3
extra_method_info_offsets:

	.long 2,4,1,5,50
.text
	.align 3
method_order:

	.long 0,16777215,0,2,4,5

.text
method_order_end:
.text
	.align 3
class_name_table:

	.short 11, 1, 0, 0, 0, 0, 0, 2
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0
.text
	.align 3
got_info:

	.byte 12,0,39,33,3,193,0,18,5,3,2,7,17,109,111,110,111,95,103,101,116,95,108,109,102,95,97,100,100,114,0,31
	.byte 255,254,0,0,0,41,2,2,198,0,4,3,0,1,1,2,2,7,30,109,111,110,111,95,99,114,101,97,116,101,95,99
	.byte 111,114,108,105,98,95,101,120,99,101,112,116,105,111,110,95,48,0,7,25,109,111,110,111,95,97,114,99,104,95,116,104
	.byte 114,111,119,95,101,120,99,101,112,116,105,111,110,0,7,35,109,111,110,111,95,116,104,114,101,97,100,95,105,110,116,101
	.byte 114,114,117,112,116,105,111,110,95,99,104,101,99,107,112,111,105,110,116,0,31,2
.text
	.align 3
got_info_offsets:

	.long 0,2,3
.text
	.align 3
ex_info:
ex:
Le_0_p:

	.byte 44,2,0,0
Le_2_p:

	.byte 52,2,26,0
Le_4_p:

	.byte 128,172,2,49,0
Le_5_p:

	.byte 116,2,83,0
.text
	.align 3
ex_info_offsets:

	.long Le_0_p - ex,0,Le_2_p - ex,0,Le_4_p - ex,Le_5_p - ex

.text
	.align 3
unwind_info:

	.byte 25,12,13,0,76,14,8,135,2,68,14,24,136,6,139,5,140,4,142,3,68,14,32,68,13,11,22,12,13,0,76,14
	.byte 8,135,2,68,14,24,136,6,139,5,140,4,142,3,68,13,11,33,12,13,0,72,14,40,132,10,133,9,134,8,135,7
	.byte 136,6,137,5,138,4,139,3,140,2,142,1,68,14,160,1,68,13,11,33,12,13,0,72,14,40,132,10,133,9,134,8
	.byte 135,7,136,6,137,5,138,4,139,3,140,2,142,1,68,14,144,1,68,13,11
.text
	.align 3
class_info:
LK_I_0:

	.byte 0,128,144,8,0,0,1
LK_I_1:

	.byte 4,128,144,8,0,0,1,194,0,0,8,194,0,0,5,194,0,0,4,194,0,0,2
.text
	.align 3
class_info_offsets:

	.long LK_I_0 - class_info,LK_I_1 - class_info


.text
	.align 4
plt:
mono_aot_Assembly_CSharp_firstpass_plt:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 8,0
p_1:
plt_UnityEngine_Application_get_platform:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 12,4
p_2:
plt_Binding_initNEND_:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 16,9
p_3:
plt__jit_icall_mono_get_lmf_addr:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 20,11
p_4:
plt__icall_native_System_Array_GetGenericValueImpl_object_int_object_:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 24,31
p_5:
plt__jit_icall_mono_create_corlib_exception_0:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 28,49
p_6:
plt__jit_icall_mono_arch_throw_exception:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 32,82
p_7:
plt__jit_icall_mono_thread_interruption_checkpoint:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 36,110
p_8:
plt__icall_native_Binding_initNEND_:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 40,148
plt_end:
.text
	.align 3
mono_image_table:

	.long 3
	.asciz "Assembly-CSharp-firstpass"
	.asciz "6CDDDBFB-CCB7-46CB-9C4F-5EDF2F98D465"
	.asciz ""
	.asciz ""
	.align 3

	.long 0,0,0,0,0
	.asciz "UnityEngine"
	.asciz "916A2883-C8D8-4535-9CFF-3D01B84826C3"
	.asciz ""
	.asciz ""
	.align 3

	.long 0,0,0,0,0
	.asciz "mscorlib"
	.asciz "45DDC7DB-3693-4957-9938-935D77B10F93"
	.asciz ""
	.asciz "7cec85d7bea7798e"
	.align 3

	.long 1,2,0,5,0
.data
	.align 3
mono_aot_Assembly_CSharp_firstpass_got:
	.space 48
got_end:
.data
	.align 3
mono_aot_got_addr:
	.align 2
	.long mono_aot_Assembly_CSharp_firstpass_got
.data
	.align 3
mono_aot_file_info:

	.long 3,48,9,6,1024,1024,128,0
	.long 0,0,0,0,0
.text
	.align 2
mono_assembly_guid:
	.asciz "6CDDDBFB-CCB7-46CB-9C4F-5EDF2F98D465"
.text
	.align 2
mono_aot_version:
	.asciz "66"
.text
	.align 2
mono_aot_opt_flags:
	.asciz "55650815"
.text
	.align 2
mono_aot_full_aot:
	.asciz "TRUE"
.text
	.align 2
mono_runtime_version:
	.asciz ""
.text
	.align 2
mono_aot_assembly_name:
	.asciz "Assembly-CSharp-firstpass"
.text
	.align 3
Lglobals_hash:

	.short 73, 26, 0, 0, 0, 0, 0, 0
	.short 0, 14, 0, 18, 0, 0, 0, 0
	.short 0, 5, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 28
	.short 0, 12, 0, 4, 0, 0, 0, 0
	.short 0, 3, 0, 27, 0, 0, 0, 8
	.short 0, 0, 0, 0, 0, 0, 0, 13
	.short 0, 1, 0, 0, 0, 0, 0, 11
	.short 74, 0, 0, 0, 0, 0, 0, 29
	.short 0, 2, 75, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 21, 0, 0, 0, 0, 0, 0
	.short 0, 10, 0, 16, 0, 7, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 15, 0, 19
	.short 0, 6, 73, 23, 0, 9, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 20, 0, 17, 76, 22, 0, 24
	.short 0, 25, 0
.text
	.align 2
name_0:
	.asciz "methods"
.text
	.align 2
name_1:
	.asciz "methods_end"
.text
	.align 2
name_2:
	.asciz "method_offsets"
.text
	.align 2
name_3:
	.asciz "method_info"
.text
	.align 2
name_4:
	.asciz "method_info_offsets"
.text
	.align 2
name_5:
	.asciz "extra_method_info"
.text
	.align 2
name_6:
	.asciz "extra_method_table"
.text
	.align 2
name_7:
	.asciz "extra_method_info_offsets"
.text
	.align 2
name_8:
	.asciz "method_order"
.text
	.align 2
name_9:
	.asciz "method_order_end"
.text
	.align 2
name_10:
	.asciz "class_name_table"
.text
	.align 2
name_11:
	.asciz "got_info"
.text
	.align 2
name_12:
	.asciz "got_info_offsets"
.text
	.align 2
name_13:
	.asciz "ex_info"
.text
	.align 2
name_14:
	.asciz "ex_info_offsets"
.text
	.align 2
name_15:
	.asciz "unwind_info"
.text
	.align 2
name_16:
	.asciz "class_info"
.text
	.align 2
name_17:
	.asciz "class_info_offsets"
.text
	.align 2
name_18:
	.asciz "plt"
.text
	.align 2
name_19:
	.asciz "plt_end"
.text
	.align 2
name_20:
	.asciz "mono_image_table"
.text
	.align 2
name_21:
	.asciz "mono_aot_got_addr"
.text
	.align 2
name_22:
	.asciz "mono_aot_file_info"
.text
	.align 2
name_23:
	.asciz "mono_assembly_guid"
.text
	.align 2
name_24:
	.asciz "mono_aot_version"
.text
	.align 2
name_25:
	.asciz "mono_aot_opt_flags"
.text
	.align 2
name_26:
	.asciz "mono_aot_full_aot"
.text
	.align 2
name_27:
	.asciz "mono_runtime_version"
.text
	.align 2
name_28:
	.asciz "mono_aot_assembly_name"
.data
	.align 3
Lglobals:
	.align 2
	.long Lglobals_hash
	.align 2
	.long name_0
	.align 2
	.long methods
	.align 2
	.long name_1
	.align 2
	.long methods_end
	.align 2
	.long name_2
	.align 2
	.long method_offsets
	.align 2
	.long name_3
	.align 2
	.long method_info
	.align 2
	.long name_4
	.align 2
	.long method_info_offsets
	.align 2
	.long name_5
	.align 2
	.long extra_method_info
	.align 2
	.long name_6
	.align 2
	.long extra_method_table
	.align 2
	.long name_7
	.align 2
	.long extra_method_info_offsets
	.align 2
	.long name_8
	.align 2
	.long method_order
	.align 2
	.long name_9
	.align 2
	.long method_order_end
	.align 2
	.long name_10
	.align 2
	.long class_name_table
	.align 2
	.long name_11
	.align 2
	.long got_info
	.align 2
	.long name_12
	.align 2
	.long got_info_offsets
	.align 2
	.long name_13
	.align 2
	.long ex_info
	.align 2
	.long name_14
	.align 2
	.long ex_info_offsets
	.align 2
	.long name_15
	.align 2
	.long unwind_info
	.align 2
	.long name_16
	.align 2
	.long class_info
	.align 2
	.long name_17
	.align 2
	.long class_info_offsets
	.align 2
	.long name_18
	.align 2
	.long plt
	.align 2
	.long name_19
	.align 2
	.long plt_end
	.align 2
	.long name_20
	.align 2
	.long mono_image_table
	.align 2
	.long name_21
	.align 2
	.long mono_aot_got_addr
	.align 2
	.long name_22
	.align 2
	.long mono_aot_file_info
	.align 2
	.long name_23
	.align 2
	.long mono_assembly_guid
	.align 2
	.long name_24
	.align 2
	.long mono_aot_version
	.align 2
	.long name_25
	.align 2
	.long mono_aot_opt_flags
	.align 2
	.long name_26
	.align 2
	.long mono_aot_full_aot
	.align 2
	.long name_27
	.align 2
	.long mono_runtime_version
	.align 2
	.long name_28
	.align 2
	.long mono_aot_assembly_name

	.long 0,0
	.globl _mono_aot_module_Assembly_CSharp_firstpass_info
	.align 3
_mono_aot_module_Assembly_CSharp_firstpass_info:
	.align 2
	.long Lglobals
.text
	.align 3
mem_end:
#endif
