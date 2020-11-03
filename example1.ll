; ModuleID = './Samples/example1.cpp'
source_filename = "./Samples/example1.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.26.28806"

%"class.std::basic_ostream" = type { i32*, [4 x i8], i32, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_streambuf"*, %"class.std::basic_ostream"*, i8 }
%"class.std::ios_base" = type { i32 (...)**, i64, i32, i32, i32, i64, i64, %"struct.std::ios_base::_Iosarray"*, %"struct.std::ios_base::_Fnarray"*, %"class.std::locale"* }
%"struct.std::ios_base::_Iosarray" = type { %"struct.std::ios_base::_Iosarray"*, i32, i32, i8* }
%"struct.std::ios_base::_Fnarray" = type { %"struct.std::ios_base::_Fnarray"*, i32, void (i32, %"class.std::ios_base"*, i32)* }
%"class.std::locale" = type { [8 x i8], %"class.std::locale::_Locimp"* }
%"class.std::locale::_Locimp" = type { %"class.std::locale::facet", %"class.std::locale::facet"**, i64, i32, i8, %"class.std::_Yarn" }
%"class.std::locale::facet" = type { %"class.std::_Facet_base", i32 }
%"class.std::_Facet_base" = type { i32 (...)** }
%"class.std::_Yarn" = type { i8*, i8 }
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8**, i8**, i8*, i8*, i8**, i8**, i32, i32, i32*, i32*, %"class.std::locale"* }
%rtti.TypeDescriptor30 = type { i8**, i8*, [31 x i8] }
%eh.CatchableType = type { i32, i32, i32, i32, i32, i32, i32 }
%rtti.TypeDescriptor19 = type { i8**, i8*, [20 x i8] }
%eh.CatchableTypeArray.3 = type { i32, [3 x i32] }
%eh.ThrowInfo = type { i32, i32, i32, i32 }
%rtti.CompleteObjectLocator = type { i32, i32, i32, i32, i32, i32 }
%rtti.ClassHierarchyDescriptor = type { i32, i32, i32, i32 }
%rtti.BaseClassDescriptor = type { i32, i32, i32, i32, i32, i32, i32 }
%rtti.TypeDescriptor26 = type { i8**, i8*, [27 x i8] }
%rtti.TypeDescriptor22 = type { i8**, i8*, [23 x i8] }
%rtti.TypeDescriptor23 = type { i8**, i8*, [24 x i8] }
%eh.CatchableTypeArray.5 = type { i32, [5 x i32] }
%"union.std::_Align_type" = type { double, [8 x i8] }
%rtti.TypeDescriptor34 = type { i8**, i8*, [35 x i8] }
%rtti.TypeDescriptor33 = type { i8**, i8*, [34 x i8] }
%rtti.TypeDescriptor24 = type { i8**, i8*, [25 x i8] }
%"class.std::locale::id" = type { i64 }
%rtti.TypeDescriptor20 = type { i8**, i8*, [21 x i8] }
%rtti.TypeDescriptor21 = type { i8**, i8*, [22 x i8] }
%rtti.TypeDescriptor25 = type { i8**, i8*, [26 x i8] }
%rtti.TypeDescriptor18 = type { i8**, i8*, [19 x i8] }
%eh.CatchableTypeArray.2 = type { i32, [2 x i32] }
%"class.std::basic_string" = type { %"class.std::_Compressed_pair" }
%"class.std::_Compressed_pair" = type { %"class.std::_String_val" }
%"class.std::_String_val" = type { %"union.std::_String_val<std::_Simple_types<char>>::_Bxty", i64, i64 }
%"union.std::_String_val<std::_Simple_types<char>>::_Bxty" = type { i8*, [8 x i8] }
%"class.std::_String_iterator" = type { %"class.std::_String_const_iterator" }
%"class.std::_String_const_iterator" = type { i8* }
%"struct.std::_Zero_then_variadic_args_t" = type { i8 }
%"struct.std::_Fake_allocator" = type { i8 }
%"struct.std::_Fake_proxy_ptr_impl" = type { i8 }
%"struct.std::_Container_base0" = type { i8 }
%"class.std::basic_ostream<char, std::char_traits<char>>::sentry" = type { %"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base", i8 }
%"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base" = type { %"class.std::basic_ostream"* }
%"class.std::allocator" = type { i8 }
%class.anon = type { i8 }
%"class.std::bad_array_new_length" = type { %"class.std::bad_alloc" }
%"class.std::bad_alloc" = type { %"class.std::exception" }
%"class.std::exception" = type { i32 (...)**, %struct.__std_exception_data }
%struct.__std_exception_data = type { i8*, i8 }
%"struct.std::_Iterator_base0" = type { i8 }
%"class.std::ios_base::failure" = type { %"class.std::system_error" }
%"class.std::system_error" = type { %"class.std::_System_error" }
%"class.std::_System_error" = type { %"class.std::runtime_error", %"class.std::error_code" }
%"class.std::runtime_error" = type { %"class.std::exception" }
%"class.std::error_code" = type { i32, %"class.std::error_category"* }
%"class.std::error_category" = type { i32 (...)**, i64 }
%"class.std::_Iostream_error_category" = type { %"class.std::_Generic_error_category" }
%"class.std::_Generic_error_category" = type { %"class.std::error_category" }
%"struct.std::once_flag" = type { i8* }
%"class.std::error_condition" = type { i32, %"class.std::error_category"* }
%"struct.std::_One_then_variadic_args_t" = type { i8 }
%"struct.std::integral_constant" = type { i8 }
%class.anon.0 = type { i8 }
%"class.std::ctype" = type { %"struct.std::ctype_base", %struct._Ctypevec }
%"struct.std::ctype_base" = type { %"class.std::locale::facet" }
%struct._Ctypevec = type { i32, i16*, i32, i16* }
%"class.std::_Lockit" = type { i32 }
%"class.std::unique_ptr" = type { %"class.std::_Compressed_pair.2" }
%"class.std::_Compressed_pair.2" = type { %"class.std::_Facet_base"* }
%"class.std::_Locinfo" = type { %"class.std::_Lockit", %"class.std::_Yarn", %"class.std::_Yarn", %"class.std::_Yarn.3", %"class.std::_Yarn.3", %"class.std::_Yarn", %"class.std::_Yarn" }
%"class.std::_Yarn.3" = type { i16*, i16 }
%"class.std::bad_cast" = type { %"class.std::exception" }
%"struct.std::default_delete" = type { i8 }
%"struct.std::_Crt_new_delete" = type { i8 }
%"class.std::_Locbase" = type { i8 }

$"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z" = comdat any

$"?begin@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@XZ" = comdat any

$"?end@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@XZ" = comdat any

$"??9?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEBA_NAEBV01@@Z" = comdat any

$"??D?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEBAAEADXZ" = comdat any

$"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@D@Z" = comdat any

$"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@P6AAEAV01@AEAV01@@Z@Z" = comdat any

$"??$endl@DU?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@@Z" = comdat any

$"??E?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEAAAEAV01@XZ" = comdat any

$"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ" = comdat any

$"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ" = comdat any

$"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ" = comdat any

$"?_Orphan_all@_Container_base0@std@@QEAAXXZ" = comdat any

$"?_Large_string_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ" = comdat any

$"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ" = comdat any

$"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z" = comdat any

$"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z" = comdat any

$"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z" = comdat any

$"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ" = comdat any

$"??$_Deallocate@$0BA@$0A@@std@@YAXPEAX_K@Z" = comdat any

$"?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z" = comdat any

$"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z" = comdat any

$"??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z" = comdat any

$"?_Tidy_init@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ" = comdat any

$"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z" = comdat any

$"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ" = comdat any

$"??0?$allocator@D@std@@QEAA@XZ" = comdat any

$"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z" = comdat any

$"??$_Convert_size@_K@std@@YA_K_K@Z" = comdat any

$"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z" = comdat any

$"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ" = comdat any

$"?move@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z" = comdat any

$"??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??assign@01@QEAAAEAV01@QEBD0@Z@PEBD@Z" = comdat any

$"??$_Unfancy@D@std@@YAPEADPEAD@Z" = comdat any

$"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ" = comdat any

$"?_Xlen_string@std@@YAXXZ" = comdat any

$"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z" = comdat any

$"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z" = comdat any

$"??R<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@QEBA?A?<auto>@@QEAD10@Z" = comdat any

$"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z" = comdat any

$"?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z" = comdat any

$"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ" = comdat any

$"??$_Max_value@_K@std@@YAAEB_KAEB_K0@Z" = comdat any

$"??$_Min_value@_K@std@@YAAEB_KAEB_K0@Z" = comdat any

$"?max@?$numeric_limits@_J@std@@SA_JXZ" = comdat any

$"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ" = comdat any

$"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z" = comdat any

$"??$_Allocate@$0BA@U_Default_allocate_traits@std@@$0A@@std@@YAPEAX_K@Z" = comdat any

$"??$_Get_size_of_n@$00@std@@YA_K_K@Z" = comdat any

$"??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z" = comdat any

$"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z" = comdat any

$"?_Throw_bad_array_new_length@std@@YAXXZ" = comdat any

$"??0bad_array_new_length@std@@QEAA@XZ" = comdat any

$"??0bad_array_new_length@std@@QEAA@AEBV01@@Z" = comdat any

$"??0bad_alloc@std@@QEAA@AEBV01@@Z" = comdat any

$"??0exception@std@@QEAA@AEBV01@@Z" = comdat any

$"??1bad_array_new_length@std@@UEAA@XZ" = comdat any

$"??0bad_alloc@std@@AEAA@QEBD@Z" = comdat any

$"??_Gbad_array_new_length@std@@UEAAPEAXI@Z" = comdat any

$"?what@exception@std@@UEBAPEBDXZ" = comdat any

$"??0exception@std@@QEAA@QEBDH@Z" = comdat any

$"??_Gbad_alloc@std@@UEAAPEAXI@Z" = comdat any

$"??_Gexception@std@@UEAAPEAXI@Z" = comdat any

$"??1exception@std@@UEAA@XZ" = comdat any

$"??1bad_alloc@std@@UEAA@XZ" = comdat any

$"?copy@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z" = comdat any

$"??$addressof@PEAD@std@@YAPEAPEADAEAPEAD@Z" = comdat any

$"??$forward@AEBQEAD@std@@YAAEBQEADAEBQEAD@Z" = comdat any

$"??$addressof@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@YAPEAV?$_String_val@U?$_Simple_types@D@std@@@0@AEAV10@@Z" = comdat any

$"??$_Refancy@PEAD$0A@@std@@YAPEADPEAD@Z" = comdat any

$"??0?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEAA@PEBDPEBU_Container_base0@1@@Z" = comdat any

$"??0?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEAA@PEBDPEBU_Container_base0@1@@Z" = comdat any

$"?_Adopt@_Iterator_base0@std@@QEAAXPEBX@Z" = comdat any

$"??8?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEBA_NAEBV01@@Z" = comdat any

$"?_Compat@?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEBAXAEBV12@@Z" = comdat any

$"??E?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEAAAEAV01@XZ" = comdat any

$"??D?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEBAAEBDXZ" = comdat any

$"??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z" = comdat any

$"??Bsentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEBA_NXZ" = comdat any

$"?width@ios_base@std@@QEBA_JXZ" = comdat any

$"?flags@ios_base@std@@QEBAHXZ" = comdat any

$"?eq_int_type@?$_Narrow_char_traits@DH@std@@SA_NAEBH0@Z" = comdat any

$"?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ" = comdat any

$"?sputc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHD@Z" = comdat any

$"?fill@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBADXZ" = comdat any

$"?eof@?$_Narrow_char_traits@DH@std@@SAHXZ" = comdat any

$"?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z" = comdat any

$"?width@ios_base@std@@QEAA_J_J@Z" = comdat any

$"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ" = comdat any

$"??0_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z" = comdat any

$"?good@ios_base@std@@QEBA_NXZ" = comdat any

$"?tie@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_ostream@DU?$char_traits@D@std@@@2@XZ" = comdat any

$"?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ" = comdat any

$"??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ" = comdat any

$"?rdstate@ios_base@std@@QEBAHXZ" = comdat any

$"?pubsync@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHXZ" = comdat any

$"?_Pnavail@?$basic_streambuf@DU?$char_traits@D@std@@@std@@IEBA_JXZ" = comdat any

$"?to_int_type@?$_Narrow_char_traits@DH@std@@SAHAEBD@Z" = comdat any

$"?_Pninc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@IEAAPEADXZ" = comdat any

$"?clear@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z" = comdat any

$"?clear@ios_base@std@@QEAAXH_N@Z" = comdat any

$"?make_error_code@std@@YA?AVerror_code@1@W4io_errc@1@@Z" = comdat any

$"??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z" = comdat any

$"??0failure@ios_base@std@@QEAA@AEBV012@@Z" = comdat any

$"??0system_error@std@@QEAA@AEBV01@@Z" = comdat any

$"??0_System_error@std@@QEAA@AEBV01@@Z" = comdat any

$"??0runtime_error@std@@QEAA@AEBV01@@Z" = comdat any

$"??1failure@ios_base@std@@UEAA@XZ" = comdat any

$"?iostream_category@std@@YAAEBVerror_category@1@XZ" = comdat any

$"??0error_code@std@@QEAA@HAEBVerror_category@1@@Z" = comdat any

$"??$_Immortalize@V_Iostream_error_category@std@@@std@@YAAEAV_Iostream_error_category@0@XZ" = comdat any

$"??$_Immortalize_impl@V_Iostream_error_category@std@@@std@@YAHPEAX0PEAPEAX@Z" = comdat any

$"??0_Iostream_error_category@std@@QEAA@XZ" = comdat any

$"??0_Generic_error_category@std@@QEAA@XZ" = comdat any

$"??_G_Iostream_error_category@std@@UEAAPEAXI@Z" = comdat any

$"?name@_Iostream_error_category@std@@UEBAPEBDXZ" = comdat any

$"?message@_Iostream_error_category@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@H@Z" = comdat any

$"?default_error_condition@error_category@std@@UEBA?AVerror_condition@2@H@Z" = comdat any

$"?equivalent@error_category@std@@UEBA_NAEBVerror_code@2@H@Z" = comdat any

$"?equivalent@error_category@std@@UEBA_NHAEBVerror_condition@2@@Z" = comdat any

$"??0error_category@std@@QEAA@XZ" = comdat any

$"??_G_Generic_error_category@std@@UEAAPEAXI@Z" = comdat any

$"?name@_Generic_error_category@std@@UEBAPEBDXZ" = comdat any

$"?message@_Generic_error_category@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@H@Z" = comdat any

$"??1_Generic_error_category@std@@UEAA@XZ" = comdat any

$"??1error_category@std@@UEAA@XZ" = comdat any

$"??1_Iostream_error_category@std@@UEAA@XZ" = comdat any

$"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD_K@Z" = comdat any

$"??0error_condition@std@@QEAA@HAEBVerror_category@1@@Z" = comdat any

$"??8error_category@std@@QEBA_NAEBV01@@Z" = comdat any

$"?category@error_code@std@@QEBAAEBVerror_category@2@XZ" = comdat any

$"?value@error_code@std@@QEBAHXZ" = comdat any

$"??8std@@YA_NAEBVerror_condition@0@0@Z" = comdat any

$"?category@error_condition@std@@QEBAAEBVerror_category@2@XZ" = comdat any

$"?value@error_condition@std@@QEBAHXZ" = comdat any

$"??0system_error@std@@QEAA@Verror_code@1@PEBD@Z" = comdat any

$"??_Gfailure@ios_base@std@@UEAAPEAXI@Z" = comdat any

$"??0_System_error@std@@IEAA@Verror_code@1@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z" = comdat any

$"??_Gsystem_error@std@@UEAAPEAXI@Z" = comdat any

$"?_Makestr@_System_error@std@@CA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@Verror_code@2@V32@@Z" = comdat any

$"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z" = comdat any

$"??0runtime_error@std@@QEAA@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z" = comdat any

$"??_G_System_error@std@@UEAAPEAXI@Z" = comdat any

$"?empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_NXZ" = comdat any

$"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z" = comdat any

$"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@AEBV12@@Z" = comdat any

$"?message@error_code@std@@QEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ" = comdat any

$"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@$$QEAV01@@Z" = comdat any

$"?size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ" = comdat any

$"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z" = comdat any

$"??$_Reallocate_grow_by@V<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD_K@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??append@01@QEAAAEAV01@QEBD0@Z@PEBD_K@Z" = comdat any

$"??R<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@QEBA?A?<auto>@@QEAD0101@Z" = comdat any

$"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ" = comdat any

$"??$move@AEAV?$allocator@D@std@@@std@@YA$$QEAV?$allocator@D@0@AEAV10@@Z" = comdat any

$"??$?0V?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@$$QEAV?$allocator@D@1@@Z" = comdat any

$"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z" = comdat any

$"?_Take_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@U?$integral_constant@_N$00@2@@Z" = comdat any

$"??$forward@V?$allocator@D@std@@@std@@YA$$QEAV?$allocator@D@0@AEAV10@@Z" = comdat any

$"?_Memcpy_val_from@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@@Z" = comdat any

$"??$addressof@$$CBV?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@YAPEBV?$_String_val@U?$_Simple_types@D@std@@@0@AEBV10@@Z" = comdat any

$"?select_on_container_copy_construction@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA?AV?$allocator@D@2@AEBV32@@Z" = comdat any

$"?_Construct_lv_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@@Z" = comdat any

$"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ" = comdat any

$"??0exception@std@@QEAA@QEBD@Z" = comdat any

$"??_Gruntime_error@std@@UEAAPEAXI@Z" = comdat any

$"??1runtime_error@std@@UEAA@XZ" = comdat any

$"??1_System_error@std@@UEAA@XZ" = comdat any

$"??1system_error@std@@UEAA@XZ" = comdat any

$"?_Osfx@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAXXZ" = comdat any

$"?put@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@D@Z" = comdat any

$"?widen@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBADD@Z" = comdat any

$"??$use_facet@V?$ctype@D@std@@@std@@YAAEBV?$ctype@D@0@AEBVlocale@0@@Z" = comdat any

$"?getloc@ios_base@std@@QEBA?AVlocale@2@XZ" = comdat any

$"?widen@?$ctype@D@std@@QEBADD@Z" = comdat any

$"??1locale@std@@QEAA@XZ" = comdat any

$"??Bid@locale@std@@QEAA_KXZ" = comdat any

$"?_Getfacet@locale@std@@QEBAPEBVfacet@12@_K@Z" = comdat any

$"?_Getcat@?$ctype@D@std@@SA_KPEAPEBVfacet@locale@2@PEBV42@@Z" = comdat any

$"?_Throw_bad_cast@std@@YAXXZ" = comdat any

$"??$?0U?$default_delete@V_Facet_base@std@@@std@@$0A@@?$unique_ptr@V_Facet_base@std@@U?$default_delete@V_Facet_base@std@@@2@@std@@QEAA@PEAV_Facet_base@1@@Z" = comdat any

$"?release@?$unique_ptr@V_Facet_base@std@@U?$default_delete@V_Facet_base@std@@@2@@std@@QEAAPEAV_Facet_base@2@XZ" = comdat any

$"??1?$unique_ptr@V_Facet_base@std@@U?$default_delete@V_Facet_base@std@@@2@@std@@QEAA@XZ" = comdat any

$"?c_str@locale@std@@QEBAPEBDXZ" = comdat any

$"??0_Locinfo@std@@QEAA@PEBD@Z" = comdat any

$"??0?$ctype@D@std@@QEAA@AEBV_Locinfo@1@_K@Z" = comdat any

$"??1_Locinfo@std@@QEAA@XZ" = comdat any

$"?c_str@?$_Yarn@D@std@@QEBAPEBDXZ" = comdat any

$"??0?$_Yarn@D@std@@QEAA@XZ" = comdat any

$"??0?$_Yarn@_W@std@@QEAA@XZ" = comdat any

$"??1?$_Yarn@D@std@@QEAA@XZ" = comdat any

$"??1?$_Yarn@_W@std@@QEAA@XZ" = comdat any

$"?_Tidy@?$_Yarn@D@std@@AEAAXXZ" = comdat any

$"?_Tidy@?$_Yarn@_W@std@@AEAAXXZ" = comdat any

$"??0ctype_base@std@@QEAA@_K@Z" = comdat any

$"?_Init@?$ctype@D@std@@IEAAXAEBV_Locinfo@2@@Z" = comdat any

$"??1ctype_base@std@@UEAA@XZ" = comdat any

$"??_G?$ctype@D@std@@MEAAPEAXI@Z" = comdat any

$"?_Incref@facet@locale@std@@UEAAXXZ" = comdat any

$"?_Decref@facet@locale@std@@UEAAPEAV_Facet_base@3@XZ" = comdat any

$"?do_tolower@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z" = comdat any

$"?do_tolower@?$ctype@D@std@@MEBADD@Z" = comdat any

$"?do_toupper@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z" = comdat any

$"?do_toupper@?$ctype@D@std@@MEBADD@Z" = comdat any

$"?do_widen@?$ctype@D@std@@MEBAPEBDPEBD0PEAD@Z" = comdat any

$"?do_widen@?$ctype@D@std@@MEBADD@Z" = comdat any

$"?do_narrow@?$ctype@D@std@@MEBAPEBDPEBD0DPEAD@Z" = comdat any

$"?do_narrow@?$ctype@D@std@@MEBADDD@Z" = comdat any

$"??0facet@locale@std@@IEAA@_K@Z" = comdat any

$"??_Gctype_base@std@@UEAAPEAXI@Z" = comdat any

$"??0_Facet_base@std@@QEAA@XZ" = comdat any

$"??_Gfacet@locale@std@@MEAAPEAXI@Z" = comdat any

$"??_G_Facet_base@std@@UEAAPEAXI@Z" = comdat any

$"??1facet@locale@std@@MEAA@XZ" = comdat any

$"??1_Facet_base@std@@UEAA@XZ" = comdat any

$"?_Getctype@_Locinfo@std@@QEBA?AU_Ctypevec@@XZ" = comdat any

$"??1?$ctype@D@std@@MEAA@XZ" = comdat any

$"?_Tidy@?$ctype@D@std@@IEAAXXZ" = comdat any

$"??$_Adl_verify_range@PEADPEBD@std@@YAXAEBQEADAEBQEBD@Z" = comdat any

$"??$_Adl_verify_range@PEBDPEBD@std@@YAXAEBQEBD0@Z" = comdat any

$"??0bad_cast@std@@QEAA@XZ" = comdat any

$"??0bad_cast@std@@QEAA@AEBV01@@Z" = comdat any

$"??1bad_cast@std@@UEAA@XZ" = comdat any

$"??_Gbad_cast@std@@UEAAPEAXI@Z" = comdat any

$"??$?0AEAPEAV_Facet_base@std@@@?$_Compressed_pair@U?$default_delete@V_Facet_base@std@@@std@@PEAV_Facet_base@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@AEAPEAV_Facet_base@1@@Z" = comdat any

$"??$forward@AEAPEAV_Facet_base@std@@@std@@YAAEAPEAV_Facet_base@0@AEAPEAV10@@Z" = comdat any

$"??$exchange@PEAV_Facet_base@std@@PEAV12@@std@@YAPEAV_Facet_base@0@AEAPEAV10@$$QEAPEAV10@@Z" = comdat any

$"?_Get_first@?$_Compressed_pair@U?$default_delete@V_Facet_base@std@@@std@@PEAV_Facet_base@2@$00@std@@QEAAAEAU?$default_delete@V_Facet_base@std@@@2@XZ" = comdat any

$"??R?$default_delete@V_Facet_base@std@@@std@@QEBAXPEAV_Facet_base@1@@Z" = comdat any

$"??0locale@std@@QEAA@AEBV01@@Z" = comdat any

$"??_C@_0M@KPLPPDAC@Hello?5World?$AA@" = comdat any

$"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@" = comdat any

$"??_R0?AVbad_array_new_length@std@@@8" = comdat any

$"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24" = comdat any

$"??_R0?AVbad_alloc@std@@@8" = comdat any

$"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24" = comdat any

$"??_R0?AVexception@std@@@8" = comdat any

$"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" = comdat any

$"_CTA3?AVbad_array_new_length@std@@" = comdat any

$"_TI3?AVbad_array_new_length@std@@" = comdat any

$"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@" = comdat any

$"??_7bad_array_new_length@std@@6B@" = comdat largest

$"??_R4bad_array_new_length@std@@6B@" = comdat any

$"??_R3bad_array_new_length@std@@8" = comdat any

$"??_R2bad_array_new_length@std@@8" = comdat any

$"??_R1A@?0A@EA@bad_array_new_length@std@@8" = comdat any

$"??_R1A@?0A@EA@bad_alloc@std@@8" = comdat any

$"??_R3bad_alloc@std@@8" = comdat any

$"??_R2bad_alloc@std@@8" = comdat any

$"??_R1A@?0A@EA@exception@std@@8" = comdat any

$"??_R3exception@std@@8" = comdat any

$"??_R2exception@std@@8" = comdat any

$"??_7bad_alloc@std@@6B@" = comdat largest

$"??_R4bad_alloc@std@@6B@" = comdat any

$"??_7exception@std@@6B@" = comdat largest

$"??_R4exception@std@@6B@" = comdat any

$"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@" = comdat any

$"??_C@_0BF@PHHKMMFD@ios_base?3?3badbit?5set?$AA@" = comdat any

$"??_C@_0BG@FMKFHCIL@ios_base?3?3failbit?5set?$AA@" = comdat any

$"??_C@_0BF@OOHOMBOF@ios_base?3?3eofbit?5set?$AA@" = comdat any

$"??_R0?AVfailure@ios_base@std@@@8" = comdat any

$"_CT??_R0?AVfailure@ios_base@std@@@8??0failure@ios_base@std@@QEAA@AEBV012@@Z40" = comdat any

$"??_R0?AVsystem_error@std@@@8" = comdat any

$"_CT??_R0?AVsystem_error@std@@@8??0system_error@std@@QEAA@AEBV01@@Z40" = comdat any

$"??_R0?AV_System_error@std@@@8" = comdat any

$"_CT??_R0?AV_System_error@std@@@8??0_System_error@std@@QEAA@AEBV01@@Z40" = comdat any

$"??_R0?AVruntime_error@std@@@8" = comdat any

$"_CT??_R0?AVruntime_error@std@@@8??0runtime_error@std@@QEAA@AEBV01@@Z24" = comdat any

$"_CTA5?AVfailure@ios_base@std@@" = comdat any

$"_TI5?AVfailure@ios_base@std@@" = comdat any

$"?_Flag@?1???$_Immortalize@V_Iostream_error_category@std@@@std@@YAAEAV_Iostream_error_category@1@XZ@4PEAXEA" = comdat any

$"?_Storage@?1???$_Immortalize@V_Iostream_error_category@std@@@std@@YAAEAV_Iostream_error_category@1@XZ@4T?$_Align_type@N$0BA@@1@A" = comdat any

$"??_7_Iostream_error_category@std@@6B@" = comdat largest

$"??_R4_Iostream_error_category@std@@6B@" = comdat any

$"??_R0?AV_Iostream_error_category@std@@@8" = comdat any

$"??_R3_Iostream_error_category@std@@8" = comdat any

$"??_R2_Iostream_error_category@std@@8" = comdat any

$"??_R1A@?0A@EA@_Iostream_error_category@std@@8" = comdat any

$"??_R1A@?0A@EA@_Generic_error_category@std@@8" = comdat any

$"??_R0?AV_Generic_error_category@std@@@8" = comdat any

$"??_R3_Generic_error_category@std@@8" = comdat any

$"??_R2_Generic_error_category@std@@8" = comdat any

$"??_R1A@?0A@EA@error_category@std@@8" = comdat any

$"??_R0?AVerror_category@std@@@8" = comdat any

$"??_R3error_category@std@@8" = comdat any

$"??_R2error_category@std@@8" = comdat any

$"??_7_Generic_error_category@std@@6B@" = comdat largest

$"??_R4_Generic_error_category@std@@6B@" = comdat any

$"??_C@_07DCLBNMLN@generic?$AA@" = comdat any

$"??_C@_08LLGCOLLL@iostream?$AA@" = comdat any

$"?_Iostream_error@?4??message@_Iostream_error_category@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@3@H@Z@4QBDB" = comdat any

$"??_7failure@ios_base@std@@6B@" = comdat largest

$"??_R4failure@ios_base@std@@6B@" = comdat any

$"??_R3failure@ios_base@std@@8" = comdat any

$"??_R2failure@ios_base@std@@8" = comdat any

$"??_R1A@?0A@EA@failure@ios_base@std@@8" = comdat any

$"??_R1A@?0A@EA@system_error@std@@8" = comdat any

$"??_R3system_error@std@@8" = comdat any

$"??_R2system_error@std@@8" = comdat any

$"??_R1A@?0A@EA@_System_error@std@@8" = comdat any

$"??_R3_System_error@std@@8" = comdat any

$"??_R2_System_error@std@@8" = comdat any

$"??_R1A@?0A@EA@runtime_error@std@@8" = comdat any

$"??_R3runtime_error@std@@8" = comdat any

$"??_R2runtime_error@std@@8" = comdat any

$"??_7system_error@std@@6B@" = comdat largest

$"??_R4system_error@std@@6B@" = comdat any

$"??_7_System_error@std@@6B@" = comdat largest

$"??_R4_System_error@std@@6B@" = comdat any

$"??_C@_02LMMGGCAJ@?3?5?$AA@" = comdat any

$"??_7runtime_error@std@@6B@" = comdat largest

$"??_R4runtime_error@std@@6B@" = comdat any

$"?_Psave@?$_Facetptr@V?$ctype@D@std@@@std@@2PEBVfacet@locale@2@EB" = comdat any

$"??_C@_00CNPNBAHC@?$AA@" = comdat any

$"??_C@_0BA@ELKIONDK@bad?5locale?5name?$AA@" = comdat any

$"??_7?$ctype@D@std@@6B@" = comdat largest

$"??_R4?$ctype@D@std@@6B@" = comdat any

$"??_R0?AV?$ctype@D@std@@@8" = comdat any

$"??_R3?$ctype@D@std@@8" = comdat any

$"??_R2?$ctype@D@std@@8" = comdat any

$"??_R1A@?0A@EA@?$ctype@D@std@@8" = comdat any

$"??_R1A@?0A@EA@ctype_base@std@@8" = comdat any

$"??_R0?AUctype_base@std@@@8" = comdat any

$"??_R3ctype_base@std@@8" = comdat any

$"??_R2ctype_base@std@@8" = comdat any

$"??_R1A@?0A@EA@facet@locale@std@@8" = comdat any

$"??_R0?AVfacet@locale@std@@@8" = comdat any

$"??_R3facet@locale@std@@8" = comdat any

$"??_R2facet@locale@std@@8" = comdat any

$"??_R1A@?0A@EA@_Facet_base@std@@8" = comdat any

$"??_R0?AV_Facet_base@std@@@8" = comdat any

$"??_R3_Facet_base@std@@8" = comdat any

$"??_R2_Facet_base@std@@8" = comdat any

$"??_R17?0A@EA@_Crt_new_delete@std@@8" = comdat any

$"??_R0?AU_Crt_new_delete@std@@@8" = comdat any

$"??_R3_Crt_new_delete@std@@8" = comdat any

$"??_R2_Crt_new_delete@std@@8" = comdat any

$"??_R1A@?0A@EA@_Crt_new_delete@std@@8" = comdat any

$"??_7ctype_base@std@@6B@" = comdat largest

$"??_R4ctype_base@std@@6B@" = comdat any

$"??_7facet@locale@std@@6B@" = comdat largest

$"??_R4facet@locale@std@@6B@" = comdat any

$"??_7_Facet_base@std@@6B@" = comdat largest

$"??_R4_Facet_base@std@@6B@" = comdat any

$"??_R0?AVbad_cast@std@@@8" = comdat any

$"_CT??_R0?AVbad_cast@std@@@8??0bad_cast@std@@QEAA@AEBV01@@Z24" = comdat any

$"_CTA2?AVbad_cast@std@@" = comdat any

$"_TI2?AVbad_cast@std@@" = comdat any

$"??_C@_08EPJLHIJG@bad?5cast?$AA@" = comdat any

$"??_7bad_cast@std@@6B@" = comdat largest

$"??_R4bad_cast@std@@6B@" = comdat any

$"??_R3bad_cast@std@@8" = comdat any

$"??_R2bad_cast@std@@8" = comdat any

$"??_R1A@?0A@EA@bad_cast@std@@8" = comdat any

@"??_C@_0M@KPLPPDAC@Hello?5World?$AA@" = linkonce_odr dso_local unnamed_addr constant [12 x i8] c"Hello World\00", comdat, align 1
@"?cout@std@@3V?$basic_ostream@DU?$char_traits@D@std@@@1@A" = external dso_local global %"class.std::basic_ostream", align 8
@"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"string too long\00", comdat, align 1
@"??_7type_info@@6B@" = external constant i8*
@"??_R0?AVbad_array_new_length@std@@@8" = linkonce_odr global %rtti.TypeDescriptor30 { i8** @"??_7type_info@@6B@", i8* null, [31 x i8] c".?AVbad_array_new_length@std@@\00" }, comdat
@__ImageBase = external dso_local constant i8
@"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor30* @"??_R0?AVbad_array_new_length@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%"class.std::bad_array_new_length"* (%"class.std::bad_array_new_length"*, %"class.std::bad_array_new_length"*)* @"??0bad_array_new_length@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_R0?AVbad_alloc@std@@@8" = linkonce_odr global %rtti.TypeDescriptor19 { i8** @"??_7type_info@@6B@", i8* null, [20 x i8] c".?AVbad_alloc@std@@\00" }, comdat
@"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 16, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor19* @"??_R0?AVbad_alloc@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%"class.std::bad_alloc"* (%"class.std::bad_alloc"*, %"class.std::bad_alloc"*)* @"??0bad_alloc@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_R0?AVexception@std@@@8" = linkonce_odr global %rtti.TypeDescriptor19 { i8** @"??_7type_info@@6B@", i8* null, [20 x i8] c".?AVexception@std@@\00" }, comdat
@"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor19* @"??_R0?AVexception@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%"class.std::exception"* (%"class.std::exception"*, %"class.std::exception"*)* @"??0exception@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"_CTA3?AVbad_array_new_length@std@@" = linkonce_odr unnamed_addr constant %eh.CatchableTypeArray.3 { i32 3, [3 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%eh.CatchableType* @"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%eh.CatchableType* @"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%eh.CatchableType* @"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32)] }, section ".xdata", comdat
@"_TI3?AVbad_array_new_length@std@@" = linkonce_odr unnamed_addr constant %eh.ThrowInfo { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (void (%"class.std::bad_array_new_length"*)* @"??1bad_array_new_length@std@@UEAA@XZ" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%eh.CatchableTypeArray.3* @"_CTA3?AVbad_array_new_length@std@@" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@" = linkonce_odr dso_local unnamed_addr constant [21 x i8] c"bad array new length\00", comdat, align 1
@0 = private unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* bitcast (%rtti.CompleteObjectLocator* @"??_R4bad_array_new_length@std@@6B@" to i8*), i8* bitcast (i8* (%"class.std::bad_array_new_length"*, i32)* @"??_Gbad_array_new_length@std@@UEAAPEAXI@Z" to i8*), i8* bitcast (i8* (%"class.std::exception"*)* @"?what@exception@std@@UEBAPEBDXZ" to i8*)] }, comdat($"??_7bad_array_new_length@std@@6B@")
@"??_R4bad_array_new_length@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor30* @"??_R0?AVbad_array_new_length@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3bad_array_new_length@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.CompleteObjectLocator* @"??_R4bad_array_new_length@std@@6B@" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R3bad_array_new_length@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 3, i32 trunc (i64 sub nuw nsw (i64 ptrtoint ([4 x i32]* @"??_R2bad_array_new_length@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R2bad_array_new_length@std@@8" = linkonce_odr constant [4 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@bad_array_new_length@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@bad_alloc@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@exception@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0], comdat
@"??_R1A@?0A@EA@bad_array_new_length@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor30* @"??_R0?AVbad_array_new_length@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 2, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3bad_array_new_length@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R1A@?0A@EA@bad_alloc@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor19* @"??_R0?AVbad_alloc@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 1, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3bad_alloc@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R3bad_alloc@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 2, i32 trunc (i64 sub nuw nsw (i64 ptrtoint ([3 x i32]* @"??_R2bad_alloc@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R2bad_alloc@std@@8" = linkonce_odr constant [3 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@bad_alloc@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@exception@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0], comdat
@"??_R1A@?0A@EA@exception@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor19* @"??_R0?AVexception@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3exception@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R3exception@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 1, i32 trunc (i64 sub nuw nsw (i64 ptrtoint ([2 x i32]* @"??_R2exception@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R2exception@std@@8" = linkonce_odr constant [2 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@exception@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0], comdat
@1 = private unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* bitcast (%rtti.CompleteObjectLocator* @"??_R4bad_alloc@std@@6B@" to i8*), i8* bitcast (i8* (%"class.std::bad_alloc"*, i32)* @"??_Gbad_alloc@std@@UEAAPEAXI@Z" to i8*), i8* bitcast (i8* (%"class.std::exception"*)* @"?what@exception@std@@UEBAPEBDXZ" to i8*)] }, comdat($"??_7bad_alloc@std@@6B@")
@"??_R4bad_alloc@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor19* @"??_R0?AVbad_alloc@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3bad_alloc@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.CompleteObjectLocator* @"??_R4bad_alloc@std@@6B@" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@2 = private unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* bitcast (%rtti.CompleteObjectLocator* @"??_R4exception@std@@6B@" to i8*), i8* bitcast (i8* (%"class.std::exception"*, i32)* @"??_Gexception@std@@UEAAPEAXI@Z" to i8*), i8* bitcast (i8* (%"class.std::exception"*)* @"?what@exception@std@@UEBAPEBDXZ" to i8*)] }, comdat($"??_7exception@std@@6B@")
@"??_R4exception@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor19* @"??_R0?AVexception@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3exception@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.CompleteObjectLocator* @"??_R4exception@std@@6B@" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@" = linkonce_odr dso_local unnamed_addr constant [18 x i8] c"Unknown exception\00", comdat, align 1
@"??_C@_0BF@PHHKMMFD@ios_base?3?3badbit?5set?$AA@" = linkonce_odr dso_local unnamed_addr constant [21 x i8] c"ios_base::badbit set\00", comdat, align 1
@"??_C@_0BG@FMKFHCIL@ios_base?3?3failbit?5set?$AA@" = linkonce_odr dso_local unnamed_addr constant [22 x i8] c"ios_base::failbit set\00", comdat, align 1
@"??_C@_0BF@OOHOMBOF@ios_base?3?3eofbit?5set?$AA@" = linkonce_odr dso_local unnamed_addr constant [21 x i8] c"ios_base::eofbit set\00", comdat, align 1
@"??_R0?AVfailure@ios_base@std@@@8" = linkonce_odr global %rtti.TypeDescriptor26 { i8** @"??_7type_info@@6B@", i8* null, [27 x i8] c".?AVfailure@ios_base@std@@\00" }, comdat
@"_CT??_R0?AVfailure@ios_base@std@@@8??0failure@ios_base@std@@QEAA@AEBV012@@Z40" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor26* @"??_R0?AVfailure@ios_base@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 40, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%"class.std::ios_base::failure"* (%"class.std::ios_base::failure"*, %"class.std::ios_base::failure"*)* @"??0failure@ios_base@std@@QEAA@AEBV012@@Z" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_R0?AVsystem_error@std@@@8" = linkonce_odr global %rtti.TypeDescriptor22 { i8** @"??_7type_info@@6B@", i8* null, [23 x i8] c".?AVsystem_error@std@@\00" }, comdat
@"_CT??_R0?AVsystem_error@std@@@8??0system_error@std@@QEAA@AEBV01@@Z40" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor22* @"??_R0?AVsystem_error@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 40, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%"class.std::system_error"* (%"class.std::system_error"*, %"class.std::system_error"*)* @"??0system_error@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_R0?AV_System_error@std@@@8" = linkonce_odr global %rtti.TypeDescriptor23 { i8** @"??_7type_info@@6B@", i8* null, [24 x i8] c".?AV_System_error@std@@\00" }, comdat
@"_CT??_R0?AV_System_error@std@@@8??0_System_error@std@@QEAA@AEBV01@@Z40" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor23* @"??_R0?AV_System_error@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 40, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%"class.std::_System_error"* (%"class.std::_System_error"*, %"class.std::_System_error"*)* @"??0_System_error@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_R0?AVruntime_error@std@@@8" = linkonce_odr global %rtti.TypeDescriptor23 { i8** @"??_7type_info@@6B@", i8* null, [24 x i8] c".?AVruntime_error@std@@\00" }, comdat
@"_CT??_R0?AVruntime_error@std@@@8??0runtime_error@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor23* @"??_R0?AVruntime_error@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%"class.std::runtime_error"* (%"class.std::runtime_error"*, %"class.std::runtime_error"*)* @"??0runtime_error@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"_CTA5?AVfailure@ios_base@std@@" = linkonce_odr unnamed_addr constant %eh.CatchableTypeArray.5 { i32 5, [5 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%eh.CatchableType* @"_CT??_R0?AVfailure@ios_base@std@@@8??0failure@ios_base@std@@QEAA@AEBV012@@Z40" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%eh.CatchableType* @"_CT??_R0?AVsystem_error@std@@@8??0system_error@std@@QEAA@AEBV01@@Z40" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%eh.CatchableType* @"_CT??_R0?AV_System_error@std@@@8??0_System_error@std@@QEAA@AEBV01@@Z40" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%eh.CatchableType* @"_CT??_R0?AVruntime_error@std@@@8??0runtime_error@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%eh.CatchableType* @"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32)] }, section ".xdata", comdat
@"_TI5?AVfailure@ios_base@std@@" = linkonce_odr unnamed_addr constant %eh.ThrowInfo { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (void (%"class.std::ios_base::failure"*)* @"??1failure@ios_base@std@@UEAA@XZ" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%eh.CatchableTypeArray.5* @"_CTA5?AVfailure@ios_base@std@@" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"?_Flag@?1???$_Immortalize@V_Iostream_error_category@std@@@std@@YAAEAV_Iostream_error_category@1@XZ@4PEAXEA" = linkonce_odr dso_local global i8* null, comdat, align 8
@"?_Storage@?1???$_Immortalize@V_Iostream_error_category@std@@@std@@YAAEAV_Iostream_error_category@1@XZ@4T?$_Align_type@N$0BA@@1@A" = linkonce_odr dso_local global %"union.std::_Align_type" zeroinitializer, comdat, align 8
@3 = private unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* bitcast (%rtti.CompleteObjectLocator* @"??_R4_Iostream_error_category@std@@6B@" to i8*), i8* bitcast (i8* (%"class.std::_Iostream_error_category"*, i32)* @"??_G_Iostream_error_category@std@@UEAAPEAXI@Z" to i8*), i8* bitcast (i8* (%"class.std::_Iostream_error_category"*)* @"?name@_Iostream_error_category@std@@UEBAPEBDXZ" to i8*), i8* bitcast (void (%"class.std::_Iostream_error_category"*, %"class.std::basic_string"*, i32)* @"?message@_Iostream_error_category@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@H@Z" to i8*), i8* bitcast (void (%"class.std::error_category"*, %"class.std::error_condition"*, i32)* @"?default_error_condition@error_category@std@@UEBA?AVerror_condition@2@H@Z" to i8*), i8* bitcast (i1 (%"class.std::error_category"*, %"class.std::error_code"*, i32)* @"?equivalent@error_category@std@@UEBA_NAEBVerror_code@2@H@Z" to i8*), i8* bitcast (i1 (%"class.std::error_category"*, i32, %"class.std::error_condition"*)* @"?equivalent@error_category@std@@UEBA_NHAEBVerror_condition@2@@Z" to i8*)] }, comdat($"??_7_Iostream_error_category@std@@6B@")
@"??_R4_Iostream_error_category@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor34* @"??_R0?AV_Iostream_error_category@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3_Iostream_error_category@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.CompleteObjectLocator* @"??_R4_Iostream_error_category@std@@6B@" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R0?AV_Iostream_error_category@std@@@8" = linkonce_odr global %rtti.TypeDescriptor34 { i8** @"??_7type_info@@6B@", i8* null, [35 x i8] c".?AV_Iostream_error_category@std@@\00" }, comdat
@"??_R3_Iostream_error_category@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 3, i32 trunc (i64 sub nuw nsw (i64 ptrtoint ([4 x i32]* @"??_R2_Iostream_error_category@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R2_Iostream_error_category@std@@8" = linkonce_odr constant [4 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@_Iostream_error_category@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@_Generic_error_category@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@error_category@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0], comdat
@"??_R1A@?0A@EA@_Iostream_error_category@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor34* @"??_R0?AV_Iostream_error_category@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 2, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3_Iostream_error_category@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R1A@?0A@EA@_Generic_error_category@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor33* @"??_R0?AV_Generic_error_category@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 1, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3_Generic_error_category@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R0?AV_Generic_error_category@std@@@8" = linkonce_odr global %rtti.TypeDescriptor33 { i8** @"??_7type_info@@6B@", i8* null, [34 x i8] c".?AV_Generic_error_category@std@@\00" }, comdat
@"??_R3_Generic_error_category@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 2, i32 trunc (i64 sub nuw nsw (i64 ptrtoint ([3 x i32]* @"??_R2_Generic_error_category@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R2_Generic_error_category@std@@8" = linkonce_odr constant [3 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@_Generic_error_category@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@error_category@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0], comdat
@"??_R1A@?0A@EA@error_category@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor24* @"??_R0?AVerror_category@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3error_category@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R0?AVerror_category@std@@@8" = linkonce_odr global %rtti.TypeDescriptor24 { i8** @"??_7type_info@@6B@", i8* null, [25 x i8] c".?AVerror_category@std@@\00" }, comdat
@"??_R3error_category@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 1, i32 trunc (i64 sub nuw nsw (i64 ptrtoint ([2 x i32]* @"??_R2error_category@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R2error_category@std@@8" = linkonce_odr constant [2 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@error_category@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0], comdat
@4 = private unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* bitcast (%rtti.CompleteObjectLocator* @"??_R4_Generic_error_category@std@@6B@" to i8*), i8* bitcast (i8* (%"class.std::_Generic_error_category"*, i32)* @"??_G_Generic_error_category@std@@UEAAPEAXI@Z" to i8*), i8* bitcast (i8* (%"class.std::_Generic_error_category"*)* @"?name@_Generic_error_category@std@@UEBAPEBDXZ" to i8*), i8* bitcast (void (%"class.std::_Generic_error_category"*, %"class.std::basic_string"*, i32)* @"?message@_Generic_error_category@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@H@Z" to i8*), i8* bitcast (void (%"class.std::error_category"*, %"class.std::error_condition"*, i32)* @"?default_error_condition@error_category@std@@UEBA?AVerror_condition@2@H@Z" to i8*), i8* bitcast (i1 (%"class.std::error_category"*, %"class.std::error_code"*, i32)* @"?equivalent@error_category@std@@UEBA_NAEBVerror_code@2@H@Z" to i8*), i8* bitcast (i1 (%"class.std::error_category"*, i32, %"class.std::error_condition"*)* @"?equivalent@error_category@std@@UEBA_NHAEBVerror_condition@2@@Z" to i8*)] }, comdat($"??_7_Generic_error_category@std@@6B@")
@"??_R4_Generic_error_category@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor33* @"??_R0?AV_Generic_error_category@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3_Generic_error_category@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.CompleteObjectLocator* @"??_R4_Generic_error_category@std@@6B@" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_C@_07DCLBNMLN@generic?$AA@" = linkonce_odr dso_local unnamed_addr constant [8 x i8] c"generic\00", comdat, align 1
@"??_C@_08LLGCOLLL@iostream?$AA@" = linkonce_odr dso_local unnamed_addr constant [9 x i8] c"iostream\00", comdat, align 1
@"?_Iostream_error@?4??message@_Iostream_error_category@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@3@H@Z@4QBDB" = linkonce_odr dso_local constant [22 x i8] c"iostream stream error\00", comdat, align 16
@5 = private unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* bitcast (%rtti.CompleteObjectLocator* @"??_R4failure@ios_base@std@@6B@" to i8*), i8* bitcast (i8* (%"class.std::ios_base::failure"*, i32)* @"??_Gfailure@ios_base@std@@UEAAPEAXI@Z" to i8*), i8* bitcast (i8* (%"class.std::exception"*)* @"?what@exception@std@@UEBAPEBDXZ" to i8*)] }, comdat($"??_7failure@ios_base@std@@6B@")
@"??_R4failure@ios_base@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor26* @"??_R0?AVfailure@ios_base@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3failure@ios_base@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.CompleteObjectLocator* @"??_R4failure@ios_base@std@@6B@" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R3failure@ios_base@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 5, i32 trunc (i64 sub nuw nsw (i64 ptrtoint ([6 x i32]* @"??_R2failure@ios_base@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R2failure@ios_base@std@@8" = linkonce_odr constant [6 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@failure@ios_base@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@system_error@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@_System_error@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@runtime_error@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@exception@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0], comdat
@"??_R1A@?0A@EA@failure@ios_base@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor26* @"??_R0?AVfailure@ios_base@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 4, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3failure@ios_base@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R1A@?0A@EA@system_error@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor22* @"??_R0?AVsystem_error@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 3, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3system_error@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R3system_error@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 4, i32 trunc (i64 sub nuw nsw (i64 ptrtoint ([5 x i32]* @"??_R2system_error@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R2system_error@std@@8" = linkonce_odr constant [5 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@system_error@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@_System_error@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@runtime_error@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@exception@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0], comdat
@"??_R1A@?0A@EA@_System_error@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor23* @"??_R0?AV_System_error@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 2, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3_System_error@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R3_System_error@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 3, i32 trunc (i64 sub nuw nsw (i64 ptrtoint ([4 x i32]* @"??_R2_System_error@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R2_System_error@std@@8" = linkonce_odr constant [4 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@_System_error@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@runtime_error@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@exception@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0], comdat
@"??_R1A@?0A@EA@runtime_error@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor23* @"??_R0?AVruntime_error@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 1, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3runtime_error@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R3runtime_error@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 2, i32 trunc (i64 sub nuw nsw (i64 ptrtoint ([3 x i32]* @"??_R2runtime_error@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R2runtime_error@std@@8" = linkonce_odr constant [3 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@runtime_error@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@exception@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0], comdat
@6 = private unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* bitcast (%rtti.CompleteObjectLocator* @"??_R4system_error@std@@6B@" to i8*), i8* bitcast (i8* (%"class.std::system_error"*, i32)* @"??_Gsystem_error@std@@UEAAPEAXI@Z" to i8*), i8* bitcast (i8* (%"class.std::exception"*)* @"?what@exception@std@@UEBAPEBDXZ" to i8*)] }, comdat($"??_7system_error@std@@6B@")
@"??_R4system_error@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor22* @"??_R0?AVsystem_error@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3system_error@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.CompleteObjectLocator* @"??_R4system_error@std@@6B@" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@7 = private unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* bitcast (%rtti.CompleteObjectLocator* @"??_R4_System_error@std@@6B@" to i8*), i8* bitcast (i8* (%"class.std::_System_error"*, i32)* @"??_G_System_error@std@@UEAAPEAXI@Z" to i8*), i8* bitcast (i8* (%"class.std::exception"*)* @"?what@exception@std@@UEBAPEBDXZ" to i8*)] }, comdat($"??_7_System_error@std@@6B@")
@"??_R4_System_error@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor23* @"??_R0?AV_System_error@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3_System_error@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.CompleteObjectLocator* @"??_R4_System_error@std@@6B@" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_C@_02LMMGGCAJ@?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [3 x i8] c": \00", comdat, align 1
@8 = private unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* bitcast (%rtti.CompleteObjectLocator* @"??_R4runtime_error@std@@6B@" to i8*), i8* bitcast (i8* (%"class.std::runtime_error"*, i32)* @"??_Gruntime_error@std@@UEAAPEAXI@Z" to i8*), i8* bitcast (i8* (%"class.std::exception"*)* @"?what@exception@std@@UEBAPEBDXZ" to i8*)] }, comdat($"??_7runtime_error@std@@6B@")
@"??_R4runtime_error@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor23* @"??_R0?AVruntime_error@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3runtime_error@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.CompleteObjectLocator* @"??_R4runtime_error@std@@6B@" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"?_Psave@?$_Facetptr@V?$ctype@D@std@@@std@@2PEBVfacet@locale@2@EB" = linkonce_odr dso_local global %"class.std::locale::facet"* null, comdat, align 8
@"?id@?$ctype@D@std@@2V0locale@2@A" = external dso_local global %"class.std::locale::id", align 8
@"?_Id_cnt@id@locale@std@@0HA" = external dso_local global i32, align 4
@"??_C@_00CNPNBAHC@?$AA@" = linkonce_odr dso_local unnamed_addr constant [1 x i8] zeroinitializer, comdat, align 1
@"??_C@_0BA@ELKIONDK@bad?5locale?5name?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"bad locale name\00", comdat, align 1
@9 = private unnamed_addr constant { [12 x i8*] } { [12 x i8*] [i8* bitcast (%rtti.CompleteObjectLocator* @"??_R4?$ctype@D@std@@6B@" to i8*), i8* bitcast (i8* (%"class.std::ctype"*, i32)* @"??_G?$ctype@D@std@@MEAAPEAXI@Z" to i8*), i8* bitcast (void (%"class.std::locale::facet"*)* @"?_Incref@facet@locale@std@@UEAAXXZ" to i8*), i8* bitcast (%"class.std::_Facet_base"* (%"class.std::locale::facet"*)* @"?_Decref@facet@locale@std@@UEAAPEAV_Facet_base@3@XZ" to i8*), i8* bitcast (i8* (%"class.std::ctype"*, i8*, i8*)* @"?do_tolower@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z" to i8*), i8* bitcast (i8 (%"class.std::ctype"*, i8)* @"?do_tolower@?$ctype@D@std@@MEBADD@Z" to i8*), i8* bitcast (i8* (%"class.std::ctype"*, i8*, i8*)* @"?do_toupper@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z" to i8*), i8* bitcast (i8 (%"class.std::ctype"*, i8)* @"?do_toupper@?$ctype@D@std@@MEBADD@Z" to i8*), i8* bitcast (i8* (%"class.std::ctype"*, i8*, i8*, i8*)* @"?do_widen@?$ctype@D@std@@MEBAPEBDPEBD0PEAD@Z" to i8*), i8* bitcast (i8 (%"class.std::ctype"*, i8)* @"?do_widen@?$ctype@D@std@@MEBADD@Z" to i8*), i8* bitcast (i8* (%"class.std::ctype"*, i8*, i8*, i8, i8*)* @"?do_narrow@?$ctype@D@std@@MEBAPEBDPEBD0DPEAD@Z" to i8*), i8* bitcast (i8 (%"class.std::ctype"*, i8, i8)* @"?do_narrow@?$ctype@D@std@@MEBADDD@Z" to i8*)] }, comdat($"??_7?$ctype@D@std@@6B@")
@"??_R4?$ctype@D@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor19* @"??_R0?AV?$ctype@D@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3?$ctype@D@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.CompleteObjectLocator* @"??_R4?$ctype@D@std@@6B@" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R0?AV?$ctype@D@std@@@8" = linkonce_odr global %rtti.TypeDescriptor19 { i8** @"??_7type_info@@6B@", i8* null, [20 x i8] c".?AV?$ctype@D@std@@\00" }, comdat
@"??_R3?$ctype@D@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 1, i32 5, i32 trunc (i64 sub nuw nsw (i64 ptrtoint ([6 x i32]* @"??_R2?$ctype@D@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R2?$ctype@D@std@@8" = linkonce_odr constant [6 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@?$ctype@D@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@ctype_base@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@facet@locale@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@_Facet_base@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R17?0A@EA@_Crt_new_delete@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0], comdat
@"??_R1A@?0A@EA@?$ctype@D@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor19* @"??_R0?AV?$ctype@D@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 4, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3?$ctype@D@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R1A@?0A@EA@ctype_base@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor20* @"??_R0?AUctype_base@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 3, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3ctype_base@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R0?AUctype_base@std@@@8" = linkonce_odr global %rtti.TypeDescriptor20 { i8** @"??_7type_info@@6B@", i8* null, [21 x i8] c".?AUctype_base@std@@\00" }, comdat
@"??_R3ctype_base@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 1, i32 4, i32 trunc (i64 sub nuw nsw (i64 ptrtoint ([5 x i32]* @"??_R2ctype_base@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R2ctype_base@std@@8" = linkonce_odr constant [5 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@ctype_base@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@facet@locale@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@_Facet_base@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R17?0A@EA@_Crt_new_delete@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0], comdat
@"??_R1A@?0A@EA@facet@locale@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor22* @"??_R0?AVfacet@locale@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 2, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3facet@locale@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R0?AVfacet@locale@std@@@8" = linkonce_odr global %rtti.TypeDescriptor22 { i8** @"??_7type_info@@6B@", i8* null, [23 x i8] c".?AVfacet@locale@std@@\00" }, comdat
@"??_R3facet@locale@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 1, i32 3, i32 trunc (i64 sub nuw nsw (i64 ptrtoint ([4 x i32]* @"??_R2facet@locale@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R2facet@locale@std@@8" = linkonce_odr constant [4 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@facet@locale@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@_Facet_base@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R17?0A@EA@_Crt_new_delete@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0], comdat
@"??_R1A@?0A@EA@_Facet_base@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor21* @"??_R0?AV_Facet_base@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3_Facet_base@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R0?AV_Facet_base@std@@@8" = linkonce_odr global %rtti.TypeDescriptor21 { i8** @"??_7type_info@@6B@", i8* null, [22 x i8] c".?AV_Facet_base@std@@\00" }, comdat
@"??_R3_Facet_base@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 1, i32 trunc (i64 sub nuw nsw (i64 ptrtoint ([2 x i32]* @"??_R2_Facet_base@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R2_Facet_base@std@@8" = linkonce_odr constant [2 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@_Facet_base@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0], comdat
@"??_R17?0A@EA@_Crt_new_delete@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor25* @"??_R0?AU_Crt_new_delete@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0, i32 8, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3_Crt_new_delete@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R0?AU_Crt_new_delete@std@@@8" = linkonce_odr global %rtti.TypeDescriptor25 { i8** @"??_7type_info@@6B@", i8* null, [26 x i8] c".?AU_Crt_new_delete@std@@\00" }, comdat
@"??_R3_Crt_new_delete@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 1, i32 trunc (i64 sub nuw nsw (i64 ptrtoint ([2 x i32]* @"??_R2_Crt_new_delete@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R2_Crt_new_delete@std@@8" = linkonce_odr constant [2 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@_Crt_new_delete@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0], comdat
@"??_R1A@?0A@EA@_Crt_new_delete@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor25* @"??_R0?AU_Crt_new_delete@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3_Crt_new_delete@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@10 = private unnamed_addr constant { [4 x i8*] } { [4 x i8*] [i8* bitcast (%rtti.CompleteObjectLocator* @"??_R4ctype_base@std@@6B@" to i8*), i8* bitcast (i8* (%"struct.std::ctype_base"*, i32)* @"??_Gctype_base@std@@UEAAPEAXI@Z" to i8*), i8* bitcast (void (%"class.std::locale::facet"*)* @"?_Incref@facet@locale@std@@UEAAXXZ" to i8*), i8* bitcast (%"class.std::_Facet_base"* (%"class.std::locale::facet"*)* @"?_Decref@facet@locale@std@@UEAAPEAV_Facet_base@3@XZ" to i8*)] }, comdat($"??_7ctype_base@std@@6B@")
@"??_R4ctype_base@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor20* @"??_R0?AUctype_base@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3ctype_base@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.CompleteObjectLocator* @"??_R4ctype_base@std@@6B@" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@11 = private unnamed_addr constant { [4 x i8*] } { [4 x i8*] [i8* bitcast (%rtti.CompleteObjectLocator* @"??_R4facet@locale@std@@6B@" to i8*), i8* bitcast (i8* (%"class.std::locale::facet"*, i32)* @"??_Gfacet@locale@std@@MEAAPEAXI@Z" to i8*), i8* bitcast (void (%"class.std::locale::facet"*)* @"?_Incref@facet@locale@std@@UEAAXXZ" to i8*), i8* bitcast (%"class.std::_Facet_base"* (%"class.std::locale::facet"*)* @"?_Decref@facet@locale@std@@UEAAPEAV_Facet_base@3@XZ" to i8*)] }, comdat($"??_7facet@locale@std@@6B@")
@"??_R4facet@locale@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor22* @"??_R0?AVfacet@locale@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3facet@locale@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.CompleteObjectLocator* @"??_R4facet@locale@std@@6B@" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@12 = private unnamed_addr constant { [4 x i8*] } { [4 x i8*] [i8* bitcast (%rtti.CompleteObjectLocator* @"??_R4_Facet_base@std@@6B@" to i8*), i8* bitcast (i8* (%"class.std::_Facet_base"*, i32)* @"??_G_Facet_base@std@@UEAAPEAXI@Z" to i8*), i8* bitcast (void ()* @_purecall to i8*), i8* bitcast (void ()* @_purecall to i8*)] }, comdat($"??_7_Facet_base@std@@6B@")
@"??_R4_Facet_base@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor21* @"??_R0?AV_Facet_base@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3_Facet_base@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.CompleteObjectLocator* @"??_R4_Facet_base@std@@6B@" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R0?AVbad_cast@std@@@8" = linkonce_odr global %rtti.TypeDescriptor18 { i8** @"??_7type_info@@6B@", i8* null, [19 x i8] c".?AVbad_cast@std@@\00" }, comdat
@"_CT??_R0?AVbad_cast@std@@@8??0bad_cast@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor18* @"??_R0?AVbad_cast@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%"class.std::bad_cast"* (%"class.std::bad_cast"*, %"class.std::bad_cast"*)* @"??0bad_cast@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"_CTA2?AVbad_cast@std@@" = linkonce_odr unnamed_addr constant %eh.CatchableTypeArray.2 { i32 2, [2 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%eh.CatchableType* @"_CT??_R0?AVbad_cast@std@@@8??0bad_cast@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%eh.CatchableType* @"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32)] }, section ".xdata", comdat
@"_TI2?AVbad_cast@std@@" = linkonce_odr unnamed_addr constant %eh.ThrowInfo { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (void (%"class.std::bad_cast"*)* @"??1bad_cast@std@@UEAA@XZ" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%eh.CatchableTypeArray.2* @"_CTA2?AVbad_cast@std@@" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_C@_08EPJLHIJG@bad?5cast?$AA@" = linkonce_odr dso_local unnamed_addr constant [9 x i8] c"bad cast\00", comdat, align 1
@13 = private unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* bitcast (%rtti.CompleteObjectLocator* @"??_R4bad_cast@std@@6B@" to i8*), i8* bitcast (i8* (%"class.std::bad_cast"*, i32)* @"??_Gbad_cast@std@@UEAAPEAXI@Z" to i8*), i8* bitcast (i8* (%"class.std::exception"*)* @"?what@exception@std@@UEBAPEBDXZ" to i8*)] }, comdat($"??_7bad_cast@std@@6B@")
@"??_R4bad_cast@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor18* @"??_R0?AVbad_cast@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3bad_cast@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.CompleteObjectLocator* @"??_R4bad_cast@std@@6B@" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R3bad_cast@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 2, i32 trunc (i64 sub nuw nsw (i64 ptrtoint ([3 x i32]* @"??_R2bad_cast@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat
@"??_R2bad_cast@std@@8" = linkonce_odr constant [3 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@bad_cast@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.BaseClassDescriptor* @"??_R1A@?0A@EA@exception@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 0], comdat
@"??_R1A@?0A@EA@bad_cast@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.TypeDescriptor18* @"??_R0?AVbad_cast@std@@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32), i32 1, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (%rtti.ClassHierarchyDescriptor* @"??_R3bad_cast@std@@8" to i64), i64 ptrtoint (i8* @__ImageBase to i64)) to i32) }, comdat

@"??_7bad_array_new_length@std@@6B@" = unnamed_addr alias i8*, getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @0, i32 0, i32 0, i32 1)
@"??_7bad_alloc@std@@6B@" = unnamed_addr alias i8*, getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @1, i32 0, i32 0, i32 1)
@"??_7exception@std@@6B@" = unnamed_addr alias i8*, getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @2, i32 0, i32 0, i32 1)
@"??_7_Iostream_error_category@std@@6B@" = unnamed_addr alias i8*, getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @3, i32 0, i32 0, i32 1)
@"??_7_Generic_error_category@std@@6B@" = unnamed_addr alias i8*, getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @4, i32 0, i32 0, i32 1)
@"??_7failure@ios_base@std@@6B@" = unnamed_addr alias i8*, getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @5, i32 0, i32 0, i32 1)
@"??_7system_error@std@@6B@" = unnamed_addr alias i8*, getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @6, i32 0, i32 0, i32 1)
@"??_7_System_error@std@@6B@" = unnamed_addr alias i8*, getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @7, i32 0, i32 0, i32 1)
@"??_7runtime_error@std@@6B@" = unnamed_addr alias i8*, getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @8, i32 0, i32 0, i32 1)
@"??_7?$ctype@D@std@@6B@" = unnamed_addr alias i8*, getelementptr inbounds ({ [12 x i8*] }, { [12 x i8*] }* @9, i32 0, i32 0, i32 1)
@"??_7ctype_base@std@@6B@" = unnamed_addr alias i8*, getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @10, i32 0, i32 0, i32 1)
@"??_7facet@locale@std@@6B@" = unnamed_addr alias i8*, getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @11, i32 0, i32 0, i32 1)
@"??_7_Facet_base@std@@6B@" = unnamed_addr alias i8*, getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @12, i32 0, i32 0, i32 1)
@"??_7bad_cast@std@@6B@" = unnamed_addr alias i8*, getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @13, i32 0, i32 0, i32 1)

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv, i8** %envp) #0 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %retval = alloca i32, align 4
  %envp.addr = alloca i8**, align 8
  %argv.addr = alloca i8**, align 8
  %argc.addr = alloca i32, align 4
  %str = alloca %"class.std::basic_string", align 8
  %__range1 = alloca %"class.std::basic_string"*, align 8
  %__begin1 = alloca %"class.std::_String_iterator", align 8
  %__end1 = alloca %"class.std::_String_iterator", align 8
  %a = alloca i8, align 1
  store i32 0, i32* %retval, align 4
  store i8** %envp, i8*** %envp.addr, align 8
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 %argc, i32* %argc.addr, align 4
  %call = call %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(%"class.std::basic_string"* %str, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"??_C@_0M@KPLPPDAC@Hello?5World?$AA@", i64 0, i64 0))
  store %"class.std::basic_string"* %str, %"class.std::basic_string"** %__range1, align 8
  %0 = load %"class.std::basic_string"*, %"class.std::basic_string"** %__range1, align 8
  call void @"?begin@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@XZ"(%"class.std::basic_string"* %0, %"class.std::_String_iterator"* sret align 8 %__begin1) #13
  %1 = load %"class.std::basic_string"*, %"class.std::basic_string"** %__range1, align 8
  call void @"?end@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@XZ"(%"class.std::basic_string"* %1, %"class.std::_String_iterator"* sret align 8 %__end1) #13
  br label %for.cond

for.cond:                                         ; preds = %invoke.cont8, %entry
  %2 = bitcast %"class.std::_String_iterator"* %__begin1 to %"class.std::_String_const_iterator"*
  %3 = bitcast %"class.std::_String_iterator"* %__end1 to %"class.std::_String_const_iterator"*
  %call1 = invoke zeroext i1 @"??9?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEBA_NAEBV01@@Z"(%"class.std::_String_const_iterator"* %2, %"class.std::_String_const_iterator"* nonnull align 8 dereferenceable(8) %3)
          to label %invoke.cont unwind label %ehcleanup

invoke.cont:                                      ; preds = %for.cond
  br i1 %call1, label %for.body, label %for.end

for.body:                                         ; preds = %invoke.cont
  %call3 = invoke nonnull align 1 dereferenceable(1) i8* @"??D?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEBAAEADXZ"(%"class.std::_String_iterator"* %__begin1)
          to label %invoke.cont2 unwind label %ehcleanup

invoke.cont2:                                     ; preds = %for.body
  %4 = load i8, i8* %call3, align 1
  store i8 %4, i8* %a, align 1
  %5 = load i8, i8* %a, align 1
  %call5 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@D@Z"(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @"?cout@std@@3V?$basic_ostream@DU?$char_traits@D@std@@@1@A", i8 %5)
          to label %invoke.cont4 unwind label %ehcleanup

invoke.cont4:                                     ; preds = %invoke.cont2
  %call7 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@P6AAEAV01@AEAV01@@Z@Z"(%"class.std::basic_ostream"* %call5, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @"??$endl@DU?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@@Z")
          to label %invoke.cont6 unwind label %ehcleanup

invoke.cont6:                                     ; preds = %invoke.cont4
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont6
  %call9 = invoke nonnull align 8 dereferenceable(8) %"class.std::_String_iterator"* @"??E?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEAAAEAV01@XZ"(%"class.std::_String_iterator"* %__begin1)
          to label %invoke.cont8 unwind label %ehcleanup

invoke.cont8:                                     ; preds = %for.inc
  br label %for.cond

for.end:                                          ; preds = %invoke.cont
  store i32 0, i32* %retval, align 4
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %str) #13
  %6 = load i32, i32* %retval, align 4
  ret i32 %6

ehcleanup:                                        ; preds = %for.inc, %invoke.cont4, %invoke.cont2, %for.body, %for.cond
  %7 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %str) #13 [ "funclet"(token %7) ]
  cleanupret from %7 unwind to caller
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(%"class.std::basic_string"* returned %this, i8* %_Ptr) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %_Ptr.addr = alloca i8*, align 8
  %this.addr = alloca %"class.std::basic_string"*, align 8
  %agg.tmp = alloca %"struct.std::_Zero_then_variadic_args_t", align 1
  %_Alproxy = alloca %"struct.std::_Fake_allocator"*, align 8
  %ref.tmp = alloca %"struct.std::_Fake_allocator", align 1
  %_Proxy = alloca %"struct.std::_Fake_proxy_ptr_impl", align 1
  store i8* %_Ptr, i8** %_Ptr.addr, align 8
  store %"class.std::basic_string"* %this, %"class.std::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::basic_string"*, %"class.std::basic_string"** %this.addr, align 8
  %_Mypair = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %coerce.dive = getelementptr inbounds %"struct.std::_Zero_then_variadic_args_t", %"struct.std::_Zero_then_variadic_args_t"* %agg.tmp, i32 0, i32 0
  %0 = load i8, i8* %coerce.dive, align 1
  %call = call %"class.std::_Compressed_pair"* @"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"(%"class.std::_Compressed_pair"* %_Mypair, i8 %0)
  store %"struct.std::_Fake_allocator"* %ref.tmp, %"struct.std::_Fake_allocator"** %_Alproxy, align 8
  %_Mypair2 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval2 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair2, i32 0, i32 0
  %1 = bitcast %"class.std::_String_val"* %_Myval2 to %"struct.std::_Container_base0"*
  %2 = load %"struct.std::_Fake_allocator"*, %"struct.std::_Fake_allocator"** %_Alproxy, align 8
  %call3 = call %"struct.std::_Fake_proxy_ptr_impl"* @"??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z"(%"struct.std::_Fake_proxy_ptr_impl"* %_Proxy, %"struct.std::_Fake_allocator"* nonnull align 1 dereferenceable(1) %2, %"struct.std::_Container_base0"* nonnull align 1 dereferenceable(1) %1) #13
  call void @"?_Tidy_init@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(%"class.std::basic_string"* %this1) #13
  %3 = load i8*, i8** %_Ptr.addr, align 8
  %call4 = invoke nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z"(%"class.std::basic_string"* %this1, i8* %3)
          to label %invoke.cont unwind label %ehcleanup

invoke.cont:                                      ; preds = %entry
  call void @"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ"(%"struct.std::_Fake_proxy_ptr_impl"* %_Proxy) #13
  ret %"class.std::basic_string"* %this1

ehcleanup:                                        ; preds = %entry
  %4 = cleanuppad within none []
  call void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(%"class.std::_Compressed_pair"* %_Mypair) #13 [ "funclet"(token %4) ]
  cleanupret from %4 unwind to caller
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?begin@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@XZ"(%"class.std::basic_string"* %this, %"class.std::_String_iterator"* noalias sret align 8 %agg.result) #2 comdat align 2 {
entry:
  %result.ptr = alloca i8*, align 8
  %this.addr = alloca %"class.std::basic_string"*, align 8
  %0 = bitcast %"class.std::_String_iterator"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.std::basic_string"* %this, %"class.std::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::basic_string"*, %"class.std::basic_string"** %this.addr, align 8
  %_Mypair = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval2 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair, i32 0, i32 0
  %call = call %"class.std::_String_val"* @"??$addressof@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@YAPEAV?$_String_val@U?$_Simple_types@D@std@@@0@AEAV10@@Z"(%"class.std::_String_val"* nonnull align 8 dereferenceable(32) %_Myval2) #13
  %1 = bitcast %"class.std::_String_val"* %call to %"struct.std::_Container_base0"*
  %_Mypair2 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval23 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair2, i32 0, i32 0
  %call4 = call i8* @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(%"class.std::_String_val"* %_Myval23) #13
  %call5 = call i8* @"??$_Refancy@PEAD$0A@@std@@YAPEADPEAD@Z"(i8* %call4) #13
  %call6 = call %"class.std::_String_iterator"* @"??0?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEAA@PEBDPEBU_Container_base0@1@@Z"(%"class.std::_String_iterator"* %agg.result, i8* %call5, %"struct.std::_Container_base0"* %1) #13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?end@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA?AV?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@2@XZ"(%"class.std::basic_string"* %this, %"class.std::_String_iterator"* noalias sret align 8 %agg.result) #2 comdat align 2 {
entry:
  %result.ptr = alloca i8*, align 8
  %this.addr = alloca %"class.std::basic_string"*, align 8
  %0 = bitcast %"class.std::_String_iterator"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.std::basic_string"* %this, %"class.std::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::basic_string"*, %"class.std::basic_string"** %this.addr, align 8
  %_Mypair = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval2 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair, i32 0, i32 0
  %call = call %"class.std::_String_val"* @"??$addressof@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@YAPEAV?$_String_val@U?$_Simple_types@D@std@@@0@AEAV10@@Z"(%"class.std::_String_val"* nonnull align 8 dereferenceable(32) %_Myval2) #13
  %1 = bitcast %"class.std::_String_val"* %call to %"struct.std::_Container_base0"*
  %_Mypair2 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval23 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair2, i32 0, i32 0
  %call4 = call i8* @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(%"class.std::_String_val"* %_Myval23) #13
  %call5 = call i8* @"??$_Refancy@PEAD$0A@@std@@YAPEADPEAD@Z"(i8* %call4) #13
  %_Mypair6 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval27 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair6, i32 0, i32 0
  %_Mysize = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %_Myval27, i32 0, i32 1
  %2 = load i64, i64* %_Mysize, align 8
  %add.ptr = getelementptr inbounds i8, i8* %call5, i64 %2
  %call8 = call %"class.std::_String_iterator"* @"??0?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEAA@PEBDPEBU_Container_base0@1@@Z"(%"class.std::_String_iterator"* %agg.result, i8* %add.ptr, %"struct.std::_Container_base0"* %1) #13
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local zeroext i1 @"??9?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEBA_NAEBV01@@Z"(%"class.std::_String_const_iterator"* %this, %"class.std::_String_const_iterator"* nonnull align 8 dereferenceable(8) %_Right) #1 comdat align 2 {
entry:
  %_Right.addr = alloca %"class.std::_String_const_iterator"*, align 8
  %this.addr = alloca %"class.std::_String_const_iterator"*, align 8
  store %"class.std::_String_const_iterator"* %_Right, %"class.std::_String_const_iterator"** %_Right.addr, align 8
  store %"class.std::_String_const_iterator"* %this, %"class.std::_String_const_iterator"** %this.addr, align 8
  %this1 = load %"class.std::_String_const_iterator"*, %"class.std::_String_const_iterator"** %this.addr, align 8
  %0 = load %"class.std::_String_const_iterator"*, %"class.std::_String_const_iterator"** %_Right.addr, align 8
  %call = call zeroext i1 @"??8?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEBA_NAEBV01@@Z"(%"class.std::_String_const_iterator"* %this1, %"class.std::_String_const_iterator"* nonnull align 8 dereferenceable(8) %0)
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

declare dso_local i32 @__CxxFrameHandler3(...)

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) i8* @"??D?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEBAAEADXZ"(%"class.std::_String_iterator"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_String_iterator"*, align 8
  store %"class.std::_String_iterator"* %this, %"class.std::_String_iterator"** %this.addr, align 8
  %this1 = load %"class.std::_String_iterator"*, %"class.std::_String_iterator"** %this.addr, align 8
  %0 = bitcast %"class.std::_String_iterator"* %this1 to %"class.std::_String_const_iterator"*
  %call = call nonnull align 1 dereferenceable(1) i8* @"??D?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEBAAEBDXZ"(%"class.std::_String_const_iterator"* %0)
  ret i8* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@D@Z"(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %_Ostr, i8 %_Ch) #1 comdat personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %_Ch.addr = alloca i8, align 1
  %_Ostr.addr = alloca %"class.std::basic_ostream"*, align 8
  %_State = alloca i32, align 4
  %_Ok = alloca %"class.std::basic_ostream<char, std::char_traits<char>>::sentry", align 8
  %_Pad = alloca i64, align 8
  %ref.tmp = alloca i32, align 4
  %ref.tmp34 = alloca i32, align 4
  %ref.tmp41 = alloca i32, align 4
  %ref.tmp50 = alloca i32, align 4
  %ref.tmp63 = alloca i32, align 4
  %ref.tmp78 = alloca i32, align 4
  store i8 %_Ch, i8* %_Ch.addr, align 1
  store %"class.std::basic_ostream"* %_Ostr, %"class.std::basic_ostream"** %_Ostr.addr, align 8
  store i32 0, i32* %_State, align 4
  %0 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %_Ostr.addr, align 8
  %call = call %"class.std::basic_ostream<char, std::char_traits<char>>::sentry"* @"??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z"(%"class.std::basic_ostream<char, std::char_traits<char>>::sentry"* %_Ok, %"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %0)
  %call1 = invoke zeroext i1 @"??Bsentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEBA_NXZ"(%"class.std::basic_ostream<char, std::char_traits<char>>::sentry"* %_Ok)
          to label %invoke.cont unwind label %ehcleanup

invoke.cont:                                      ; preds = %entry
  br i1 %call1, label %if.then, label %if.end92

if.then:                                          ; preds = %invoke.cont
  %1 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %_Ostr.addr, align 8
  %2 = bitcast %"class.std::basic_ostream"* %1 to i8*
  %vbptr = getelementptr inbounds i8, i8* %2, i64 0
  %3 = bitcast i8* %vbptr to i32**
  %vbtable = load i32*, i32** %3, align 8
  %4 = getelementptr inbounds i32, i32* %vbtable, i32 1
  %vbase_offs = load i32, i32* %4, align 4
  %5 = sext i32 %vbase_offs to i64
  %6 = add nsw i64 0, %5
  %7 = bitcast %"class.std::basic_ostream"* %1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %6
  %8 = bitcast i8* %add.ptr to %"class.std::ios_base"*
  %call3 = invoke i64 @"?width@ios_base@std@@QEBA_JXZ"(%"class.std::ios_base"* %8)
          to label %invoke.cont2 unwind label %ehcleanup

invoke.cont2:                                     ; preds = %if.then
  %cmp = icmp sle i64 %call3, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %invoke.cont2
  br label %cond.end

cond.false:                                       ; preds = %invoke.cont2
  %9 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %_Ostr.addr, align 8
  %10 = bitcast %"class.std::basic_ostream"* %9 to i8*
  %vbptr4 = getelementptr inbounds i8, i8* %10, i64 0
  %11 = bitcast i8* %vbptr4 to i32**
  %vbtable5 = load i32*, i32** %11, align 8
  %12 = getelementptr inbounds i32, i32* %vbtable5, i32 1
  %vbase_offs6 = load i32, i32* %12, align 4
  %13 = sext i32 %vbase_offs6 to i64
  %14 = add nsw i64 0, %13
  %15 = bitcast %"class.std::basic_ostream"* %9 to i8*
  %add.ptr7 = getelementptr inbounds i8, i8* %15, i64 %14
  %16 = bitcast i8* %add.ptr7 to %"class.std::ios_base"*
  %call9 = invoke i64 @"?width@ios_base@std@@QEBA_JXZ"(%"class.std::ios_base"* %16)
          to label %invoke.cont8 unwind label %ehcleanup

invoke.cont8:                                     ; preds = %cond.false
  %sub = sub nsw i64 %call9, 1
  br label %cond.end

cond.end:                                         ; preds = %invoke.cont8, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %sub, %invoke.cont8 ]
  store i64 %cond, i64* %_Pad, align 8
  %17 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %_Ostr.addr, align 8
  %18 = bitcast %"class.std::basic_ostream"* %17 to i8*
  %vbptr10 = getelementptr inbounds i8, i8* %18, i64 0
  %19 = bitcast i8* %vbptr10 to i32**
  %vbtable11 = load i32*, i32** %19, align 8
  %20 = getelementptr inbounds i32, i32* %vbtable11, i32 1
  %vbase_offs12 = load i32, i32* %20, align 4
  %21 = sext i32 %vbase_offs12 to i64
  %22 = add nsw i64 0, %21
  %23 = bitcast %"class.std::basic_ostream"* %17 to i8*
  %add.ptr13 = getelementptr inbounds i8, i8* %23, i64 %22
  %24 = bitcast i8* %add.ptr13 to %"class.std::ios_base"*
  %call15 = invoke i32 @"?flags@ios_base@std@@QEBAHXZ"(%"class.std::ios_base"* %24)
          to label %invoke.cont14 unwind label %catch.dispatch

invoke.cont14:                                    ; preds = %cond.end
  %and = and i32 %call15, 448
  %cmp16 = icmp ne i32 %and, 64
  br i1 %cmp16, label %if.then17, label %if.end38

if.then17:                                        ; preds = %invoke.cont14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then17
  %25 = load i32, i32* %_State, align 4
  %cmp18 = icmp eq i32 %25, 0
  br i1 %cmp18, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %26 = load i64, i64* %_Pad, align 8
  %cmp19 = icmp slt i64 0, %26
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %27 = phi i1 [ false, %for.cond ], [ %cmp19, %land.rhs ]
  br i1 %27, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %28 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %_Ostr.addr, align 8
  %29 = bitcast %"class.std::basic_ostream"* %28 to i8*
  %vbptr20 = getelementptr inbounds i8, i8* %29, i64 0
  %30 = bitcast i8* %vbptr20 to i32**
  %vbtable21 = load i32*, i32** %30, align 8
  %31 = getelementptr inbounds i32, i32* %vbtable21, i32 1
  %vbase_offs22 = load i32, i32* %31, align 4
  %32 = sext i32 %vbase_offs22 to i64
  %33 = add nsw i64 0, %32
  %34 = bitcast %"class.std::basic_ostream"* %28 to i8*
  %add.ptr23 = getelementptr inbounds i8, i8* %34, i64 %33
  %35 = bitcast i8* %add.ptr23 to %"class.std::basic_ios"*
  %call25 = invoke %"class.std::basic_streambuf"* @"?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ"(%"class.std::basic_ios"* %35)
          to label %invoke.cont24 unwind label %catch.dispatch

invoke.cont24:                                    ; preds = %for.body
  %36 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %_Ostr.addr, align 8
  %37 = bitcast %"class.std::basic_ostream"* %36 to i8*
  %vbptr26 = getelementptr inbounds i8, i8* %37, i64 0
  %38 = bitcast i8* %vbptr26 to i32**
  %vbtable27 = load i32*, i32** %38, align 8
  %39 = getelementptr inbounds i32, i32* %vbtable27, i32 1
  %vbase_offs28 = load i32, i32* %39, align 4
  %40 = sext i32 %vbase_offs28 to i64
  %41 = add nsw i64 0, %40
  %42 = bitcast %"class.std::basic_ostream"* %36 to i8*
  %add.ptr29 = getelementptr inbounds i8, i8* %42, i64 %41
  %43 = bitcast i8* %add.ptr29 to %"class.std::basic_ios"*
  %call31 = invoke i8 @"?fill@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBADXZ"(%"class.std::basic_ios"* %43)
          to label %invoke.cont30 unwind label %catch.dispatch

invoke.cont30:                                    ; preds = %invoke.cont24
  %call33 = invoke i32 @"?sputc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHD@Z"(%"class.std::basic_streambuf"* %call25, i8 %call31)
          to label %invoke.cont32 unwind label %catch.dispatch

invoke.cont32:                                    ; preds = %invoke.cont30
  store i32 %call33, i32* %ref.tmp, align 4
  %call35 = call i32 @"?eof@?$_Narrow_char_traits@DH@std@@SAHXZ"() #13
  store i32 %call35, i32* %ref.tmp34, align 4
  %call36 = call zeroext i1 @"?eq_int_type@?$_Narrow_char_traits@DH@std@@SA_NAEBH0@Z"(i32* nonnull align 4 dereferenceable(4) %ref.tmp34, i32* nonnull align 4 dereferenceable(4) %ref.tmp) #13
  br i1 %call36, label %if.then37, label %if.end

if.then37:                                        ; preds = %invoke.cont32
  %44 = load i32, i32* %_State, align 4
  %or = or i32 %44, 4
  store i32 %or, i32* %_State, align 4
  br label %if.end

if.end:                                           ; preds = %if.then37, %invoke.cont32
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %45 = load i64, i64* %_Pad, align 8
  %dec = add nsw i64 %45, -1
  store i64 %dec, i64* %_Pad, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %if.end38

if.end38:                                         ; preds = %for.end, %invoke.cont14
  %46 = load i32, i32* %_State, align 4
  %cmp39 = icmp eq i32 %46, 0
  br i1 %cmp39, label %land.rhs40, label %land.end53

land.rhs40:                                       ; preds = %if.end38
  %47 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %_Ostr.addr, align 8
  %48 = bitcast %"class.std::basic_ostream"* %47 to i8*
  %vbptr42 = getelementptr inbounds i8, i8* %48, i64 0
  %49 = bitcast i8* %vbptr42 to i32**
  %vbtable43 = load i32*, i32** %49, align 8
  %50 = getelementptr inbounds i32, i32* %vbtable43, i32 1
  %vbase_offs44 = load i32, i32* %50, align 4
  %51 = sext i32 %vbase_offs44 to i64
  %52 = add nsw i64 0, %51
  %53 = bitcast %"class.std::basic_ostream"* %47 to i8*
  %add.ptr45 = getelementptr inbounds i8, i8* %53, i64 %52
  %54 = bitcast i8* %add.ptr45 to %"class.std::basic_ios"*
  %call47 = invoke %"class.std::basic_streambuf"* @"?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ"(%"class.std::basic_ios"* %54)
          to label %invoke.cont46 unwind label %catch.dispatch

invoke.cont46:                                    ; preds = %land.rhs40
  %55 = load i8, i8* %_Ch.addr, align 1
  %call49 = invoke i32 @"?sputc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHD@Z"(%"class.std::basic_streambuf"* %call47, i8 %55)
          to label %invoke.cont48 unwind label %catch.dispatch

invoke.cont48:                                    ; preds = %invoke.cont46
  store i32 %call49, i32* %ref.tmp41, align 4
  %call51 = call i32 @"?eof@?$_Narrow_char_traits@DH@std@@SAHXZ"() #13
  store i32 %call51, i32* %ref.tmp50, align 4
  %call52 = call zeroext i1 @"?eq_int_type@?$_Narrow_char_traits@DH@std@@SA_NAEBH0@Z"(i32* nonnull align 4 dereferenceable(4) %ref.tmp50, i32* nonnull align 4 dereferenceable(4) %ref.tmp41) #13
  br label %land.end53

land.end53:                                       ; preds = %invoke.cont48, %if.end38
  %56 = phi i1 [ false, %if.end38 ], [ %call52, %invoke.cont48 ]
  br i1 %56, label %if.then54, label %if.end56

if.then54:                                        ; preds = %land.end53
  %57 = load i32, i32* %_State, align 4
  %or55 = or i32 %57, 4
  store i32 %or55, i32* %_State, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %land.end53
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc84, %if.end56
  %58 = load i32, i32* %_State, align 4
  %cmp58 = icmp eq i32 %58, 0
  br i1 %cmp58, label %land.rhs59, label %land.end61

land.rhs59:                                       ; preds = %for.cond57
  %59 = load i64, i64* %_Pad, align 8
  %cmp60 = icmp slt i64 0, %59
  br label %land.end61

land.end61:                                       ; preds = %land.rhs59, %for.cond57
  %60 = phi i1 [ false, %for.cond57 ], [ %cmp60, %land.rhs59 ]
  br i1 %60, label %for.body62, label %for.end86

for.body62:                                       ; preds = %land.end61
  %61 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %_Ostr.addr, align 8
  %62 = bitcast %"class.std::basic_ostream"* %61 to i8*
  %vbptr64 = getelementptr inbounds i8, i8* %62, i64 0
  %63 = bitcast i8* %vbptr64 to i32**
  %vbtable65 = load i32*, i32** %63, align 8
  %64 = getelementptr inbounds i32, i32* %vbtable65, i32 1
  %vbase_offs66 = load i32, i32* %64, align 4
  %65 = sext i32 %vbase_offs66 to i64
  %66 = add nsw i64 0, %65
  %67 = bitcast %"class.std::basic_ostream"* %61 to i8*
  %add.ptr67 = getelementptr inbounds i8, i8* %67, i64 %66
  %68 = bitcast i8* %add.ptr67 to %"class.std::basic_ios"*
  %call69 = invoke %"class.std::basic_streambuf"* @"?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ"(%"class.std::basic_ios"* %68)
          to label %invoke.cont68 unwind label %catch.dispatch

invoke.cont68:                                    ; preds = %for.body62
  %69 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %_Ostr.addr, align 8
  %70 = bitcast %"class.std::basic_ostream"* %69 to i8*
  %vbptr70 = getelementptr inbounds i8, i8* %70, i64 0
  %71 = bitcast i8* %vbptr70 to i32**
  %vbtable71 = load i32*, i32** %71, align 8
  %72 = getelementptr inbounds i32, i32* %vbtable71, i32 1
  %vbase_offs72 = load i32, i32* %72, align 4
  %73 = sext i32 %vbase_offs72 to i64
  %74 = add nsw i64 0, %73
  %75 = bitcast %"class.std::basic_ostream"* %69 to i8*
  %add.ptr73 = getelementptr inbounds i8, i8* %75, i64 %74
  %76 = bitcast i8* %add.ptr73 to %"class.std::basic_ios"*
  %call75 = invoke i8 @"?fill@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBADXZ"(%"class.std::basic_ios"* %76)
          to label %invoke.cont74 unwind label %catch.dispatch

invoke.cont74:                                    ; preds = %invoke.cont68
  %call77 = invoke i32 @"?sputc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHD@Z"(%"class.std::basic_streambuf"* %call69, i8 %call75)
          to label %invoke.cont76 unwind label %catch.dispatch

catch.dispatch:                                   ; preds = %invoke.cont74, %invoke.cont68, %for.body62, %invoke.cont46, %land.rhs40, %invoke.cont30, %invoke.cont24, %for.body, %cond.end
  %77 = catchswitch within none [label %catch] unwind label %ehcleanup

catch:                                            ; preds = %catch.dispatch
  %78 = catchpad within %77 [i8* null, i32 64, i8* null]
  %79 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %_Ostr.addr, align 8
  %80 = bitcast %"class.std::basic_ostream"* %79 to i8*
  %vbptr87 = getelementptr inbounds i8, i8* %80, i64 0
  %81 = bitcast i8* %vbptr87 to i32**
  %vbtable88 = load i32*, i32** %81, align 8
  %82 = getelementptr inbounds i32, i32* %vbtable88, i32 1
  %vbase_offs89 = load i32, i32* %82, align 4
  %83 = sext i32 %vbase_offs89 to i64
  %84 = add nsw i64 0, %83
  %85 = bitcast %"class.std::basic_ostream"* %79 to i8*
  %add.ptr90 = getelementptr inbounds i8, i8* %85, i64 %84
  %86 = bitcast i8* %add.ptr90 to %"class.std::basic_ios"*
  invoke void @"?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z"(%"class.std::basic_ios"* %86, i32 4, i1 zeroext true) [ "funclet"(token %78) ]
          to label %invoke.cont91 unwind label %ehcleanup

invoke.cont91:                                    ; preds = %catch
  catchret from %78 to label %catchret.dest

catchret.dest:                                    ; preds = %invoke.cont91
  br label %try.cont

try.cont:                                         ; preds = %catchret.dest, %for.end86
  br label %if.end92

invoke.cont76:                                    ; preds = %invoke.cont74
  store i32 %call77, i32* %ref.tmp63, align 4
  %call79 = call i32 @"?eof@?$_Narrow_char_traits@DH@std@@SAHXZ"() #13
  store i32 %call79, i32* %ref.tmp78, align 4
  %call80 = call zeroext i1 @"?eq_int_type@?$_Narrow_char_traits@DH@std@@SA_NAEBH0@Z"(i32* nonnull align 4 dereferenceable(4) %ref.tmp78, i32* nonnull align 4 dereferenceable(4) %ref.tmp63) #13
  br i1 %call80, label %if.then81, label %if.end83

if.then81:                                        ; preds = %invoke.cont76
  %87 = load i32, i32* %_State, align 4
  %or82 = or i32 %87, 4
  store i32 %or82, i32* %_State, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %invoke.cont76
  br label %for.inc84

for.inc84:                                        ; preds = %if.end83
  %88 = load i64, i64* %_Pad, align 8
  %dec85 = add nsw i64 %88, -1
  store i64 %dec85, i64* %_Pad, align 8
  br label %for.cond57

for.end86:                                        ; preds = %land.end61
  br label %try.cont

if.end92:                                         ; preds = %try.cont, %invoke.cont
  %89 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %_Ostr.addr, align 8
  %90 = bitcast %"class.std::basic_ostream"* %89 to i8*
  %vbptr93 = getelementptr inbounds i8, i8* %90, i64 0
  %91 = bitcast i8* %vbptr93 to i32**
  %vbtable94 = load i32*, i32** %91, align 8
  %92 = getelementptr inbounds i32, i32* %vbtable94, i32 1
  %vbase_offs95 = load i32, i32* %92, align 4
  %93 = sext i32 %vbase_offs95 to i64
  %94 = add nsw i64 0, %93
  %95 = bitcast %"class.std::basic_ostream"* %89 to i8*
  %add.ptr96 = getelementptr inbounds i8, i8* %95, i64 %94
  %96 = bitcast i8* %add.ptr96 to %"class.std::ios_base"*
  %call98 = invoke i64 @"?width@ios_base@std@@QEAA_J_J@Z"(%"class.std::ios_base"* %96, i64 0)
          to label %invoke.cont97 unwind label %ehcleanup

invoke.cont97:                                    ; preds = %if.end92
  %97 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %_Ostr.addr, align 8
  %98 = bitcast %"class.std::basic_ostream"* %97 to i8*
  %vbptr99 = getelementptr inbounds i8, i8* %98, i64 0
  %99 = bitcast i8* %vbptr99 to i32**
  %vbtable100 = load i32*, i32** %99, align 8
  %100 = getelementptr inbounds i32, i32* %vbtable100, i32 1
  %vbase_offs101 = load i32, i32* %100, align 4
  %101 = sext i32 %vbase_offs101 to i64
  %102 = add nsw i64 0, %101
  %103 = bitcast %"class.std::basic_ostream"* %97 to i8*
  %add.ptr102 = getelementptr inbounds i8, i8* %103, i64 %102
  %104 = bitcast i8* %add.ptr102 to %"class.std::basic_ios"*
  %105 = load i32, i32* %_State, align 4
  invoke void @"?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z"(%"class.std::basic_ios"* %104, i32 %105, i1 zeroext false)
          to label %invoke.cont103 unwind label %ehcleanup

invoke.cont103:                                   ; preds = %invoke.cont97
  %106 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %_Ostr.addr, align 8
  call void @"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"(%"class.std::basic_ostream<char, std::char_traits<char>>::sentry"* %_Ok) #13
  ret %"class.std::basic_ostream"* %106

ehcleanup:                                        ; preds = %invoke.cont97, %if.end92, %catch, %catch.dispatch, %cond.false, %if.then, %entry
  %107 = cleanuppad within none []
  call void @"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"(%"class.std::basic_ostream<char, std::char_traits<char>>::sentry"* %_Ok) #13 [ "funclet"(token %107) ]
  cleanupret from %107 unwind to caller
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@P6AAEAV01@AEAV01@@Z@Z"(%"class.std::basic_ostream"* %this, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* %_Pfn) #1 comdat align 2 {
entry:
  %_Pfn.addr = alloca %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*, align 8
  %this.addr = alloca %"class.std::basic_ostream"*, align 8
  store %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* %_Pfn, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)** %_Pfn.addr, align 8
  store %"class.std::basic_ostream"* %this, %"class.std::basic_ostream"** %this.addr, align 8
  %this1 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %this.addr, align 8
  %0 = load %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)** %_Pfn.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* %0(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %this1)
  ret %"class.std::basic_ostream"* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @"??$endl@DU?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@@Z"(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %_Ostr) #1 comdat {
entry:
  %_Ostr.addr = alloca %"class.std::basic_ostream"*, align 8
  store %"class.std::basic_ostream"* %_Ostr, %"class.std::basic_ostream"** %_Ostr.addr, align 8
  %0 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %_Ostr.addr, align 8
  %1 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %_Ostr.addr, align 8
  %2 = bitcast %"class.std::basic_ostream"* %1 to i8*
  %vbptr = getelementptr inbounds i8, i8* %2, i64 0
  %3 = bitcast i8* %vbptr to i32**
  %vbtable = load i32*, i32** %3, align 8
  %4 = getelementptr inbounds i32, i32* %vbtable, i32 1
  %vbase_offs = load i32, i32* %4, align 4
  %5 = sext i32 %vbase_offs to i64
  %6 = add nsw i64 0, %5
  %7 = bitcast %"class.std::basic_ostream"* %1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %6
  %8 = bitcast i8* %add.ptr to %"class.std::basic_ios"*
  %call = call i8 @"?widen@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBADD@Z"(%"class.std::basic_ios"* %8, i8 10)
  %call1 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @"?put@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@D@Z"(%"class.std::basic_ostream"* %0, i8 %call)
  %9 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %_Ostr.addr, align 8
  %call2 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @"?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ"(%"class.std::basic_ostream"* %9)
  %10 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %_Ostr.addr, align 8
  ret %"class.std::basic_ostream"* %10
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.std::_String_iterator"* @"??E?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEAAAEAV01@XZ"(%"class.std::_String_iterator"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_String_iterator"*, align 8
  store %"class.std::_String_iterator"* %this, %"class.std::_String_iterator"** %this.addr, align 8
  %this1 = load %"class.std::_String_iterator"*, %"class.std::_String_iterator"** %this.addr, align 8
  %0 = bitcast %"class.std::_String_iterator"* %this1 to %"class.std::_String_const_iterator"*
  %call = call nonnull align 8 dereferenceable(8) %"class.std::_String_const_iterator"* @"??E?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEAAAEAV01@XZ"(%"class.std::_String_const_iterator"* %0)
  ret %"class.std::_String_iterator"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::basic_string"*, align 8
  store %"class.std::basic_string"* %this, %"class.std::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::basic_string"*, %"class.std::basic_string"** %this.addr, align 8
  call void @"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(%"class.std::basic_string"* %this1) #13
  %_Mypair = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  call void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(%"class.std::_Compressed_pair"* %_Mypair) #13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(%"class.std::basic_string"* %this) #2 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %this.addr = alloca %"class.std::basic_string"*, align 8
  %_Ptr = alloca i8*, align 8
  %_Al = alloca %"class.std::allocator"*, align 8
  %ref.tmp = alloca i8, align 1
  store %"class.std::basic_string"* %this, %"class.std::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::basic_string"*, %"class.std::basic_string"** %this.addr, align 8
  %_Mypair = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval2 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair, i32 0, i32 0
  %0 = bitcast %"class.std::_String_val"* %_Myval2 to %"struct.std::_Container_base0"*
  call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(%"struct.std::_Container_base0"* %0) #13
  %_Mypair2 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval23 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair2, i32 0, i32 0
  %call = call zeroext i1 @"?_Large_string_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(%"class.std::_String_val"* %_Myval23) #13
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_Mypair4 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval25 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair4, i32 0, i32 0
  %_Bx = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %_Myval25, i32 0, i32 0
  %_Ptr6 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %_Bx to i8**
  %1 = load i8*, i8** %_Ptr6, align 8
  store i8* %1, i8** %_Ptr, align 8
  %call7 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(%"class.std::basic_string"* %this1) #13
  store %"class.std::allocator"* %call7, %"class.std::allocator"** %_Al, align 8
  %_Mypair8 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval29 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair8, i32 0, i32 0
  %_Bx10 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %_Myval29, i32 0, i32 0
  %_Ptr11 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %_Bx10 to i8**
  call void @"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z"(i8** nonnull align 8 dereferenceable(8) %_Ptr11) #13
  %2 = load %"class.std::allocator"*, %"class.std::allocator"** %_Al, align 8
  %_Mypair12 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval213 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair12, i32 0, i32 0
  %_Myres = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %_Myval213, i32 0, i32 2
  %3 = load i64, i64* %_Myres, align 8
  %add = add i64 %3, 1
  %4 = load i8*, i8** %_Ptr, align 8
  invoke void @"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z"(%"class.std::allocator"* %2, i8* %4, i64 %add)
          to label %invoke.cont unwind label %terminate

invoke.cont:                                      ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %invoke.cont, %entry
  %_Mypair14 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval215 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair14, i32 0, i32 0
  %_Mysize = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %_Myval215, i32 0, i32 1
  store i64 0, i64* %_Mysize, align 8
  %_Mypair16 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval217 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair16, i32 0, i32 0
  %_Myres18 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %_Myval217, i32 0, i32 2
  store i64 15, i64* %_Myres18, align 8
  store i8 0, i8* %ref.tmp, align 1
  %_Mypair19 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval220 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair19, i32 0, i32 0
  %_Bx21 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %_Myval220, i32 0, i32 0
  %_Buf = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %_Bx21 to [16 x i8]*
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %_Buf, i64 0, i64 0
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(i8* nonnull align 1 dereferenceable(1) %arrayidx, i8* nonnull align 1 dereferenceable(1) %ref.tmp) #13
  ret void

terminate:                                        ; preds = %if.then
  %5 = cleanuppad within none []
  call void @__std_terminate() #14 [ "funclet"(token %5) ]
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(%"class.std::_Compressed_pair"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Compressed_pair"*, align 8
  store %"class.std::_Compressed_pair"* %this, %"class.std::_Compressed_pair"** %this.addr, align 8
  %this1 = load %"class.std::_Compressed_pair"*, %"class.std::_Compressed_pair"** %this.addr, align 8
  %_Myval2 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %this1, i32 0, i32 0
  call void @"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(%"class.std::_String_val"* %_Myval2) #13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(%"struct.std::_Container_base0"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Container_base0"*, align 8
  store %"struct.std::_Container_base0"* %this, %"struct.std::_Container_base0"** %this.addr, align 8
  %this1 = load %"struct.std::_Container_base0"*, %"struct.std::_Container_base0"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @"?_Large_string_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(%"class.std::_String_val"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_String_val"*, align 8
  store %"class.std::_String_val"* %this, %"class.std::_String_val"** %this.addr, align 8
  %this1 = load %"class.std::_String_val"*, %"class.std::_String_val"** %this.addr, align 8
  %_Myres = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %this1, i32 0, i32 2
  %0 = load i64, i64* %_Myres, align 8
  %cmp = icmp ule i64 16, %0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(%"class.std::basic_string"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::basic_string"*, align 8
  store %"class.std::basic_string"* %this, %"class.std::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::basic_string"*, %"class.std::basic_string"** %this.addr, align 8
  %_Mypair = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ"(%"class.std::_Compressed_pair"* %_Mypair) #13
  ret %"class.std::allocator"* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z"(i8** nonnull align 8 dereferenceable(8) %_Obj) #2 comdat {
entry:
  %_Obj.addr = alloca i8**, align 8
  store i8** %_Obj, i8*** %_Obj.addr, align 8
  %0 = load i8**, i8*** %_Obj.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z"(%"class.std::allocator"* %this, i8* %_Ptr, i64 %_Count) #2 comdat align 2 {
entry:
  %_Count.addr = alloca i64, align 8
  %_Ptr.addr = alloca i8*, align 8
  %this.addr = alloca %"class.std::allocator"*, align 8
  store i64 %_Count, i64* %_Count.addr, align 8
  store i8* %_Ptr, i8** %_Ptr.addr, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = load i64, i64* %_Count.addr, align 8
  %mul = mul i64 1, %0
  %1 = load i8*, i8** %_Ptr.addr, align 8
  call void @"??$_Deallocate@$0BA@$0A@@std@@YAXPEAX_K@Z"(i8* %1, i64 %mul) #13
  ret void
}

declare dso_local void @__std_terminate()

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(i8* nonnull align 1 dereferenceable(1) %_Left, i8* nonnull align 1 dereferenceable(1) %_Right) #2 comdat align 2 {
entry:
  %_Right.addr = alloca i8*, align 8
  %_Left.addr = alloca i8*, align 8
  store i8* %_Right, i8** %_Right.addr, align 8
  store i8* %_Left, i8** %_Left.addr, align 8
  %0 = load i8*, i8** %_Right.addr, align 8
  %1 = load i8, i8* %0, align 1
  %2 = load i8*, i8** %_Left.addr, align 8
  store i8 %1, i8* %2, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ"(%"class.std::_Compressed_pair"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Compressed_pair"*, align 8
  store %"class.std::_Compressed_pair"* %this, %"class.std::_Compressed_pair"** %this.addr, align 8
  %this1 = load %"class.std::_Compressed_pair"*, %"class.std::_Compressed_pair"** %this.addr, align 8
  %0 = bitcast %"class.std::_Compressed_pair"* %this1 to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Deallocate@$0BA@$0A@@std@@YAXPEAX_K@Z"(i8* %_Ptr, i64 %_Bytes) #2 comdat personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %_Bytes.addr = alloca i64, align 8
  %_Ptr.addr = alloca i8*, align 8
  store i64 %_Bytes, i64* %_Bytes.addr, align 8
  store i8* %_Ptr, i8** %_Ptr.addr, align 8
  %0 = load i64, i64* %_Bytes.addr, align 8
  %cmp = icmp uge i64 %0, 4096
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  invoke void @"?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z"(i8** nonnull align 8 dereferenceable(8) %_Ptr.addr, i64* nonnull align 8 dereferenceable(8) %_Bytes.addr)
          to label %invoke.cont unwind label %terminate

invoke.cont:                                      ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %invoke.cont, %entry
  %1 = load i64, i64* %_Bytes.addr, align 8
  %2 = load i8*, i8** %_Ptr.addr, align 8
  call void @"??3@YAXPEAX_K@Z"(i8* %2, i64 %1) #13
  ret void

terminate:                                        ; preds = %if.then
  %3 = cleanuppad within none []
  call void @__std_terminate() #14 [ "funclet"(token %3) ]
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @"?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z"(i8** nonnull align 8 dereferenceable(8) %_Ptr, i64* nonnull align 8 dereferenceable(8) %_Bytes) #1 comdat {
entry:
  %_Bytes.addr = alloca i64*, align 8
  %_Ptr.addr = alloca i8**, align 8
  %_Ptr_user = alloca i64*, align 8
  %_Ptr_container = alloca i64, align 8
  %_Min_back_shift = alloca i64, align 8
  %_Back_shift = alloca i64, align 8
  store i64* %_Bytes, i64** %_Bytes.addr, align 8
  store i8** %_Ptr, i8*** %_Ptr.addr, align 8
  %0 = load i64*, i64** %_Bytes.addr, align 8
  %1 = load i64, i64* %0, align 8
  %add = add i64 %1, 39
  store i64 %add, i64* %0, align 8
  %2 = load i8**, i8*** %_Ptr.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = bitcast i8* %3 to i64*
  store i64* %4, i64** %_Ptr_user, align 8
  %5 = load i64*, i64** %_Ptr_user, align 8
  %arrayidx = getelementptr inbounds i64, i64* %5, i64 -1
  %6 = load i64, i64* %arrayidx, align 8
  store i64 %6, i64* %_Ptr_container, align 8
  store i64 8, i64* %_Min_back_shift, align 8
  %7 = load i8**, i8*** %_Ptr.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = ptrtoint i8* %8 to i64
  %10 = load i64, i64* %_Ptr_container, align 8
  %sub = sub i64 %9, %10
  store i64 %sub, i64* %_Back_shift, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %11 = load i64, i64* %_Back_shift, align 8
  %cmp = icmp uge i64 %11, 8
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %12 = load i64, i64* %_Back_shift, align 8
  %cmp1 = icmp ule i64 %12, 39
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  br label %do.body2

do.body2:                                         ; preds = %if.else
  call void @_invalid_parameter_noinfo_noreturn() #15
  unreachable

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  br label %do.end3

do.end3:                                          ; preds = %if.end
  %13 = load i64, i64* %_Ptr_container, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = load i8**, i8*** %_Ptr.addr, align 8
  store i8* %14, i8** %15, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local void @"??3@YAXPEAX_K@Z"(i8*, i64) #3

; Function Attrs: noreturn
declare dso_local void @_invalid_parameter_noinfo_noreturn() #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(%"class.std::_String_val"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_String_val"*, align 8
  store %"class.std::_String_val"* %this, %"class.std::_String_val"** %this.addr, align 8
  %this1 = load %"class.std::_String_val"*, %"class.std::_String_val"** %this.addr, align 8
  %_Bx = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %this1, i32 0, i32 0
  call void @"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(%"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %_Bx) #13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(%"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"*, align 8
  store %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %this, %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"** %this.addr, align 8
  %this1 = load %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"*, %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::_Compressed_pair"* @"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"(%"class.std::_Compressed_pair"* returned %this, i8 %.coerce) unnamed_addr #1 comdat align 2 {
entry:
  %0 = alloca %"struct.std::_Zero_then_variadic_args_t", align 1
  %this.addr = alloca %"class.std::_Compressed_pair"*, align 8
  %coerce.dive = getelementptr inbounds %"struct.std::_Zero_then_variadic_args_t", %"struct.std::_Zero_then_variadic_args_t"* %0, i32 0, i32 0
  store i8 %.coerce, i8* %coerce.dive, align 1
  store %"class.std::_Compressed_pair"* %this, %"class.std::_Compressed_pair"** %this.addr, align 8
  %this1 = load %"class.std::_Compressed_pair"*, %"class.std::_Compressed_pair"** %this.addr, align 8
  %1 = bitcast %"class.std::_Compressed_pair"* %this1 to %"class.std::allocator"*
  %call = call %"class.std::allocator"* @"??0?$allocator@D@std@@QEAA@XZ"(%"class.std::allocator"* %1) #13
  %_Myval2 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %this1, i32 0, i32 0
  %call2 = call %"class.std::_String_val"* @"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(%"class.std::_String_val"* %_Myval2)
  ret %"class.std::_Compressed_pair"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::_Fake_proxy_ptr_impl"* @"??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z"(%"struct.std::_Fake_proxy_ptr_impl"* returned %this, %"struct.std::_Fake_allocator"* nonnull align 1 dereferenceable(1) %0, %"struct.std::_Container_base0"* nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 {
entry:
  %.addr = alloca %"struct.std::_Container_base0"*, align 8
  %.addr1 = alloca %"struct.std::_Fake_allocator"*, align 8
  %this.addr = alloca %"struct.std::_Fake_proxy_ptr_impl"*, align 8
  store %"struct.std::_Container_base0"* %1, %"struct.std::_Container_base0"** %.addr, align 8
  store %"struct.std::_Fake_allocator"* %0, %"struct.std::_Fake_allocator"** %.addr1, align 8
  store %"struct.std::_Fake_proxy_ptr_impl"* %this, %"struct.std::_Fake_proxy_ptr_impl"** %this.addr, align 8
  %this2 = load %"struct.std::_Fake_proxy_ptr_impl"*, %"struct.std::_Fake_proxy_ptr_impl"** %this.addr, align 8
  ret %"struct.std::_Fake_proxy_ptr_impl"* %this2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Tidy_init@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(%"class.std::basic_string"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::basic_string"*, align 8
  %ref.tmp = alloca i8, align 1
  store %"class.std::basic_string"* %this, %"class.std::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::basic_string"*, %"class.std::basic_string"** %this.addr, align 8
  %_Mypair = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval2 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair, i32 0, i32 0
  %_Mysize = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %_Myval2, i32 0, i32 1
  store i64 0, i64* %_Mysize, align 8
  %_Mypair2 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval23 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair2, i32 0, i32 0
  %_Myres = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %_Myval23, i32 0, i32 2
  store i64 15, i64* %_Myres, align 8
  store i8 0, i8* %ref.tmp, align 1
  %_Mypair4 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval25 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair4, i32 0, i32 0
  %_Bx = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %_Myval25, i32 0, i32 0
  %_Buf = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %_Bx to [16 x i8]*
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %_Buf, i64 0, i64 0
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(i8* nonnull align 1 dereferenceable(1) %arrayidx, i8* nonnull align 1 dereferenceable(1) %ref.tmp) #13
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z"(%"class.std::basic_string"* %this, i8* %_Ptr) #1 comdat align 2 {
entry:
  %_Ptr.addr = alloca i8*, align 8
  %this.addr = alloca %"class.std::basic_string"*, align 8
  store i8* %_Ptr, i8** %_Ptr.addr, align 8
  store %"class.std::basic_string"* %this, %"class.std::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::basic_string"*, %"class.std::basic_string"** %this.addr, align 8
  %0 = load i8*, i8** %_Ptr.addr, align 8
  %call = call i64 @"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"(i8* %0) #13
  %call2 = call i64 @"??$_Convert_size@_K@std@@YA_K_K@Z"(i64 %call) #13
  %1 = load i8*, i8** %_Ptr.addr, align 8
  %call3 = call nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"(%"class.std::basic_string"* %this1, i8* %1, i64 %call2)
  ret %"class.std::basic_string"* %call3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ"(%"struct.std::_Fake_proxy_ptr_impl"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Fake_proxy_ptr_impl"*, align 8
  store %"struct.std::_Fake_proxy_ptr_impl"* %this, %"struct.std::_Fake_proxy_ptr_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Fake_proxy_ptr_impl"*, %"struct.std::_Fake_proxy_ptr_impl"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::allocator"* @"??0?$allocator@D@std@@QEAA@XZ"(%"class.std::allocator"* returned %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  ret %"class.std::allocator"* %this1
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::_String_val"* @"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(%"class.std::_String_val"* returned %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_String_val"*, align 8
  store %"class.std::_String_val"* %this, %"class.std::_String_val"** %this.addr, align 8
  %this1 = load %"class.std::_String_val"*, %"class.std::_String_val"** %this.addr, align 8
  %0 = bitcast %"class.std::_String_val"* %this1 to %"struct.std::_Container_base0"*
  %_Bx = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %this1, i32 0, i32 0
  %call = call %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* @"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(%"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %_Bx)
  %_Mysize = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %this1, i32 0, i32 1
  store i64 0, i64* %_Mysize, align 8
  %_Myres = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %this1, i32 0, i32 2
  store i64 0, i64* %_Myres, align 8
  ret %"class.std::_String_val"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* @"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(%"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* returned %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"*, align 8
  store %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %this, %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"** %this.addr, align 8
  %this1 = load %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"*, %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"** %this.addr, align 8
  ret %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %this1
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"(%"class.std::basic_string"* %this, i8* %_Ptr, i64 %_Count) #1 comdat align 2 {
entry:
  %retval = alloca %"class.std::basic_string"*, align 8
  %_Count.addr = alloca i64, align 8
  %_Ptr.addr = alloca i8*, align 8
  %this.addr = alloca %"class.std::basic_string"*, align 8
  %_Old_ptr = alloca i8*, align 8
  %ref.tmp = alloca i8, align 1
  %agg.tmp = alloca %class.anon, align 1
  store i64 %_Count, i64* %_Count.addr, align 8
  store i8* %_Ptr, i8** %_Ptr.addr, align 8
  store %"class.std::basic_string"* %this, %"class.std::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::basic_string"*, %"class.std::basic_string"** %this.addr, align 8
  %0 = load i64, i64* %_Count.addr, align 8
  %_Mypair = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval2 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair, i32 0, i32 0
  %_Myres = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %_Myval2, i32 0, i32 2
  %1 = load i64, i64* %_Myres, align 8
  %cmp = icmp ule i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_Mypair2 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval23 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair2, i32 0, i32 0
  %call = call i8* @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(%"class.std::_String_val"* %_Myval23) #13
  store i8* %call, i8** %_Old_ptr, align 8
  %2 = load i64, i64* %_Count.addr, align 8
  %_Mypair4 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval25 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair4, i32 0, i32 0
  %_Mysize = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %_Myval25, i32 0, i32 1
  store i64 %2, i64* %_Mysize, align 8
  %3 = load i64, i64* %_Count.addr, align 8
  %4 = load i8*, i8** %_Ptr.addr, align 8
  %5 = load i8*, i8** %_Old_ptr, align 8
  %call6 = call i8* @"?move@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(i8* %5, i8* %4, i64 %3) #13
  store i8 0, i8* %ref.tmp, align 1
  %6 = load i8*, i8** %_Old_ptr, align 8
  %7 = load i64, i64* %_Count.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %7
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(i8* nonnull align 1 dereferenceable(1) %arrayidx, i8* nonnull align 1 dereferenceable(1) %ref.tmp) #13
  store %"class.std::basic_string"* %this1, %"class.std::basic_string"** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i8*, i8** %_Ptr.addr, align 8
  %9 = load i64, i64* %_Count.addr, align 8
  %coerce.dive = getelementptr inbounds %class.anon, %class.anon* %agg.tmp, i32 0, i32 0
  %10 = load i8, i8* %coerce.dive, align 1
  %call7 = call nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??assign@01@QEAAAEAV01@QEBD0@Z@PEBD@Z"(%"class.std::basic_string"* %this1, i64 %9, i8 %10, i8* %8)
  store %"class.std::basic_string"* %call7, %"class.std::basic_string"** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load %"class.std::basic_string"*, %"class.std::basic_string"** %retval, align 8
  ret %"class.std::basic_string"* %11
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @"??$_Convert_size@_K@std@@YA_K_K@Z"(i64 %_Len) #2 comdat {
entry:
  %_Len.addr = alloca i64, align 8
  store i64 %_Len, i64* %_Len.addr, align 8
  %0 = load i64, i64* %_Len.addr, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"(i8* %_First) #2 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %_First.addr = alloca i8*, align 8
  store i8* %_First, i8** %_First.addr, align 8
  %0 = load i8*, i8** %_First.addr, align 8
  %call = invoke i64 @strlen(i8* %0)
          to label %invoke.cont unwind label %terminate

invoke.cont:                                      ; preds = %entry
  ret i64 %call

terminate:                                        ; preds = %entry
  %1 = cleanuppad within none []
  call void @__std_terminate() #14 [ "funclet"(token %1) ]
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(%"class.std::_String_val"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_String_val"*, align 8
  %_Result = alloca i8*, align 8
  store %"class.std::_String_val"* %this, %"class.std::_String_val"** %this.addr, align 8
  %this1 = load %"class.std::_String_val"*, %"class.std::_String_val"** %this.addr, align 8
  %_Bx = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %this1, i32 0, i32 0
  %_Buf = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %_Bx to [16 x i8]*
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %_Buf, i64 0, i64 0
  store i8* %arraydecay, i8** %_Result, align 8
  %call = call zeroext i1 @"?_Large_string_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(%"class.std::_String_val"* %this1) #13
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_Bx2 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %this1, i32 0, i32 0
  %_Ptr = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %_Bx2 to i8**
  %0 = load i8*, i8** %_Ptr, align 8
  %call3 = call i8* @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(i8* %0) #13
  store i8* %call3, i8** %_Result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %_Result, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"?move@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(i8* %_First1, i8* %_First2, i64 %_Count) #2 comdat align 2 {
entry:
  %_Count.addr = alloca i64, align 8
  %_First2.addr = alloca i8*, align 8
  %_First1.addr = alloca i8*, align 8
  store i64 %_Count, i64* %_Count.addr, align 8
  store i8* %_First2, i8** %_First2.addr, align 8
  store i8* %_First1, i8** %_First1.addr, align 8
  %0 = load i8*, i8** %_First1.addr, align 8
  %1 = load i8*, i8** %_First2.addr, align 8
  %2 = load i64, i64* %_Count.addr, align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 %1, i64 %2, i1 false)
  ret i8* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??assign@01@QEAAAEAV01@QEBD0@Z@PEBD@Z"(%"class.std::basic_string"* %this, i64 %_New_size, i8 %_Fn.coerce, i8* %_Args) #1 comdat align 2 {
entry:
  %_Fn = alloca %class.anon, align 1
  %_Args.addr = alloca i8*, align 8
  %_New_size.addr = alloca i64, align 8
  %this.addr = alloca %"class.std::basic_string"*, align 8
  %_Old_capacity = alloca i64, align 8
  %_New_capacity = alloca i64, align 8
  %_Al = alloca %"class.std::allocator"*, align 8
  %_New_ptr = alloca i8*, align 8
  %coerce.dive = getelementptr inbounds %class.anon, %class.anon* %_Fn, i32 0, i32 0
  store i8 %_Fn.coerce, i8* %coerce.dive, align 1
  store i8* %_Args, i8** %_Args.addr, align 8
  store i64 %_New_size, i64* %_New_size.addr, align 8
  store %"class.std::basic_string"* %this, %"class.std::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::basic_string"*, %"class.std::basic_string"** %this.addr, align 8
  %0 = load i64, i64* %_New_size.addr, align 8
  %call = call i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(%"class.std::basic_string"* %this1) #13
  %cmp = icmp ugt i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @"?_Xlen_string@std@@YAXXZ"() #15
  unreachable

if.end:                                           ; preds = %entry
  %_Mypair = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval2 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair, i32 0, i32 0
  %_Myres = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %_Myval2, i32 0, i32 2
  %1 = load i64, i64* %_Myres, align 8
  store i64 %1, i64* %_Old_capacity, align 8
  %2 = load i64, i64* %_New_size.addr, align 8
  %call2 = call i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"(%"class.std::basic_string"* %this1, i64 %2) #13
  store i64 %call2, i64* %_New_capacity, align 8
  %call3 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(%"class.std::basic_string"* %this1) #13
  store %"class.std::allocator"* %call3, %"class.std::allocator"** %_Al, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %_Al, align 8
  %4 = load i64, i64* %_New_capacity, align 8
  %add = add i64 %4, 1
  %call4 = call i8* @"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"(%"class.std::allocator"* %3, i64 %add)
  store i8* %call4, i8** %_New_ptr, align 8
  %_Mypair5 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval26 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair5, i32 0, i32 0
  %5 = bitcast %"class.std::_String_val"* %_Myval26 to %"struct.std::_Container_base0"*
  call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(%"struct.std::_Container_base0"* %5) #13
  %6 = load i64, i64* %_New_size.addr, align 8
  %_Mypair7 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval28 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair7, i32 0, i32 0
  %_Mysize = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %_Myval28, i32 0, i32 1
  store i64 %6, i64* %_Mysize, align 8
  %7 = load i64, i64* %_New_capacity, align 8
  %_Mypair9 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval210 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair9, i32 0, i32 0
  %_Myres11 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %_Myval210, i32 0, i32 2
  store i64 %7, i64* %_Myres11, align 8
  %8 = load i8*, i8** %_Args.addr, align 8
  %9 = load i64, i64* %_New_size.addr, align 8
  %10 = load i8*, i8** %_New_ptr, align 8
  %call12 = call i8* @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(i8* %10) #13
  call void @"??R<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@QEBA?A?<auto>@@QEAD10@Z"(%class.anon* %_Fn, i8* %call12, i64 %9, i8* %8)
  %11 = load i64, i64* %_Old_capacity, align 8
  %cmp13 = icmp ule i64 16, %11
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end
  %12 = load %"class.std::allocator"*, %"class.std::allocator"** %_Al, align 8
  %13 = load i64, i64* %_Old_capacity, align 8
  %add15 = add i64 %13, 1
  %_Mypair16 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval217 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair16, i32 0, i32 0
  %_Bx = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %_Myval217, i32 0, i32 0
  %_Ptr = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %_Bx to i8**
  %14 = load i8*, i8** %_Ptr, align 8
  call void @"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z"(%"class.std::allocator"* %12, i8* %14, i64 %add15)
  %15 = load i8*, i8** %_New_ptr, align 8
  %_Mypair18 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval219 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair18, i32 0, i32 0
  %_Bx20 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %_Myval219, i32 0, i32 0
  %_Ptr21 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %_Bx20 to i8**
  store i8* %15, i8** %_Ptr21, align 8
  br label %if.end26

if.else:                                          ; preds = %if.end
  %_Mypair22 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval223 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair22, i32 0, i32 0
  %_Bx24 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %_Myval223, i32 0, i32 0
  %_Ptr25 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %_Bx24 to i8**
  call void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(i8** nonnull align 8 dereferenceable(8) %_Ptr25, i8** nonnull align 8 dereferenceable(8) %_New_ptr) #13
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then14
  ret %"class.std::basic_string"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(i8* %_Ptr) #2 comdat {
entry:
  %_Ptr.addr = alloca i8*, align 8
  store i8* %_Ptr, i8** %_Ptr.addr, align 8
  %0 = load i8*, i8** %_Ptr.addr, align 8
  ret i8* %0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(%"class.std::basic_string"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::basic_string"*, align 8
  %_Alloc_max = alloca i64, align 8
  %_Storage_max = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  %ref.tmp4 = alloca i64, align 8
  %ref.tmp5 = alloca i64, align 8
  store %"class.std::basic_string"* %this, %"class.std::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::basic_string"*, %"class.std::basic_string"** %this.addr, align 8
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ"(%"class.std::basic_string"* %this1) #13
  %call2 = call i64 @"?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z"(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %call) #13
  store i64 %call2, i64* %_Alloc_max, align 8
  store i64 16, i64* %ref.tmp, align 8
  %call3 = call nonnull align 8 dereferenceable(8) i64* @"??$_Max_value@_K@std@@YAAEB_KAEB_K0@Z"(i64* nonnull align 8 dereferenceable(8) %_Alloc_max, i64* nonnull align 8 dereferenceable(8) %ref.tmp) #13
  %0 = load i64, i64* %call3, align 8
  store i64 %0, i64* %_Storage_max, align 8
  %1 = load i64, i64* %_Storage_max, align 8
  %sub = sub i64 %1, 1
  store i64 %sub, i64* %ref.tmp4, align 8
  %call6 = call i64 @"?max@?$numeric_limits@_J@std@@SA_JXZ"() #13
  store i64 %call6, i64* %ref.tmp5, align 8
  %call7 = call nonnull align 8 dereferenceable(8) i64* @"??$_Min_value@_K@std@@YAAEB_KAEB_K0@Z"(i64* nonnull align 8 dereferenceable(8) %ref.tmp5, i64* nonnull align 8 dereferenceable(8) %ref.tmp4) #13
  %2 = load i64, i64* %call7, align 8
  ret i64 %2
}

; Function Attrs: noinline noreturn optnone uwtable
define linkonce_odr dso_local void @"?_Xlen_string@std@@YAXXZ"() #6 comdat {
entry:
  call void @"?_Xlength_error@std@@YAXPEBD@Z"(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@", i64 0, i64 0)) #15
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"(%"class.std::basic_string"* %this, i64 %_Requested) #2 comdat align 2 {
entry:
  %_Requested.addr = alloca i64, align 8
  %this.addr = alloca %"class.std::basic_string"*, align 8
  store i64 %_Requested, i64* %_Requested.addr, align 8
  store %"class.std::basic_string"* %this, %"class.std::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::basic_string"*, %"class.std::basic_string"** %this.addr, align 8
  %call = call i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(%"class.std::basic_string"* %this1) #13
  %_Mypair = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval2 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair, i32 0, i32 0
  %_Myres = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %_Myval2, i32 0, i32 2
  %0 = load i64, i64* %_Myres, align 8
  %1 = load i64, i64* %_Requested.addr, align 8
  %call2 = call i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z"(i64 %1, i64 %0, i64 %call) #13
  ret i64 %call2
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i8* @"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"(%"class.std::allocator"* %this, i64 %_Count) #1 comdat align 2 {
entry:
  %_Count.addr = alloca i64, align 8
  %this.addr = alloca %"class.std::allocator"*, align 8
  store i64 %_Count, i64* %_Count.addr, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = load i64, i64* %_Count.addr, align 8
  %call = call i64 @"??$_Get_size_of_n@$00@std@@YA_K_K@Z"(i64 %0)
  %call2 = call i8* @"??$_Allocate@$0BA@U_Default_allocate_traits@std@@$0A@@std@@YAPEAX_K@Z"(i64 %call)
  ret i8* %call2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??R<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@QEBA?A?<auto>@@QEAD10@Z"(%class.anon* %this, i8* %_New_ptr, i64 %_Count, i8* %_Ptr) #2 comdat align 2 {
entry:
  %_Ptr.addr = alloca i8*, align 8
  %_Count.addr = alloca i64, align 8
  %_New_ptr.addr = alloca i8*, align 8
  %this.addr = alloca %class.anon*, align 8
  %ref.tmp = alloca i8, align 1
  store i8* %_Ptr, i8** %_Ptr.addr, align 8
  store i64 %_Count, i64* %_Count.addr, align 8
  store i8* %_New_ptr, i8** %_New_ptr.addr, align 8
  store %class.anon* %this, %class.anon** %this.addr, align 8
  %this1 = load %class.anon*, %class.anon** %this.addr, align 8
  %0 = load i64, i64* %_Count.addr, align 8
  %1 = load i8*, i8** %_Ptr.addr, align 8
  %2 = load i8*, i8** %_New_ptr.addr, align 8
  %call = call i8* @"?copy@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(i8* %2, i8* %1, i64 %0) #13
  store i8 0, i8* %ref.tmp, align 1
  %3 = load i8*, i8** %_New_ptr.addr, align 8
  %4 = load i64, i64* %_Count.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %4
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(i8* nonnull align 1 dereferenceable(1) %arrayidx, i8* nonnull align 1 dereferenceable(1) %ref.tmp) #13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(i8** nonnull align 8 dereferenceable(8) %_Obj, i8** nonnull align 8 dereferenceable(8) %_Args) #2 comdat {
entry:
  %_Args.addr = alloca i8**, align 8
  %_Obj.addr = alloca i8**, align 8
  store i8** %_Args, i8*** %_Args.addr, align 8
  store i8** %_Obj, i8*** %_Obj.addr, align 8
  %0 = load i8**, i8*** %_Obj.addr, align 8
  %call = call i8** @"??$addressof@PEAD@std@@YAPEAPEADAEAPEAD@Z"(i8** nonnull align 8 dereferenceable(8) %0) #13
  %1 = bitcast i8** %call to i8*
  %2 = bitcast i8* %1 to i8**
  %3 = load i8**, i8*** %_Args.addr, align 8
  %call1 = call nonnull align 8 dereferenceable(8) i8** @"??$forward@AEBQEAD@std@@YAAEBQEADAEBQEAD@Z"(i8** nonnull align 8 dereferenceable(8) %3) #13
  %4 = load i8*, i8** %call1, align 8
  store i8* %4, i8** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @"?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z"(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %0) #2 comdat align 2 {
entry:
  %.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %.addr, align 8
  ret i64 -1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ"(%"class.std::basic_string"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::basic_string"*, align 8
  store %"class.std::basic_string"* %this, %"class.std::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::basic_string"*, %"class.std::basic_string"** %this.addr, align 8
  %_Mypair = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ"(%"class.std::_Compressed_pair"* %_Mypair) #13
  ret %"class.std::allocator"* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @"??$_Max_value@_K@std@@YAAEB_KAEB_K0@Z"(i64* nonnull align 8 dereferenceable(8) %_Left, i64* nonnull align 8 dereferenceable(8) %_Right) #2 comdat {
entry:
  %_Right.addr = alloca i64*, align 8
  %_Left.addr = alloca i64*, align 8
  store i64* %_Right, i64** %_Right.addr, align 8
  store i64* %_Left, i64** %_Left.addr, align 8
  %0 = load i64*, i64** %_Left.addr, align 8
  %1 = load i64, i64* %0, align 8
  %2 = load i64*, i64** %_Right.addr, align 8
  %3 = load i64, i64* %2, align 8
  %cmp = icmp ult i64 %1, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i64*, i64** %_Right.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load i64*, i64** %_Left.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond-lvalue = phi i64* [ %4, %cond.true ], [ %5, %cond.false ]
  ret i64* %cond-lvalue
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @"??$_Min_value@_K@std@@YAAEB_KAEB_K0@Z"(i64* nonnull align 8 dereferenceable(8) %_Left, i64* nonnull align 8 dereferenceable(8) %_Right) #2 comdat {
entry:
  %_Right.addr = alloca i64*, align 8
  %_Left.addr = alloca i64*, align 8
  store i64* %_Right, i64** %_Right.addr, align 8
  store i64* %_Left, i64** %_Left.addr, align 8
  %0 = load i64*, i64** %_Right.addr, align 8
  %1 = load i64, i64* %0, align 8
  %2 = load i64*, i64** %_Left.addr, align 8
  %3 = load i64, i64* %2, align 8
  %cmp = icmp ult i64 %1, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i64*, i64** %_Right.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load i64*, i64** %_Left.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond-lvalue = phi i64* [ %4, %cond.true ], [ %5, %cond.false ]
  ret i64* %cond-lvalue
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @"?max@?$numeric_limits@_J@std@@SA_JXZ"() #2 comdat align 2 {
entry:
  ret i64 9223372036854775807
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ"(%"class.std::_Compressed_pair"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Compressed_pair"*, align 8
  store %"class.std::_Compressed_pair"* %this, %"class.std::_Compressed_pair"** %this.addr, align 8
  %this1 = load %"class.std::_Compressed_pair"*, %"class.std::_Compressed_pair"** %this.addr, align 8
  %0 = bitcast %"class.std::_Compressed_pair"* %this1 to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: noreturn
declare dso_local void @"?_Xlength_error@std@@YAXPEBD@Z"(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z"(i64 %_Requested, i64 %_Old, i64 %_Max) #2 comdat align 2 {
entry:
  %retval = alloca i64, align 8
  %_Max.addr = alloca i64, align 8
  %_Old.addr = alloca i64, align 8
  %_Requested.addr = alloca i64, align 8
  %_Masked = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  store i64 %_Max, i64* %_Max.addr, align 8
  store i64 %_Old, i64* %_Old.addr, align 8
  store i64 %_Requested, i64* %_Requested.addr, align 8
  %0 = load i64, i64* %_Requested.addr, align 8
  %or = or i64 %0, 15
  store i64 %or, i64* %_Masked, align 8
  %1 = load i64, i64* %_Masked, align 8
  %2 = load i64, i64* %_Max.addr, align 8
  %cmp = icmp ugt i64 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %_Max.addr, align 8
  store i64 %3, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %_Old.addr, align 8
  %5 = load i64, i64* %_Max.addr, align 8
  %6 = load i64, i64* %_Old.addr, align 8
  %div = udiv i64 %6, 2
  %sub = sub i64 %5, %div
  %cmp1 = icmp ugt i64 %4, %sub
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %7 = load i64, i64* %_Max.addr, align 8
  store i64 %7, i64* %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %8 = load i64, i64* %_Old.addr, align 8
  %9 = load i64, i64* %_Old.addr, align 8
  %div4 = udiv i64 %9, 2
  %add = add i64 %8, %div4
  store i64 %add, i64* %ref.tmp, align 8
  %call = call nonnull align 8 dereferenceable(8) i64* @"??$_Max_value@_K@std@@YAAEB_KAEB_K0@Z"(i64* nonnull align 8 dereferenceable(8) %_Masked, i64* nonnull align 8 dereferenceable(8) %ref.tmp) #13
  %10 = load i64, i64* %call, align 8
  store i64 %10, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %11 = load i64, i64* %retval, align 8
  ret i64 %11
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i8* @"??$_Allocate@$0BA@U_Default_allocate_traits@std@@$0A@@std@@YAPEAX_K@Z"(i64 %_Bytes) #1 comdat {
entry:
  %retval = alloca i8*, align 8
  %_Bytes.addr = alloca i64, align 8
  store i64 %_Bytes, i64* %_Bytes.addr, align 8
  %0 = load i64, i64* %_Bytes.addr, align 8
  %cmp = icmp uge i64 %0, 4096
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %_Bytes.addr, align 8
  %call = call i8* @"??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z"(i64 %1)
  store i8* %call, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %_Bytes.addr, align 8
  %cmp1 = icmp ne i64 %2, 0
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %3 = load i64, i64* %_Bytes.addr, align 8
  %call3 = call i8* @"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z"(i64 %3)
  store i8* %call3, i8** %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end4, %if.then2, %if.then
  %4 = load i8*, i8** %retval, align 8
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @"??$_Get_size_of_n@$00@std@@YA_K_K@Z"(i64 %_Count) #2 comdat {
entry:
  %_Count.addr = alloca i64, align 8
  %_Overflow_is_possible = alloca i8, align 1
  store i64 %_Count, i64* %_Count.addr, align 8
  store i8 0, i8* %_Overflow_is_possible, align 1
  %0 = load i64, i64* %_Count.addr, align 8
  %mul = mul i64 %0, 1
  ret i64 %mul
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i8* @"??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z"(i64 %_Bytes) #1 comdat {
entry:
  %_Bytes.addr = alloca i64, align 8
  %_Block_size = alloca i64, align 8
  %_Ptr_container = alloca i64, align 8
  %_Ptr = alloca i8*, align 8
  store i64 %_Bytes, i64* %_Bytes.addr, align 8
  %0 = load i64, i64* %_Bytes.addr, align 8
  %add = add i64 39, %0
  store i64 %add, i64* %_Block_size, align 8
  %1 = load i64, i64* %_Block_size, align 8
  %2 = load i64, i64* %_Bytes.addr, align 8
  %cmp = icmp ule i64 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @"?_Throw_bad_array_new_length@std@@YAXXZ"() #15
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %_Block_size, align 8
  %call = call i8* @"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z"(i64 %3)
  %4 = ptrtoint i8* %call to i64
  store i64 %4, i64* %_Ptr_container, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load i64, i64* %_Ptr_container, align 8
  %cmp1 = icmp ne i64 %5, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %do.body
  br label %if.end4

if.else:                                          ; preds = %do.body
  br label %do.body3

do.body3:                                         ; preds = %if.else
  call void @_invalid_parameter_noinfo_noreturn() #15
  unreachable

do.end:                                           ; No predecessors!
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.then2
  br label %do.end5

do.end5:                                          ; preds = %if.end4
  %6 = load i64, i64* %_Ptr_container, align 8
  %add6 = add i64 %6, 39
  %and = and i64 %add6, -32
  %7 = inttoptr i64 %and to i8*
  store i8* %7, i8** %_Ptr, align 8
  %8 = load i64, i64* %_Ptr_container, align 8
  %9 = load i8*, i8** %_Ptr, align 8
  %10 = bitcast i8* %9 to i64*
  %arrayidx = getelementptr inbounds i64, i64* %10, i64 -1
  store i64 %8, i64* %arrayidx, align 8
  %11 = load i8*, i8** %_Ptr, align 8
  ret i8* %11
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i8* @"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z"(i64 %_Bytes) #1 comdat align 2 {
entry:
  %_Bytes.addr = alloca i64, align 8
  store i64 %_Bytes, i64* %_Bytes.addr, align 8
  %0 = load i64, i64* %_Bytes.addr, align 8
  %call = call noalias nonnull i8* @"??2@YAPEAX_K@Z"(i64 %0) #16
  ret i8* %call
}

; Function Attrs: noinline noreturn optnone uwtable
define linkonce_odr dso_local void @"?_Throw_bad_array_new_length@std@@YAXXZ"() #6 comdat {
entry:
  %tmp = alloca %"class.std::bad_array_new_length", align 8
  %call = call %"class.std::bad_array_new_length"* @"??0bad_array_new_length@std@@QEAA@XZ"(%"class.std::bad_array_new_length"* %tmp) #13
  %0 = bitcast %"class.std::bad_array_new_length"* %tmp to i8*
  call void @_CxxThrowException(i8* %0, %eh.ThrowInfo* @"_TI3?AVbad_array_new_length@std@@") #15
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::bad_array_new_length"* @"??0bad_array_new_length@std@@QEAA@XZ"(%"class.std::bad_array_new_length"* returned %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::bad_array_new_length"*, align 8
  store %"class.std::bad_array_new_length"* %this, %"class.std::bad_array_new_length"** %this.addr, align 8
  %this1 = load %"class.std::bad_array_new_length"*, %"class.std::bad_array_new_length"** %this.addr, align 8
  %0 = bitcast %"class.std::bad_array_new_length"* %this1 to %"class.std::bad_alloc"*
  %call = call %"class.std::bad_alloc"* @"??0bad_alloc@std@@AEAA@QEBD@Z"(%"class.std::bad_alloc"* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@", i64 0, i64 0)) #13
  %1 = bitcast %"class.std::bad_array_new_length"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** @"??_7bad_array_new_length@std@@6B@" to i32 (...)**), i32 (...)*** %1, align 8
  ret %"class.std::bad_array_new_length"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::bad_array_new_length"* @"??0bad_array_new_length@std@@QEAA@AEBV01@@Z"(%"class.std::bad_array_new_length"* returned %this, %"class.std::bad_array_new_length"* nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
entry:
  %.addr = alloca %"class.std::bad_array_new_length"*, align 8
  %this.addr = alloca %"class.std::bad_array_new_length"*, align 8
  store %"class.std::bad_array_new_length"* %0, %"class.std::bad_array_new_length"** %.addr, align 8
  store %"class.std::bad_array_new_length"* %this, %"class.std::bad_array_new_length"** %this.addr, align 8
  %this1 = load %"class.std::bad_array_new_length"*, %"class.std::bad_array_new_length"** %this.addr, align 8
  %1 = bitcast %"class.std::bad_array_new_length"* %this1 to %"class.std::bad_alloc"*
  %2 = load %"class.std::bad_array_new_length"*, %"class.std::bad_array_new_length"** %.addr, align 8
  %3 = bitcast %"class.std::bad_array_new_length"* %2 to %"class.std::bad_alloc"*
  %call = call %"class.std::bad_alloc"* @"??0bad_alloc@std@@QEAA@AEBV01@@Z"(%"class.std::bad_alloc"* %1, %"class.std::bad_alloc"* nonnull align 8 dereferenceable(24) %3) #13
  %4 = bitcast %"class.std::bad_array_new_length"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** @"??_7bad_array_new_length@std@@6B@" to i32 (...)**), i32 (...)*** %4, align 8
  ret %"class.std::bad_array_new_length"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::bad_alloc"* @"??0bad_alloc@std@@QEAA@AEBV01@@Z"(%"class.std::bad_alloc"* returned %this, %"class.std::bad_alloc"* nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
entry:
  %.addr = alloca %"class.std::bad_alloc"*, align 8
  %this.addr = alloca %"class.std::bad_alloc"*, align 8
  store %"class.std::bad_alloc"* %0, %"class.std::bad_alloc"** %.addr, align 8
  store %"class.std::bad_alloc"* %this, %"class.std::bad_alloc"** %this.addr, align 8
  %this1 = load %"class.std::bad_alloc"*, %"class.std::bad_alloc"** %this.addr, align 8
  %1 = bitcast %"class.std::bad_alloc"* %this1 to %"class.std::exception"*
  %2 = load %"class.std::bad_alloc"*, %"class.std::bad_alloc"** %.addr, align 8
  %3 = bitcast %"class.std::bad_alloc"* %2 to %"class.std::exception"*
  %call = call %"class.std::exception"* @"??0exception@std@@QEAA@AEBV01@@Z"(%"class.std::exception"* %1, %"class.std::exception"* nonnull align 8 dereferenceable(24) %3) #13
  %4 = bitcast %"class.std::bad_alloc"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** @"??_7bad_alloc@std@@6B@" to i32 (...)**), i32 (...)*** %4, align 8
  ret %"class.std::bad_alloc"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::exception"* @"??0exception@std@@QEAA@AEBV01@@Z"(%"class.std::exception"* returned %this, %"class.std::exception"* nonnull align 8 dereferenceable(24) %_Other) unnamed_addr #2 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %_Other.addr = alloca %"class.std::exception"*, align 8
  %this.addr = alloca %"class.std::exception"*, align 8
  store %"class.std::exception"* %_Other, %"class.std::exception"** %_Other.addr, align 8
  store %"class.std::exception"* %this, %"class.std::exception"** %this.addr, align 8
  %this1 = load %"class.std::exception"*, %"class.std::exception"** %this.addr, align 8
  %0 = bitcast %"class.std::exception"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** @"??_7exception@std@@6B@" to i32 (...)**), i32 (...)*** %0, align 8
  %_Data = getelementptr inbounds %"class.std::exception", %"class.std::exception"* %this1, i32 0, i32 1
  %1 = bitcast %struct.__std_exception_data* %_Data to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 16, i1 false)
  %_Data2 = getelementptr inbounds %"class.std::exception", %"class.std::exception"* %this1, i32 0, i32 1
  %2 = load %"class.std::exception"*, %"class.std::exception"** %_Other.addr, align 8
  %_Data3 = getelementptr inbounds %"class.std::exception", %"class.std::exception"* %2, i32 0, i32 1
  invoke void @__std_exception_copy(%struct.__std_exception_data* %_Data3, %struct.__std_exception_data* %_Data2)
          to label %invoke.cont unwind label %terminate

invoke.cont:                                      ; preds = %entry
  ret %"class.std::exception"* %this1

terminate:                                        ; preds = %entry
  %3 = cleanuppad within none []
  call void @__std_terminate() #14 [ "funclet"(token %3) ]
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1bad_array_new_length@std@@UEAA@XZ"(%"class.std::bad_array_new_length"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::bad_array_new_length"*, align 8
  store %"class.std::bad_array_new_length"* %this, %"class.std::bad_array_new_length"** %this.addr, align 8
  %this1 = load %"class.std::bad_array_new_length"*, %"class.std::bad_array_new_length"** %this.addr, align 8
  %0 = bitcast %"class.std::bad_array_new_length"* %this1 to %"class.std::bad_alloc"*
  call void @"??1bad_alloc@std@@UEAA@XZ"(%"class.std::bad_alloc"* %0) #13
  ret void
}

declare dso_local void @_CxxThrowException(i8*, %eh.ThrowInfo*)

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::bad_alloc"* @"??0bad_alloc@std@@AEAA@QEBD@Z"(%"class.std::bad_alloc"* returned %this, i8* %_Message) unnamed_addr #2 comdat align 2 {
entry:
  %_Message.addr = alloca i8*, align 8
  %this.addr = alloca %"class.std::bad_alloc"*, align 8
  store i8* %_Message, i8** %_Message.addr, align 8
  store %"class.std::bad_alloc"* %this, %"class.std::bad_alloc"** %this.addr, align 8
  %this1 = load %"class.std::bad_alloc"*, %"class.std::bad_alloc"** %this.addr, align 8
  %0 = bitcast %"class.std::bad_alloc"* %this1 to %"class.std::exception"*
  %1 = load i8*, i8** %_Message.addr, align 8
  %call = call %"class.std::exception"* @"??0exception@std@@QEAA@QEBDH@Z"(%"class.std::exception"* %0, i8* %1, i32 1) #13
  %2 = bitcast %"class.std::bad_alloc"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** @"??_7bad_alloc@std@@6B@" to i32 (...)**), i32 (...)*** %2, align 8
  ret %"class.std::bad_alloc"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"??_Gbad_array_new_length@std@@UEAAPEAXI@Z"(%"class.std::bad_array_new_length"* %this, i32 %should_call_delete) unnamed_addr #2 comdat align 2 {
entry:
  %retval = alloca i8*, align 8
  %should_call_delete.addr = alloca i32, align 4
  %this.addr = alloca %"class.std::bad_array_new_length"*, align 8
  store i32 %should_call_delete, i32* %should_call_delete.addr, align 4
  store %"class.std::bad_array_new_length"* %this, %"class.std::bad_array_new_length"** %this.addr, align 8
  %this1 = load %"class.std::bad_array_new_length"*, %"class.std::bad_array_new_length"** %this.addr, align 8
  %0 = bitcast %"class.std::bad_array_new_length"* %this1 to i8*
  store i8* %0, i8** %retval, align 8
  %should_call_delete2 = load i32, i32* %should_call_delete.addr, align 4
  call void @"??1bad_array_new_length@std@@UEAA@XZ"(%"class.std::bad_array_new_length"* %this1) #13
  %1 = icmp eq i32 %should_call_delete2, 0
  br i1 %1, label %dtor.continue, label %dtor.call_delete

dtor.call_delete:                                 ; preds = %entry
  %2 = bitcast %"class.std::bad_array_new_length"* %this1 to i8*
  call void @"??3@YAXPEAX@Z"(i8* %2) #17
  br label %dtor.continue

dtor.continue:                                    ; preds = %dtor.call_delete, %entry
  %3 = load i8*, i8** %retval, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"?what@exception@std@@UEBAPEBDXZ"(%"class.std::exception"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::exception"*, align 8
  store %"class.std::exception"* %this, %"class.std::exception"** %this.addr, align 8
  %this1 = load %"class.std::exception"*, %"class.std::exception"** %this.addr, align 8
  %_Data = getelementptr inbounds %"class.std::exception", %"class.std::exception"* %this1, i32 0, i32 1
  %_What = getelementptr inbounds %struct.__std_exception_data, %struct.__std_exception_data* %_Data, i32 0, i32 0
  %0 = load i8*, i8** %_What, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_Data2 = getelementptr inbounds %"class.std::exception", %"class.std::exception"* %this1, i32 0, i32 1
  %_What3 = getelementptr inbounds %struct.__std_exception_data, %struct.__std_exception_data* %_Data2, i32 0, i32 0
  %1 = load i8*, i8** %_What3, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %1, %cond.true ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@", i64 0, i64 0), %cond.false ]
  ret i8* %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::exception"* @"??0exception@std@@QEAA@QEBDH@Z"(%"class.std::exception"* returned %this, i8* %_Message, i32 %0) unnamed_addr #2 comdat align 2 {
entry:
  %.addr = alloca i32, align 4
  %_Message.addr = alloca i8*, align 8
  %this.addr = alloca %"class.std::exception"*, align 8
  store i32 %0, i32* %.addr, align 4
  store i8* %_Message, i8** %_Message.addr, align 8
  store %"class.std::exception"* %this, %"class.std::exception"** %this.addr, align 8
  %this1 = load %"class.std::exception"*, %"class.std::exception"** %this.addr, align 8
  %1 = bitcast %"class.std::exception"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** @"??_7exception@std@@6B@" to i32 (...)**), i32 (...)*** %1, align 8
  %_Data = getelementptr inbounds %"class.std::exception", %"class.std::exception"* %this1, i32 0, i32 1
  %2 = bitcast %struct.__std_exception_data* %_Data to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 16, i1 false)
  %3 = load i8*, i8** %_Message.addr, align 8
  %_Data2 = getelementptr inbounds %"class.std::exception", %"class.std::exception"* %this1, i32 0, i32 1
  %_What = getelementptr inbounds %struct.__std_exception_data, %struct.__std_exception_data* %_Data2, i32 0, i32 0
  store i8* %3, i8** %_What, align 8
  ret %"class.std::exception"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"??_Gbad_alloc@std@@UEAAPEAXI@Z"(%"class.std::bad_alloc"* %this, i32 %should_call_delete) unnamed_addr #2 comdat align 2 {
entry:
  %retval = alloca i8*, align 8
  %should_call_delete.addr = alloca i32, align 4
  %this.addr = alloca %"class.std::bad_alloc"*, align 8
  store i32 %should_call_delete, i32* %should_call_delete.addr, align 4
  store %"class.std::bad_alloc"* %this, %"class.std::bad_alloc"** %this.addr, align 8
  %this1 = load %"class.std::bad_alloc"*, %"class.std::bad_alloc"** %this.addr, align 8
  %0 = bitcast %"class.std::bad_alloc"* %this1 to i8*
  store i8* %0, i8** %retval, align 8
  %should_call_delete2 = load i32, i32* %should_call_delete.addr, align 4
  call void @"??1bad_alloc@std@@UEAA@XZ"(%"class.std::bad_alloc"* %this1) #13
  %1 = icmp eq i32 %should_call_delete2, 0
  br i1 %1, label %dtor.continue, label %dtor.call_delete

dtor.call_delete:                                 ; preds = %entry
  %2 = bitcast %"class.std::bad_alloc"* %this1 to i8*
  call void @"??3@YAXPEAX@Z"(i8* %2) #17
  br label %dtor.continue

dtor.continue:                                    ; preds = %dtor.call_delete, %entry
  %3 = load i8*, i8** %retval, align 8
  ret i8* %3
}

; Function Attrs: argmemonly nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"??_Gexception@std@@UEAAPEAXI@Z"(%"class.std::exception"* %this, i32 %should_call_delete) unnamed_addr #2 comdat align 2 {
entry:
  %retval = alloca i8*, align 8
  %should_call_delete.addr = alloca i32, align 4
  %this.addr = alloca %"class.std::exception"*, align 8
  store i32 %should_call_delete, i32* %should_call_delete.addr, align 4
  store %"class.std::exception"* %this, %"class.std::exception"** %this.addr, align 8
  %this1 = load %"class.std::exception"*, %"class.std::exception"** %this.addr, align 8
  %0 = bitcast %"class.std::exception"* %this1 to i8*
  store i8* %0, i8** %retval, align 8
  %should_call_delete2 = load i32, i32* %should_call_delete.addr, align 4
  call void @"??1exception@std@@UEAA@XZ"(%"class.std::exception"* %this1) #13
  %1 = icmp eq i32 %should_call_delete2, 0
  br i1 %1, label %dtor.continue, label %dtor.call_delete

dtor.call_delete:                                 ; preds = %entry
  %2 = bitcast %"class.std::exception"* %this1 to i8*
  call void @"??3@YAXPEAX@Z"(i8* %2) #17
  br label %dtor.continue

dtor.continue:                                    ; preds = %dtor.call_delete, %entry
  %3 = load i8*, i8** %retval, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1exception@std@@UEAA@XZ"(%"class.std::exception"* %this) unnamed_addr #2 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %this.addr = alloca %"class.std::exception"*, align 8
  store %"class.std::exception"* %this, %"class.std::exception"** %this.addr, align 8
  %this1 = load %"class.std::exception"*, %"class.std::exception"** %this.addr, align 8
  %0 = bitcast %"class.std::exception"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** @"??_7exception@std@@6B@" to i32 (...)**), i32 (...)*** %0, align 8
  %_Data = getelementptr inbounds %"class.std::exception", %"class.std::exception"* %this1, i32 0, i32 1
  invoke void @__std_exception_destroy(%struct.__std_exception_data* %_Data)
          to label %invoke.cont unwind label %terminate

invoke.cont:                                      ; preds = %entry
  ret void

terminate:                                        ; preds = %entry
  %1 = cleanuppad within none []
  call void @__std_terminate() #14 [ "funclet"(token %1) ]
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @"??3@YAXPEAX@Z"(i8*) #8

declare dso_local void @__std_exception_destroy(%struct.__std_exception_data*) #9

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1bad_alloc@std@@UEAA@XZ"(%"class.std::bad_alloc"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::bad_alloc"*, align 8
  store %"class.std::bad_alloc"* %this, %"class.std::bad_alloc"** %this.addr, align 8
  %this1 = load %"class.std::bad_alloc"*, %"class.std::bad_alloc"** %this.addr, align 8
  %0 = bitcast %"class.std::bad_alloc"* %this1 to %"class.std::exception"*
  call void @"??1exception@std@@UEAA@XZ"(%"class.std::exception"* %0) #13
  ret void
}

declare dso_local void @__std_exception_copy(%struct.__std_exception_data*, %struct.__std_exception_data*) #9

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @"??2@YAPEAX_K@Z"(i64) #10

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"?copy@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(i8* %_First1, i8* %_First2, i64 %_Count) #2 comdat align 2 {
entry:
  %_Count.addr = alloca i64, align 8
  %_First2.addr = alloca i8*, align 8
  %_First1.addr = alloca i8*, align 8
  store i64 %_Count, i64* %_Count.addr, align 8
  store i8* %_First2, i8** %_First2.addr, align 8
  store i8* %_First1, i8** %_First1.addr, align 8
  %0 = load i8*, i8** %_First1.addr, align 8
  %1 = load i8*, i8** %_First2.addr, align 8
  %2 = load i64, i64* %_Count.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 %1, i64 %2, i1 false)
  ret i8* %0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8** @"??$addressof@PEAD@std@@YAPEAPEADAEAPEAD@Z"(i8** nonnull align 8 dereferenceable(8) %_Val) #2 comdat {
entry:
  %_Val.addr = alloca i8**, align 8
  store i8** %_Val, i8*** %_Val.addr, align 8
  %0 = load i8**, i8*** %_Val.addr, align 8
  ret i8** %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i8** @"??$forward@AEBQEAD@std@@YAAEBQEADAEBQEAD@Z"(i8** nonnull align 8 dereferenceable(8) %_Arg) #2 comdat {
entry:
  %_Arg.addr = alloca i8**, align 8
  store i8** %_Arg, i8*** %_Arg.addr, align 8
  %0 = load i8**, i8*** %_Arg.addr, align 8
  ret i8** %0
}

declare dso_local i64 @strlen(i8*) #9

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::_String_val"* @"??$addressof@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@YAPEAV?$_String_val@U?$_Simple_types@D@std@@@0@AEAV10@@Z"(%"class.std::_String_val"* nonnull align 8 dereferenceable(32) %_Val) #2 comdat {
entry:
  %_Val.addr = alloca %"class.std::_String_val"*, align 8
  store %"class.std::_String_val"* %_Val, %"class.std::_String_val"** %_Val.addr, align 8
  %0 = load %"class.std::_String_val"*, %"class.std::_String_val"** %_Val.addr, align 8
  ret %"class.std::_String_val"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"??$_Refancy@PEAD$0A@@std@@YAPEADPEAD@Z"(i8* %_Ptr) #2 comdat {
entry:
  %_Ptr.addr = alloca i8*, align 8
  store i8* %_Ptr, i8** %_Ptr.addr, align 8
  %0 = load i8*, i8** %_Ptr.addr, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %"class.std::_String_iterator"* @"??0?$_String_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEAA@PEBDPEBU_Container_base0@1@@Z"(%"class.std::_String_iterator"* returned %this, i8* %0, %"struct.std::_Container_base0"* %1) unnamed_addr #2 comdat align 2 {
entry:
  %.addr = alloca %"struct.std::_Container_base0"*, align 8
  %.addr1 = alloca i8*, align 8
  %this.addr = alloca %"class.std::_String_iterator"*, align 8
  store %"struct.std::_Container_base0"* %1, %"struct.std::_Container_base0"** %.addr, align 8
  store i8* %0, i8** %.addr1, align 8
  store %"class.std::_String_iterator"* %this, %"class.std::_String_iterator"** %this.addr, align 8
  %this2 = load %"class.std::_String_iterator"*, %"class.std::_String_iterator"** %this.addr, align 8
  %2 = bitcast %"class.std::_String_iterator"* %this2 to %"class.std::_String_const_iterator"*
  %3 = load i8*, i8** %.addr1, align 8
  %4 = load %"struct.std::_Container_base0"*, %"struct.std::_Container_base0"** %.addr, align 8
  %call = call %"class.std::_String_const_iterator"* @"??0?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEAA@PEBDPEBU_Container_base0@1@@Z"(%"class.std::_String_const_iterator"* %2, i8* %3, %"struct.std::_Container_base0"* %4) #13
  ret %"class.std::_String_iterator"* %this2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::_String_const_iterator"* @"??0?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEAA@PEBDPEBU_Container_base0@1@@Z"(%"class.std::_String_const_iterator"* returned %this, i8* %_Parg, %"struct.std::_Container_base0"* %_Pstring) unnamed_addr #2 comdat align 2 {
entry:
  %_Pstring.addr = alloca %"struct.std::_Container_base0"*, align 8
  %_Parg.addr = alloca i8*, align 8
  %this.addr = alloca %"class.std::_String_const_iterator"*, align 8
  store %"struct.std::_Container_base0"* %_Pstring, %"struct.std::_Container_base0"** %_Pstring.addr, align 8
  store i8* %_Parg, i8** %_Parg.addr, align 8
  store %"class.std::_String_const_iterator"* %this, %"class.std::_String_const_iterator"** %this.addr, align 8
  %this1 = load %"class.std::_String_const_iterator"*, %"class.std::_String_const_iterator"** %this.addr, align 8
  %0 = bitcast %"class.std::_String_const_iterator"* %this1 to %"struct.std::_Iterator_base0"*
  %_Ptr = getelementptr inbounds %"class.std::_String_const_iterator", %"class.std::_String_const_iterator"* %this1, i32 0, i32 0
  %1 = load i8*, i8** %_Parg.addr, align 8
  store i8* %1, i8** %_Ptr, align 8
  %2 = bitcast %"class.std::_String_const_iterator"* %this1 to %"struct.std::_Iterator_base0"*
  %3 = load %"struct.std::_Container_base0"*, %"struct.std::_Container_base0"** %_Pstring.addr, align 8
  %4 = bitcast %"struct.std::_Container_base0"* %3 to i8*
  call void @"?_Adopt@_Iterator_base0@std@@QEAAXPEBX@Z"(%"struct.std::_Iterator_base0"* %2, i8* %4) #13
  ret %"class.std::_String_const_iterator"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Adopt@_Iterator_base0@std@@QEAAXPEBX@Z"(%"struct.std::_Iterator_base0"* %this, i8* %0) #2 comdat align 2 {
entry:
  %.addr = alloca i8*, align 8
  %this.addr = alloca %"struct.std::_Iterator_base0"*, align 8
  store i8* %0, i8** %.addr, align 8
  store %"struct.std::_Iterator_base0"* %this, %"struct.std::_Iterator_base0"** %this.addr, align 8
  %this1 = load %"struct.std::_Iterator_base0"*, %"struct.std::_Iterator_base0"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local zeroext i1 @"??8?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEBA_NAEBV01@@Z"(%"class.std::_String_const_iterator"* %this, %"class.std::_String_const_iterator"* nonnull align 8 dereferenceable(8) %_Right) #1 comdat align 2 {
entry:
  %_Right.addr = alloca %"class.std::_String_const_iterator"*, align 8
  %this.addr = alloca %"class.std::_String_const_iterator"*, align 8
  store %"class.std::_String_const_iterator"* %_Right, %"class.std::_String_const_iterator"** %_Right.addr, align 8
  store %"class.std::_String_const_iterator"* %this, %"class.std::_String_const_iterator"** %this.addr, align 8
  %this1 = load %"class.std::_String_const_iterator"*, %"class.std::_String_const_iterator"** %this.addr, align 8
  %0 = load %"class.std::_String_const_iterator"*, %"class.std::_String_const_iterator"** %_Right.addr, align 8
  call void @"?_Compat@?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEBAXAEBV12@@Z"(%"class.std::_String_const_iterator"* %this1, %"class.std::_String_const_iterator"* nonnull align 8 dereferenceable(8) %0)
  %_Ptr = getelementptr inbounds %"class.std::_String_const_iterator", %"class.std::_String_const_iterator"* %this1, i32 0, i32 0
  %1 = load i8*, i8** %_Ptr, align 8
  %2 = load %"class.std::_String_const_iterator"*, %"class.std::_String_const_iterator"** %_Right.addr, align 8
  %_Ptr2 = getelementptr inbounds %"class.std::_String_const_iterator", %"class.std::_String_const_iterator"* %2, i32 0, i32 0
  %3 = load i8*, i8** %_Ptr2, align 8
  %cmp = icmp eq i8* %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Compat@?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEBAXAEBV12@@Z"(%"class.std::_String_const_iterator"* %this, %"class.std::_String_const_iterator"* nonnull align 8 dereferenceable(8) %_Right) #2 comdat align 2 {
entry:
  %_Right.addr = alloca %"class.std::_String_const_iterator"*, align 8
  %this.addr = alloca %"class.std::_String_const_iterator"*, align 8
  store %"class.std::_String_const_iterator"* %_Right, %"class.std::_String_const_iterator"** %_Right.addr, align 8
  store %"class.std::_String_const_iterator"* %this, %"class.std::_String_const_iterator"** %this.addr, align 8
  %this1 = load %"class.std::_String_const_iterator"*, %"class.std::_String_const_iterator"** %this.addr, align 8
  %0 = load %"class.std::_String_const_iterator"*, %"class.std::_String_const_iterator"** %_Right.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.std::_String_const_iterator"* @"??E?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEAAAEAV01@XZ"(%"class.std::_String_const_iterator"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_String_const_iterator"*, align 8
  store %"class.std::_String_const_iterator"* %this, %"class.std::_String_const_iterator"** %this.addr, align 8
  %this1 = load %"class.std::_String_const_iterator"*, %"class.std::_String_const_iterator"** %this.addr, align 8
  %_Ptr = getelementptr inbounds %"class.std::_String_const_iterator", %"class.std::_String_const_iterator"* %this1, i32 0, i32 0
  %0 = load i8*, i8** %_Ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %_Ptr, align 8
  ret %"class.std::_String_const_iterator"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) i8* @"??D?$_String_const_iterator@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@QEBAAEBDXZ"(%"class.std::_String_const_iterator"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_String_const_iterator"*, align 8
  store %"class.std::_String_const_iterator"* %this, %"class.std::_String_const_iterator"** %this.addr, align 8
  %this1 = load %"class.std::_String_const_iterator"*, %"class.std::_String_const_iterator"** %this.addr, align 8
  %_Ptr = getelementptr inbounds %"class.std::_String_const_iterator", %"class.std::_String_const_iterator"* %this1, i32 0, i32 0
  %0 = load i8*, i8** %_Ptr, align 8
  ret i8* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::basic_ostream<char, std::char_traits<char>>::sentry"* @"??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z"(%"class.std::basic_ostream<char, std::char_traits<char>>::sentry"* returned %this, %"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %_Ostr) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %retval = alloca %"class.std::basic_ostream<char, std::char_traits<char>>::sentry"*, align 8
  %_Ostr.addr = alloca %"class.std::basic_ostream"*, align 8
  %this.addr = alloca %"class.std::basic_ostream<char, std::char_traits<char>>::sentry"*, align 8
  %_Tied = alloca %"class.std::basic_ostream"*, align 8
  store %"class.std::basic_ostream"* %_Ostr, %"class.std::basic_ostream"** %_Ostr.addr, align 8
  store %"class.std::basic_ostream<char, std::char_traits<char>>::sentry"* %this, %"class.std::basic_ostream<char, std::char_traits<char>>::sentry"** %this.addr, align 8
  %this1 = load %"class.std::basic_ostream<char, std::char_traits<char>>::sentry"*, %"class.std::basic_ostream<char, std::char_traits<char>>::sentry"** %this.addr, align 8
  store %"class.std::basic_ostream<char, std::char_traits<char>>::sentry"* %this1, %"class.std::basic_ostream<char, std::char_traits<char>>::sentry"** %retval, align 8
  %0 = bitcast %"class.std::basic_ostream<char, std::char_traits<char>>::sentry"* %this1 to %"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base"*
  %1 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %_Ostr.addr, align 8
  %call = call %"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base"* @"??0_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z"(%"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base"* %0, %"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1)
  %2 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %_Ostr.addr, align 8
  %3 = bitcast %"class.std::basic_ostream"* %2 to i8*
  %vbptr = getelementptr inbounds i8, i8* %3, i64 0
  %4 = bitcast i8* %vbptr to i32**
  %vbtable = load i32*, i32** %4, align 8
  %5 = getelementptr inbounds i32, i32* %vbtable, i32 1
  %vbase_offs = load i32, i32* %5, align 4
  %6 = sext i32 %vbase_offs to i64
  %7 = add nsw i64 0, %6
  %8 = bitcast %"class.std::basic_ostream"* %2 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %7
  %9 = bitcast i8* %add.ptr to %"class.std::ios_base"*
  %call2 = invoke zeroext i1 @"?good@ios_base@std@@QEBA_NXZ"(%"class.std::ios_base"* %9)
          to label %invoke.cont unwind label %ehcleanup

invoke.cont:                                      ; preds = %entry
  br i1 %call2, label %if.end, label %if.then

if.then:                                          ; preds = %invoke.cont
  %_Ok = getelementptr inbounds %"class.std::basic_ostream<char, std::char_traits<char>>::sentry", %"class.std::basic_ostream<char, std::char_traits<char>>::sentry"* %this1, i32 0, i32 1
  store i8 0, i8* %_Ok, align 8
  br label %return

if.end:                                           ; preds = %invoke.cont
  %10 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %_Ostr.addr, align 8
  %11 = bitcast %"class.std::basic_ostream"* %10 to i8*
  %vbptr3 = getelementptr inbounds i8, i8* %11, i64 0
  %12 = bitcast i8* %vbptr3 to i32**
  %vbtable4 = load i32*, i32** %12, align 8
  %13 = getelementptr inbounds i32, i32* %vbtable4, i32 1
  %vbase_offs5 = load i32, i32* %13, align 4
  %14 = sext i32 %vbase_offs5 to i64
  %15 = add nsw i64 0, %14
  %16 = bitcast %"class.std::basic_ostream"* %10 to i8*
  %add.ptr6 = getelementptr inbounds i8, i8* %16, i64 %15
  %17 = bitcast i8* %add.ptr6 to %"class.std::basic_ios"*
  %call8 = invoke %"class.std::basic_ostream"* @"?tie@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_ostream@DU?$char_traits@D@std@@@2@XZ"(%"class.std::basic_ios"* %17)
          to label %invoke.cont7 unwind label %ehcleanup

invoke.cont7:                                     ; preds = %if.end
  store %"class.std::basic_ostream"* %call8, %"class.std::basic_ostream"** %_Tied, align 8
  %18 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %_Tied, align 8
  %tobool = icmp ne %"class.std::basic_ostream"* %18, null
  br i1 %tobool, label %lor.lhs.false, label %if.then9

lor.lhs.false:                                    ; preds = %invoke.cont7
  %19 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %_Tied, align 8
  %20 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %_Ostr.addr, align 8
  %cmp = icmp eq %"class.std::basic_ostream"* %19, %20
  br i1 %cmp, label %if.then9, label %if.end11

if.then9:                                         ; preds = %lor.lhs.false, %invoke.cont7
  %_Ok10 = getelementptr inbounds %"class.std::basic_ostream<char, std::char_traits<char>>::sentry", %"class.std::basic_ostream<char, std::char_traits<char>>::sentry"* %this1, i32 0, i32 1
  store i8 1, i8* %_Ok10, align 8
  br label %return

if.end11:                                         ; preds = %lor.lhs.false
  %21 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %_Tied, align 8
  %call13 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @"?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ"(%"class.std::basic_ostream"* %21)
          to label %invoke.cont12 unwind label %ehcleanup

invoke.cont12:                                    ; preds = %if.end11
  %22 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %_Ostr.addr, align 8
  %23 = bitcast %"class.std::basic_ostream"* %22 to i8*
  %vbptr14 = getelementptr inbounds i8, i8* %23, i64 0
  %24 = bitcast i8* %vbptr14 to i32**
  %vbtable15 = load i32*, i32** %24, align 8
  %25 = getelementptr inbounds i32, i32* %vbtable15, i32 1
  %vbase_offs16 = load i32, i32* %25, align 4
  %26 = sext i32 %vbase_offs16 to i64
  %27 = add nsw i64 0, %26
  %28 = bitcast %"class.std::basic_ostream"* %22 to i8*
  %add.ptr17 = getelementptr inbounds i8, i8* %28, i64 %27
  %29 = bitcast i8* %add.ptr17 to %"class.std::ios_base"*
  %call19 = invoke zeroext i1 @"?good@ios_base@std@@QEBA_NXZ"(%"class.std::ios_base"* %29)
          to label %invoke.cont18 unwind label %ehcleanup

invoke.cont18:                                    ; preds = %invoke.cont12
  %_Ok20 = getelementptr inbounds %"class.std::basic_ostream<char, std::char_traits<char>>::sentry", %"class.std::basic_ostream<char, std::char_traits<char>>::sentry"* %this1, i32 0, i32 1
  %frombool = zext i1 %call19 to i8
  store i8 %frombool, i8* %_Ok20, align 8
  br label %return

return:                                           ; preds = %invoke.cont18, %if.then9, %if.then
  %30 = load %"class.std::basic_ostream<char, std::char_traits<char>>::sentry"*, %"class.std::basic_ostream<char, std::char_traits<char>>::sentry"** %retval, align 8
  ret %"class.std::basic_ostream<char, std::char_traits<char>>::sentry"* %30

ehcleanup:                                        ; preds = %invoke.cont12, %if.end11, %if.end, %entry
  %31 = cleanuppad within none []
  %32 = bitcast %"class.std::basic_ostream<char, std::char_traits<char>>::sentry"* %this1 to %"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base"*
  call void @"??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"(%"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base"* %32) #13 [ "funclet"(token %31) ]
  cleanupret from %31 unwind to caller
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @"??Bsentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEBA_NXZ"(%"class.std::basic_ostream<char, std::char_traits<char>>::sentry"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::basic_ostream<char, std::char_traits<char>>::sentry"*, align 8
  store %"class.std::basic_ostream<char, std::char_traits<char>>::sentry"* %this, %"class.std::basic_ostream<char, std::char_traits<char>>::sentry"** %this.addr, align 8
  %this1 = load %"class.std::basic_ostream<char, std::char_traits<char>>::sentry"*, %"class.std::basic_ostream<char, std::char_traits<char>>::sentry"** %this.addr, align 8
  %_Ok = getelementptr inbounds %"class.std::basic_ostream<char, std::char_traits<char>>::sentry", %"class.std::basic_ostream<char, std::char_traits<char>>::sentry"* %this1, i32 0, i32 1
  %0 = load i8, i8* %_Ok, align 8
  %tobool = trunc i8 %0 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @"?width@ios_base@std@@QEBA_JXZ"(%"class.std::ios_base"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base"*, align 8
  store %"class.std::ios_base"* %this, %"class.std::ios_base"** %this.addr, align 8
  %this1 = load %"class.std::ios_base"*, %"class.std::ios_base"** %this.addr, align 8
  %_Wide = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %this1, i32 0, i32 6
  %0 = load i64, i64* %_Wide, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @"?flags@ios_base@std@@QEBAHXZ"(%"class.std::ios_base"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base"*, align 8
  store %"class.std::ios_base"* %this, %"class.std::ios_base"** %this.addr, align 8
  %this1 = load %"class.std::ios_base"*, %"class.std::ios_base"** %this.addr, align 8
  %_Fmtfl = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %this1, i32 0, i32 4
  %0 = load i32, i32* %_Fmtfl, align 8
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @"?eq_int_type@?$_Narrow_char_traits@DH@std@@SA_NAEBH0@Z"(i32* nonnull align 4 dereferenceable(4) %_Left, i32* nonnull align 4 dereferenceable(4) %_Right) #2 comdat align 2 {
entry:
  %_Right.addr = alloca i32*, align 8
  %_Left.addr = alloca i32*, align 8
  store i32* %_Right, i32** %_Right.addr, align 8
  store i32* %_Left, i32** %_Left.addr, align 8
  %0 = load i32*, i32** %_Left.addr, align 8
  %1 = load i32, i32* %0, align 4
  %2 = load i32*, i32** %_Right.addr, align 8
  %3 = load i32, i32* %2, align 4
  %cmp = icmp eq i32 %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::basic_streambuf"* @"?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ"(%"class.std::basic_ios"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::basic_ios"*, align 8
  store %"class.std::basic_ios"* %this, %"class.std::basic_ios"** %this.addr, align 8
  %this1 = load %"class.std::basic_ios"*, %"class.std::basic_ios"** %this.addr, align 8
  %_Mystrbuf = getelementptr inbounds %"class.std::basic_ios", %"class.std::basic_ios"* %this1, i32 0, i32 1
  %0 = load %"class.std::basic_streambuf"*, %"class.std::basic_streambuf"** %_Mystrbuf, align 8
  ret %"class.std::basic_streambuf"* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32 @"?sputc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHD@Z"(%"class.std::basic_streambuf"* %this, i8 %_Ch) #1 comdat align 2 {
entry:
  %_Ch.addr = alloca i8, align 1
  %this.addr = alloca %"class.std::basic_streambuf"*, align 8
  store i8 %_Ch, i8* %_Ch.addr, align 1
  store %"class.std::basic_streambuf"* %this, %"class.std::basic_streambuf"** %this.addr, align 8
  %this1 = load %"class.std::basic_streambuf"*, %"class.std::basic_streambuf"** %this.addr, align 8
  %call = call i64 @"?_Pnavail@?$basic_streambuf@DU?$char_traits@D@std@@@std@@IEBA_JXZ"(%"class.std::basic_streambuf"* %this1)
  %cmp = icmp slt i64 0, %call
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %0 = load i8, i8* %_Ch.addr, align 1
  %call2 = call i8* @"?_Pninc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@IEAAPEADXZ"(%"class.std::basic_streambuf"* %this1)
  store i8 %0, i8* %call2, align 1
  %call3 = call i32 @"?to_int_type@?$_Narrow_char_traits@DH@std@@SAHAEBD@Z"(i8* nonnull align 1 dereferenceable(1) %call2) #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call4 = call i32 @"?to_int_type@?$_Narrow_char_traits@DH@std@@SAHAEBD@Z"(i8* nonnull align 1 dereferenceable(1) %_Ch.addr) #13
  %1 = bitcast %"class.std::basic_streambuf"* %this1 to i32 (%"class.std::basic_streambuf"*, i32)***
  %vtable = load i32 (%"class.std::basic_streambuf"*, i32)**, i32 (%"class.std::basic_streambuf"*, i32)*** %1, align 8
  %vfn = getelementptr inbounds i32 (%"class.std::basic_streambuf"*, i32)*, i32 (%"class.std::basic_streambuf"*, i32)** %vtable, i64 3
  %2 = load i32 (%"class.std::basic_streambuf"*, i32)*, i32 (%"class.std::basic_streambuf"*, i32)** %vfn, align 8
  %call5 = call i32 %2(%"class.std::basic_streambuf"* %this1, i32 %call4)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call3, %cond.true ], [ %call5, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8 @"?fill@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBADXZ"(%"class.std::basic_ios"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::basic_ios"*, align 8
  store %"class.std::basic_ios"* %this, %"class.std::basic_ios"** %this.addr, align 8
  %this1 = load %"class.std::basic_ios"*, %"class.std::basic_ios"** %this.addr, align 8
  %_Fillch = getelementptr inbounds %"class.std::basic_ios", %"class.std::basic_ios"* %this1, i32 0, i32 3
  %0 = load i8, i8* %_Fillch, align 8
  ret i8 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @"?eof@?$_Narrow_char_traits@DH@std@@SAHXZ"() #2 comdat align 2 {
entry:
  ret i32 -1
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @"?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z"(%"class.std::basic_ios"* %this, i32 %_State, i1 zeroext %_Reraise) #1 comdat align 2 {
entry:
  %_Reraise.addr = alloca i8, align 1
  %_State.addr = alloca i32, align 4
  %this.addr = alloca %"class.std::basic_ios"*, align 8
  %frombool = zext i1 %_Reraise to i8
  store i8 %frombool, i8* %_Reraise.addr, align 1
  store i32 %_State, i32* %_State.addr, align 4
  store %"class.std::basic_ios"* %this, %"class.std::basic_ios"** %this.addr, align 8
  %this1 = load %"class.std::basic_ios"*, %"class.std::basic_ios"** %this.addr, align 8
  %0 = load i8, i8* %_Reraise.addr, align 1
  %tobool = trunc i8 %0 to i1
  %1 = bitcast %"class.std::basic_ios"* %this1 to %"class.std::ios_base"*
  %call = call i32 @"?rdstate@ios_base@std@@QEBAHXZ"(%"class.std::ios_base"* %1)
  %2 = load i32, i32* %_State.addr, align 4
  %or = or i32 %call, %2
  call void @"?clear@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z"(%"class.std::basic_ios"* %this1, i32 %or, i1 zeroext %tobool)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @"?width@ios_base@std@@QEAA_J_J@Z"(%"class.std::ios_base"* %this, i64 %_Newwidth) #2 comdat align 2 {
entry:
  %_Newwidth.addr = alloca i64, align 8
  %this.addr = alloca %"class.std::ios_base"*, align 8
  %_Oldwidth = alloca i64, align 8
  store i64 %_Newwidth, i64* %_Newwidth.addr, align 8
  store %"class.std::ios_base"* %this, %"class.std::ios_base"** %this.addr, align 8
  %this1 = load %"class.std::ios_base"*, %"class.std::ios_base"** %this.addr, align 8
  %_Wide = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %this1, i32 0, i32 6
  %0 = load i64, i64* %_Wide, align 8
  store i64 %0, i64* %_Oldwidth, align 8
  %1 = load i64, i64* %_Newwidth.addr, align 8
  %_Wide2 = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %this1, i32 0, i32 6
  store i64 %1, i64* %_Wide2, align 8
  %2 = load i64, i64* %_Oldwidth, align 8
  ret i64 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"(%"class.std::basic_ostream<char, std::char_traits<char>>::sentry"* %this) unnamed_addr #2 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %this.addr = alloca %"class.std::basic_ostream<char, std::char_traits<char>>::sentry"*, align 8
  %_Zero_uncaught_exceptions = alloca i8, align 1
  store %"class.std::basic_ostream<char, std::char_traits<char>>::sentry"* %this, %"class.std::basic_ostream<char, std::char_traits<char>>::sentry"** %this.addr, align 8
  %this1 = load %"class.std::basic_ostream<char, std::char_traits<char>>::sentry"*, %"class.std::basic_ostream<char, std::char_traits<char>>::sentry"** %this.addr, align 8
  %call = call zeroext i1 @"?uncaught_exception@std@@YA_NXZ"() #13
  %lnot = xor i1 %call, true
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, i8* %_Zero_uncaught_exceptions, align 1
  %0 = load i8, i8* %_Zero_uncaught_exceptions, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast %"class.std::basic_ostream<char, std::char_traits<char>>::sentry"* %this1 to %"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base"*
  %_Myostr = getelementptr inbounds %"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base", %"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base"* %1, i32 0, i32 0
  %2 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %_Myostr, align 8
  invoke void @"?_Osfx@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAXXZ"(%"class.std::basic_ostream"* %2)
          to label %invoke.cont unwind label %ehcleanup

invoke.cont:                                      ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %invoke.cont, %entry
  %3 = bitcast %"class.std::basic_ostream<char, std::char_traits<char>>::sentry"* %this1 to %"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base"*
  call void @"??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"(%"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base"* %3) #13
  ret void

ehcleanup:                                        ; preds = %if.then
  %4 = cleanuppad within none []
  %5 = bitcast %"class.std::basic_ostream<char, std::char_traits<char>>::sentry"* %this1 to %"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base"*
  call void @"??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"(%"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base"* %5) #13 [ "funclet"(token %4) ]
  cleanupret from %4 unwind label %terminate

terminate:                                        ; preds = %ehcleanup
  %6 = cleanuppad within none []
  call void @__std_terminate() #14 [ "funclet"(token %6) ]
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base"* @"??0_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z"(%"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base"* returned %this, %"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %_Ostr) unnamed_addr #1 comdat align 2 {
entry:
  %retval = alloca %"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base"*, align 8
  %_Ostr.addr = alloca %"class.std::basic_ostream"*, align 8
  %this.addr = alloca %"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base"*, align 8
  %_Rdbuf = alloca %"class.std::basic_streambuf"*, align 8
  store %"class.std::basic_ostream"* %_Ostr, %"class.std::basic_ostream"** %_Ostr.addr, align 8
  store %"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base"* %this, %"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base"** %this.addr, align 8
  %this1 = load %"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base"*, %"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base"** %this.addr, align 8
  store %"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base"* %this1, %"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base"** %retval, align 8
  %_Myostr = getelementptr inbounds %"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base", %"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base"* %this1, i32 0, i32 0
  %0 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %_Ostr.addr, align 8
  store %"class.std::basic_ostream"* %0, %"class.std::basic_ostream"** %_Myostr, align 8
  %_Myostr2 = getelementptr inbounds %"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base", %"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base"* %this1, i32 0, i32 0
  %1 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %_Myostr2, align 8
  %2 = bitcast %"class.std::basic_ostream"* %1 to i8*
  %vbptr = getelementptr inbounds i8, i8* %2, i64 0
  %3 = bitcast i8* %vbptr to i32**
  %vbtable = load i32*, i32** %3, align 8
  %4 = getelementptr inbounds i32, i32* %vbtable, i32 1
  %vbase_offs = load i32, i32* %4, align 4
  %5 = sext i32 %vbase_offs to i64
  %6 = add nsw i64 0, %5
  %7 = bitcast %"class.std::basic_ostream"* %1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %6
  %8 = bitcast i8* %add.ptr to %"class.std::basic_ios"*
  %call = call %"class.std::basic_streambuf"* @"?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ"(%"class.std::basic_ios"* %8)
  store %"class.std::basic_streambuf"* %call, %"class.std::basic_streambuf"** %_Rdbuf, align 8
  %9 = load %"class.std::basic_streambuf"*, %"class.std::basic_streambuf"** %_Rdbuf, align 8
  %tobool = icmp ne %"class.std::basic_streambuf"* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %"class.std::basic_streambuf"*, %"class.std::basic_streambuf"** %_Rdbuf, align 8
  %11 = bitcast %"class.std::basic_streambuf"* %10 to void (%"class.std::basic_streambuf"*)***
  %vtable = load void (%"class.std::basic_streambuf"*)**, void (%"class.std::basic_streambuf"*)*** %11, align 8
  %vfn = getelementptr inbounds void (%"class.std::basic_streambuf"*)*, void (%"class.std::basic_streambuf"*)** %vtable, i64 1
  %12 = load void (%"class.std::basic_streambuf"*)*, void (%"class.std::basic_streambuf"*)** %vfn, align 8
  call void %12(%"class.std::basic_streambuf"* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base"*, %"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base"** %retval, align 8
  ret %"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base"* %13
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local zeroext i1 @"?good@ios_base@std@@QEBA_NXZ"(%"class.std::ios_base"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base"*, align 8
  store %"class.std::ios_base"* %this, %"class.std::ios_base"** %this.addr, align 8
  %this1 = load %"class.std::ios_base"*, %"class.std::ios_base"** %this.addr, align 8
  %call = call i32 @"?rdstate@ios_base@std@@QEBAHXZ"(%"class.std::ios_base"* %this1)
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::basic_ostream"* @"?tie@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_ostream@DU?$char_traits@D@std@@@2@XZ"(%"class.std::basic_ios"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::basic_ios"*, align 8
  store %"class.std::basic_ios"* %this, %"class.std::basic_ios"** %this.addr, align 8
  %this1 = load %"class.std::basic_ios"*, %"class.std::basic_ios"** %this.addr, align 8
  %_Tiestr = getelementptr inbounds %"class.std::basic_ios", %"class.std::basic_ios"* %this1, i32 0, i32 2
  %0 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %_Tiestr, align 8
  ret %"class.std::basic_ostream"* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @"?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ"(%"class.std::basic_ostream"* %this) #1 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %this.addr = alloca %"class.std::basic_ostream"*, align 8
  %_Rdbuf = alloca %"class.std::basic_streambuf"*, align 8
  %_Ok = alloca %"class.std::basic_ostream<char, std::char_traits<char>>::sentry", align 8
  store %"class.std::basic_ostream"* %this, %"class.std::basic_ostream"** %this.addr, align 8
  %this1 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %this.addr, align 8
  %0 = bitcast %"class.std::basic_ostream"* %this1 to i8*
  %vbptr = getelementptr inbounds i8, i8* %0, i64 0
  %1 = bitcast i8* %vbptr to i32**
  %vbtable = load i32*, i32** %1, align 8
  %2 = getelementptr inbounds i32, i32* %vbtable, i32 1
  %vbase_offs = load i32, i32* %2, align 4
  %3 = sext i32 %vbase_offs to i64
  %4 = add nsw i64 0, %3
  %5 = bitcast %"class.std::basic_ostream"* %this1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %4
  %6 = bitcast i8* %add.ptr to %"class.std::basic_ios"*
  %call = call %"class.std::basic_streambuf"* @"?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ"(%"class.std::basic_ios"* %6)
  store %"class.std::basic_streambuf"* %call, %"class.std::basic_streambuf"** %_Rdbuf, align 8
  %7 = load %"class.std::basic_streambuf"*, %"class.std::basic_streambuf"** %_Rdbuf, align 8
  %tobool = icmp ne %"class.std::basic_streambuf"* %7, null
  br i1 %tobool, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %call2 = call %"class.std::basic_ostream<char, std::char_traits<char>>::sentry"* @"??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z"(%"class.std::basic_ostream<char, std::char_traits<char>>::sentry"* %_Ok, %"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %this1)
  %call3 = invoke zeroext i1 @"??Bsentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEBA_NXZ"(%"class.std::basic_ostream<char, std::char_traits<char>>::sentry"* %_Ok)
          to label %invoke.cont unwind label %ehcleanup

invoke.cont:                                      ; preds = %if.then
  br i1 %call3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %invoke.cont
  %8 = load %"class.std::basic_streambuf"*, %"class.std::basic_streambuf"** %_Rdbuf, align 8
  %call5 = invoke i32 @"?pubsync@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHXZ"(%"class.std::basic_streambuf"* %8)
          to label %invoke.cont4 unwind label %ehcleanup

invoke.cont4:                                     ; preds = %land.lhs.true
  %cmp = icmp eq i32 %call5, -1
  br i1 %cmp, label %if.then6, label %if.end

if.then6:                                         ; preds = %invoke.cont4
  %9 = bitcast %"class.std::basic_ostream"* %this1 to i8*
  %vbptr7 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = bitcast i8* %vbptr7 to i32**
  %vbtable8 = load i32*, i32** %10, align 8
  %11 = getelementptr inbounds i32, i32* %vbtable8, i32 1
  %vbase_offs9 = load i32, i32* %11, align 4
  %12 = sext i32 %vbase_offs9 to i64
  %13 = add nsw i64 0, %12
  %14 = bitcast %"class.std::basic_ostream"* %this1 to i8*
  %add.ptr10 = getelementptr inbounds i8, i8* %14, i64 %13
  %15 = bitcast i8* %add.ptr10 to %"class.std::basic_ios"*
  invoke void @"?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z"(%"class.std::basic_ios"* %15, i32 4, i1 zeroext false)
          to label %invoke.cont11 unwind label %ehcleanup

invoke.cont11:                                    ; preds = %if.then6
  br label %if.end

if.end:                                           ; preds = %invoke.cont11, %invoke.cont4, %invoke.cont
  call void @"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"(%"class.std::basic_ostream<char, std::char_traits<char>>::sentry"* %_Ok) #13
  br label %if.end12

ehcleanup:                                        ; preds = %if.then6, %land.lhs.true, %if.then
  %16 = cleanuppad within none []
  call void @"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"(%"class.std::basic_ostream<char, std::char_traits<char>>::sentry"* %_Ok) #13 [ "funclet"(token %16) ]
  cleanupret from %16 unwind to caller

if.end12:                                         ; preds = %if.end, %entry
  ret %"class.std::basic_ostream"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"(%"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base"* %this) unnamed_addr #2 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %this.addr = alloca %"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base"*, align 8
  %_Rdbuf = alloca %"class.std::basic_streambuf"*, align 8
  store %"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base"* %this, %"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base"** %this.addr, align 8
  %this1 = load %"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base"*, %"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base"** %this.addr, align 8
  %_Myostr = getelementptr inbounds %"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base", %"class.std::basic_ostream<char, std::char_traits<char>>::_Sentry_base"* %this1, i32 0, i32 0
  %0 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %_Myostr, align 8
  %1 = bitcast %"class.std::basic_ostream"* %0 to i8*
  %vbptr = getelementptr inbounds i8, i8* %1, i64 0
  %2 = bitcast i8* %vbptr to i32**
  %vbtable = load i32*, i32** %2, align 8
  %3 = getelementptr inbounds i32, i32* %vbtable, i32 1
  %vbase_offs = load i32, i32* %3, align 4
  %4 = sext i32 %vbase_offs to i64
  %5 = add nsw i64 0, %4
  %6 = bitcast %"class.std::basic_ostream"* %0 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %5
  %7 = bitcast i8* %add.ptr to %"class.std::basic_ios"*
  %call = invoke %"class.std::basic_streambuf"* @"?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ"(%"class.std::basic_ios"* %7)
          to label %invoke.cont unwind label %terminate

invoke.cont:                                      ; preds = %entry
  store %"class.std::basic_streambuf"* %call, %"class.std::basic_streambuf"** %_Rdbuf, align 8
  %8 = load %"class.std::basic_streambuf"*, %"class.std::basic_streambuf"** %_Rdbuf, align 8
  %tobool = icmp ne %"class.std::basic_streambuf"* %8, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont
  %9 = load %"class.std::basic_streambuf"*, %"class.std::basic_streambuf"** %_Rdbuf, align 8
  %10 = bitcast %"class.std::basic_streambuf"* %9 to void (%"class.std::basic_streambuf"*)***
  %vtable = load void (%"class.std::basic_streambuf"*)**, void (%"class.std::basic_streambuf"*)*** %10, align 8
  %vfn = getelementptr inbounds void (%"class.std::basic_streambuf"*)*, void (%"class.std::basic_streambuf"*)** %vtable, i64 2
  %11 = load void (%"class.std::basic_streambuf"*)*, void (%"class.std::basic_streambuf"*)** %vfn, align 8
  invoke void %11(%"class.std::basic_streambuf"* %9)
          to label %invoke.cont2 unwind label %terminate

invoke.cont2:                                     ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %invoke.cont2, %invoke.cont
  ret void

terminate:                                        ; preds = %if.then, %entry
  %12 = cleanuppad within none []
  call void @__std_terminate() #14 [ "funclet"(token %12) ]
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @"?rdstate@ios_base@std@@QEBAHXZ"(%"class.std::ios_base"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base"*, align 8
  store %"class.std::ios_base"* %this, %"class.std::ios_base"** %this.addr, align 8
  %this1 = load %"class.std::ios_base"*, %"class.std::ios_base"** %this.addr, align 8
  %_Mystate = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %this1, i32 0, i32 2
  %0 = load i32, i32* %_Mystate, align 8
  ret i32 %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32 @"?pubsync@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHXZ"(%"class.std::basic_streambuf"* %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::basic_streambuf"*, align 8
  store %"class.std::basic_streambuf"* %this, %"class.std::basic_streambuf"** %this.addr, align 8
  %this1 = load %"class.std::basic_streambuf"*, %"class.std::basic_streambuf"** %this.addr, align 8
  %0 = bitcast %"class.std::basic_streambuf"* %this1 to i32 (%"class.std::basic_streambuf"*)***
  %vtable = load i32 (%"class.std::basic_streambuf"*)**, i32 (%"class.std::basic_streambuf"*)*** %0, align 8
  %vfn = getelementptr inbounds i32 (%"class.std::basic_streambuf"*)*, i32 (%"class.std::basic_streambuf"*)** %vtable, i64 13
  %1 = load i32 (%"class.std::basic_streambuf"*)*, i32 (%"class.std::basic_streambuf"*)** %vfn, align 8
  %call = call i32 %1(%"class.std::basic_streambuf"* %this1)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @"?_Pnavail@?$basic_streambuf@DU?$char_traits@D@std@@@std@@IEBA_JXZ"(%"class.std::basic_streambuf"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::basic_streambuf"*, align 8
  store %"class.std::basic_streambuf"* %this, %"class.std::basic_streambuf"** %this.addr, align 8
  %this1 = load %"class.std::basic_streambuf"*, %"class.std::basic_streambuf"** %this.addr, align 8
  %_IPnext = getelementptr inbounds %"class.std::basic_streambuf", %"class.std::basic_streambuf"* %this1, i32 0, i32 8
  %0 = load i8**, i8*** %_IPnext, align 8
  %1 = load i8*, i8** %0, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_IPcount = getelementptr inbounds %"class.std::basic_streambuf", %"class.std::basic_streambuf"* %this1, i32 0, i32 12
  %2 = load i32*, i32** %_IPcount, align 8
  %3 = load i32, i32* %2, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ 0, %cond.false ]
  %conv = sext i32 %cond to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @"?to_int_type@?$_Narrow_char_traits@DH@std@@SAHAEBD@Z"(i8* nonnull align 1 dereferenceable(1) %_Ch) #2 comdat align 2 {
entry:
  %_Ch.addr = alloca i8*, align 8
  store i8* %_Ch, i8** %_Ch.addr, align 8
  %0 = load i8*, i8** %_Ch.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"?_Pninc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@IEAAPEADXZ"(%"class.std::basic_streambuf"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::basic_streambuf"*, align 8
  store %"class.std::basic_streambuf"* %this, %"class.std::basic_streambuf"** %this.addr, align 8
  %this1 = load %"class.std::basic_streambuf"*, %"class.std::basic_streambuf"** %this.addr, align 8
  %_IPcount = getelementptr inbounds %"class.std::basic_streambuf", %"class.std::basic_streambuf"* %this1, i32 0, i32 12
  %0 = load i32*, i32** %_IPcount, align 8
  %1 = load i32, i32* %0, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %0, align 4
  %_IPnext = getelementptr inbounds %"class.std::basic_streambuf", %"class.std::basic_streambuf"* %this1, i32 0, i32 8
  %2 = load i8**, i8*** %_IPnext, align 8
  %3 = load i8*, i8** %2, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %2, align 8
  ret i8* %3
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @"?clear@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z"(%"class.std::basic_ios"* %this, i32 %_State, i1 zeroext %_Reraise) #1 comdat align 2 {
entry:
  %_Reraise.addr = alloca i8, align 1
  %_State.addr = alloca i32, align 4
  %this.addr = alloca %"class.std::basic_ios"*, align 8
  %frombool = zext i1 %_Reraise to i8
  store i8 %frombool, i8* %_Reraise.addr, align 1
  store i32 %_State, i32* %_State.addr, align 4
  store %"class.std::basic_ios"* %this, %"class.std::basic_ios"** %this.addr, align 8
  %this1 = load %"class.std::basic_ios"*, %"class.std::basic_ios"** %this.addr, align 8
  %0 = bitcast %"class.std::basic_ios"* %this1 to %"class.std::ios_base"*
  %1 = load i8, i8* %_Reraise.addr, align 1
  %tobool = trunc i8 %1 to i1
  %2 = load i32, i32* %_State.addr, align 4
  %_Mystrbuf = getelementptr inbounds %"class.std::basic_ios", %"class.std::basic_ios"* %this1, i32 0, i32 1
  %3 = load %"class.std::basic_streambuf"*, %"class.std::basic_streambuf"** %_Mystrbuf, align 8
  %tobool2 = icmp ne %"class.std::basic_streambuf"* %3, null
  %4 = zext i1 %tobool2 to i64
  %cond = select i1 %tobool2, i32 0, i32 4
  %or = or i32 %2, %cond
  call void @"?clear@ios_base@std@@QEAAXH_N@Z"(%"class.std::ios_base"* %0, i32 %or, i1 zeroext %tobool)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @"?clear@ios_base@std@@QEAAXH_N@Z"(%"class.std::ios_base"* %this, i32 %_State, i1 zeroext %_Reraise) #1 comdat align 2 {
entry:
  %_Reraise.addr = alloca i8, align 1
  %_State.addr = alloca i32, align 4
  %this.addr = alloca %"class.std::ios_base"*, align 8
  %_Filtered = alloca i32, align 4
  %_Msg = alloca i8*, align 8
  %tmp = alloca %"class.std::ios_base::failure", align 8
  %ref.tmp = alloca %"class.std::error_code", align 8
  %frombool = zext i1 %_Reraise to i8
  store i8 %frombool, i8* %_Reraise.addr, align 1
  store i32 %_State, i32* %_State.addr, align 4
  store %"class.std::ios_base"* %this, %"class.std::ios_base"** %this.addr, align 8
  %this1 = load %"class.std::ios_base"*, %"class.std::ios_base"** %this.addr, align 8
  %0 = load i32, i32* %_State.addr, align 4
  %and = and i32 %0, 23
  store i32 %and, i32* %_State.addr, align 4
  %1 = load i32, i32* %_State.addr, align 4
  %_Mystate = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %this1, i32 0, i32 2
  store i32 %1, i32* %_Mystate, align 8
  %2 = load i32, i32* %_State.addr, align 4
  %_Except = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %this1, i32 0, i32 3
  %3 = load i32, i32* %_Except, align 4
  %and2 = and i32 %2, %3
  store i32 %and2, i32* %_Filtered, align 4
  %4 = load i32, i32* %_Filtered, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %5 = load i8, i8* %_Reraise.addr, align 1
  %tobool3 = trunc i8 %5 to i1
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  call void @_CxxThrowException(i8* null, %eh.ThrowInfo* null) #15
  unreachable

if.end:                                           ; preds = %if.then
  %6 = load i32, i32* %_Filtered, align 4
  %and5 = and i32 %6, 4
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@PHHKMMFD@ios_base?3?3badbit?5set?$AA@", i64 0, i64 0), i8** %_Msg, align 8
  br label %if.end13

if.else:                                          ; preds = %if.end
  %7 = load i32, i32* %_Filtered, align 4
  %and8 = and i32 %7, 2
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"??_C@_0BG@FMKFHCIL@ios_base?3?3failbit?5set?$AA@", i64 0, i64 0), i8** %_Msg, align 8
  br label %if.end12

if.else11:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"??_C@_0BF@OOHOMBOF@ios_base?3?3eofbit?5set?$AA@", i64 0, i64 0), i8** %_Msg, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %if.then10
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then7
  call void @"?make_error_code@std@@YA?AVerror_code@1@W4io_errc@1@@Z"(%"class.std::error_code"* sret align 8 %ref.tmp, i32 1) #13
  %8 = load i8*, i8** %_Msg, align 8
  %call = call %"class.std::ios_base::failure"* @"??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z"(%"class.std::ios_base::failure"* %tmp, i8* %8, %"class.std::error_code"* nonnull align 8 dereferenceable(16) %ref.tmp)
  %9 = bitcast %"class.std::ios_base::failure"* %tmp to i8*
  call void @_CxxThrowException(i8* %9, %eh.ThrowInfo* @"_TI5?AVfailure@ios_base@std@@") #15
  unreachable

if.end14:                                         ; preds = %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?make_error_code@std@@YA?AVerror_code@1@W4io_errc@1@@Z"(%"class.std::error_code"* noalias sret align 8 %agg.result, i32 %_Errno) #2 comdat {
entry:
  %result.ptr = alloca i8*, align 8
  %_Errno.addr = alloca i32, align 4
  %0 = bitcast %"class.std::error_code"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store i32 %_Errno, i32* %_Errno.addr, align 4
  %call = call nonnull align 8 dereferenceable(16) %"class.std::error_category"* @"?iostream_category@std@@YAAEBVerror_category@1@XZ"() #13
  %1 = load i32, i32* %_Errno.addr, align 4
  %call1 = call %"class.std::error_code"* @"??0error_code@std@@QEAA@HAEBVerror_category@1@@Z"(%"class.std::error_code"* %agg.result, i32 %1, %"class.std::error_category"* nonnull align 8 dereferenceable(16) %call) #13
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::ios_base::failure"* @"??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z"(%"class.std::ios_base::failure"* returned %this, i8* %_Message, %"class.std::error_code"* nonnull align 8 dereferenceable(16) %_Errcode) unnamed_addr #1 comdat align 2 {
entry:
  %_Errcode.addr = alloca %"class.std::error_code"*, align 8
  %_Message.addr = alloca i8*, align 8
  %this.addr = alloca %"class.std::ios_base::failure"*, align 8
  %agg.tmp = alloca %"class.std::error_code", align 8
  store %"class.std::error_code"* %_Errcode, %"class.std::error_code"** %_Errcode.addr, align 8
  store i8* %_Message, i8** %_Message.addr, align 8
  store %"class.std::ios_base::failure"* %this, %"class.std::ios_base::failure"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::failure"*, %"class.std::ios_base::failure"** %this.addr, align 8
  %0 = bitcast %"class.std::ios_base::failure"* %this1 to %"class.std::system_error"*
  %1 = load i8*, i8** %_Message.addr, align 8
  %2 = load %"class.std::error_code"*, %"class.std::error_code"** %_Errcode.addr, align 8
  %3 = bitcast %"class.std::error_code"* %agg.tmp to i8*
  %4 = bitcast %"class.std::error_code"* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 16, i1 false)
  %call = call %"class.std::system_error"* @"??0system_error@std@@QEAA@Verror_code@1@PEBD@Z"(%"class.std::system_error"* %0, %"class.std::error_code"* %agg.tmp, i8* %1)
  %5 = bitcast %"class.std::ios_base::failure"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** @"??_7failure@ios_base@std@@6B@" to i32 (...)**), i32 (...)*** %5, align 8
  ret %"class.std::ios_base::failure"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::ios_base::failure"* @"??0failure@ios_base@std@@QEAA@AEBV012@@Z"(%"class.std::ios_base::failure"* returned %this, %"class.std::ios_base::failure"* nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
entry:
  %.addr = alloca %"class.std::ios_base::failure"*, align 8
  %this.addr = alloca %"class.std::ios_base::failure"*, align 8
  store %"class.std::ios_base::failure"* %0, %"class.std::ios_base::failure"** %.addr, align 8
  store %"class.std::ios_base::failure"* %this, %"class.std::ios_base::failure"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::failure"*, %"class.std::ios_base::failure"** %this.addr, align 8
  %1 = bitcast %"class.std::ios_base::failure"* %this1 to %"class.std::system_error"*
  %2 = load %"class.std::ios_base::failure"*, %"class.std::ios_base::failure"** %.addr, align 8
  %3 = bitcast %"class.std::ios_base::failure"* %2 to %"class.std::system_error"*
  %call = call %"class.std::system_error"* @"??0system_error@std@@QEAA@AEBV01@@Z"(%"class.std::system_error"* %1, %"class.std::system_error"* nonnull align 8 dereferenceable(40) %3) #13
  %4 = bitcast %"class.std::ios_base::failure"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** @"??_7failure@ios_base@std@@6B@" to i32 (...)**), i32 (...)*** %4, align 8
  ret %"class.std::ios_base::failure"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::system_error"* @"??0system_error@std@@QEAA@AEBV01@@Z"(%"class.std::system_error"* returned %this, %"class.std::system_error"* nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
entry:
  %.addr = alloca %"class.std::system_error"*, align 8
  %this.addr = alloca %"class.std::system_error"*, align 8
  store %"class.std::system_error"* %0, %"class.std::system_error"** %.addr, align 8
  store %"class.std::system_error"* %this, %"class.std::system_error"** %this.addr, align 8
  %this1 = load %"class.std::system_error"*, %"class.std::system_error"** %this.addr, align 8
  %1 = bitcast %"class.std::system_error"* %this1 to %"class.std::_System_error"*
  %2 = load %"class.std::system_error"*, %"class.std::system_error"** %.addr, align 8
  %3 = bitcast %"class.std::system_error"* %2 to %"class.std::_System_error"*
  %call = call %"class.std::_System_error"* @"??0_System_error@std@@QEAA@AEBV01@@Z"(%"class.std::_System_error"* %1, %"class.std::_System_error"* nonnull align 8 dereferenceable(40) %3) #13
  %4 = bitcast %"class.std::system_error"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** @"??_7system_error@std@@6B@" to i32 (...)**), i32 (...)*** %4, align 8
  ret %"class.std::system_error"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::_System_error"* @"??0_System_error@std@@QEAA@AEBV01@@Z"(%"class.std::_System_error"* returned %this, %"class.std::_System_error"* nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
entry:
  %.addr = alloca %"class.std::_System_error"*, align 8
  %this.addr = alloca %"class.std::_System_error"*, align 8
  store %"class.std::_System_error"* %0, %"class.std::_System_error"** %.addr, align 8
  store %"class.std::_System_error"* %this, %"class.std::_System_error"** %this.addr, align 8
  %this1 = load %"class.std::_System_error"*, %"class.std::_System_error"** %this.addr, align 8
  %1 = bitcast %"class.std::_System_error"* %this1 to %"class.std::runtime_error"*
  %2 = load %"class.std::_System_error"*, %"class.std::_System_error"** %.addr, align 8
  %3 = bitcast %"class.std::_System_error"* %2 to %"class.std::runtime_error"*
  %call = call %"class.std::runtime_error"* @"??0runtime_error@std@@QEAA@AEBV01@@Z"(%"class.std::runtime_error"* %1, %"class.std::runtime_error"* nonnull align 8 dereferenceable(24) %3) #13
  %4 = bitcast %"class.std::_System_error"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** @"??_7_System_error@std@@6B@" to i32 (...)**), i32 (...)*** %4, align 8
  %_Mycode = getelementptr inbounds %"class.std::_System_error", %"class.std::_System_error"* %this1, i32 0, i32 1
  %5 = load %"class.std::_System_error"*, %"class.std::_System_error"** %.addr, align 8
  %_Mycode2 = getelementptr inbounds %"class.std::_System_error", %"class.std::_System_error"* %5, i32 0, i32 1
  %6 = bitcast %"class.std::error_code"* %_Mycode to i8*
  %7 = bitcast %"class.std::error_code"* %_Mycode2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 16, i1 false)
  ret %"class.std::_System_error"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::runtime_error"* @"??0runtime_error@std@@QEAA@AEBV01@@Z"(%"class.std::runtime_error"* returned %this, %"class.std::runtime_error"* nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
entry:
  %.addr = alloca %"class.std::runtime_error"*, align 8
  %this.addr = alloca %"class.std::runtime_error"*, align 8
  store %"class.std::runtime_error"* %0, %"class.std::runtime_error"** %.addr, align 8
  store %"class.std::runtime_error"* %this, %"class.std::runtime_error"** %this.addr, align 8
  %this1 = load %"class.std::runtime_error"*, %"class.std::runtime_error"** %this.addr, align 8
  %1 = bitcast %"class.std::runtime_error"* %this1 to %"class.std::exception"*
  %2 = load %"class.std::runtime_error"*, %"class.std::runtime_error"** %.addr, align 8
  %3 = bitcast %"class.std::runtime_error"* %2 to %"class.std::exception"*
  %call = call %"class.std::exception"* @"??0exception@std@@QEAA@AEBV01@@Z"(%"class.std::exception"* %1, %"class.std::exception"* nonnull align 8 dereferenceable(24) %3) #13
  %4 = bitcast %"class.std::runtime_error"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** @"??_7runtime_error@std@@6B@" to i32 (...)**), i32 (...)*** %4, align 8
  ret %"class.std::runtime_error"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1failure@ios_base@std@@UEAA@XZ"(%"class.std::ios_base::failure"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ios_base::failure"*, align 8
  store %"class.std::ios_base::failure"* %this, %"class.std::ios_base::failure"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::failure"*, %"class.std::ios_base::failure"** %this.addr, align 8
  %0 = bitcast %"class.std::ios_base::failure"* %this1 to %"class.std::system_error"*
  call void @"??1system_error@std@@UEAA@XZ"(%"class.std::system_error"* %0) #13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(16) %"class.std::error_category"* @"?iostream_category@std@@YAAEBVerror_category@1@XZ"() #2 comdat personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %call = invoke nonnull align 8 dereferenceable(16) %"class.std::_Iostream_error_category"* @"??$_Immortalize@V_Iostream_error_category@std@@@std@@YAAEAV_Iostream_error_category@0@XZ"()
          to label %invoke.cont unwind label %terminate

invoke.cont:                                      ; preds = %entry
  %0 = bitcast %"class.std::_Iostream_error_category"* %call to %"class.std::error_category"*
  ret %"class.std::error_category"* %0

terminate:                                        ; preds = %entry
  %1 = cleanuppad within none []
  call void @__std_terminate() #14 [ "funclet"(token %1) ]
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::error_code"* @"??0error_code@std@@QEAA@HAEBVerror_category@1@@Z"(%"class.std::error_code"* returned %this, i32 %_Val, %"class.std::error_category"* nonnull align 8 dereferenceable(16) %_Cat) unnamed_addr #2 comdat align 2 {
entry:
  %_Cat.addr = alloca %"class.std::error_category"*, align 8
  %_Val.addr = alloca i32, align 4
  %this.addr = alloca %"class.std::error_code"*, align 8
  store %"class.std::error_category"* %_Cat, %"class.std::error_category"** %_Cat.addr, align 8
  store i32 %_Val, i32* %_Val.addr, align 4
  store %"class.std::error_code"* %this, %"class.std::error_code"** %this.addr, align 8
  %this1 = load %"class.std::error_code"*, %"class.std::error_code"** %this.addr, align 8
  %_Myval = getelementptr inbounds %"class.std::error_code", %"class.std::error_code"* %this1, i32 0, i32 0
  %0 = load i32, i32* %_Val.addr, align 4
  store i32 %0, i32* %_Myval, align 8
  %_Mycat = getelementptr inbounds %"class.std::error_code", %"class.std::error_code"* %this1, i32 0, i32 1
  %1 = load %"class.std::error_category"*, %"class.std::error_category"** %_Cat.addr, align 8
  store %"class.std::error_category"* %1, %"class.std::error_category"** %_Mycat, align 8
  ret %"class.std::error_code"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(16) %"class.std::_Iostream_error_category"* @"??$_Immortalize@V_Iostream_error_category@std@@@std@@YAAEAV_Iostream_error_category@0@XZ"() #2 comdat {
entry:
  %call = call i32 @"?_Execute_once@std@@YAHAEAUonce_flag@1@P6AHPEAX1PEAPEAX@Z1@Z"(%"struct.std::once_flag"* nonnull align 8 dereferenceable(8) bitcast (i8** @"?_Flag@?1???$_Immortalize@V_Iostream_error_category@std@@@std@@YAAEAV_Iostream_error_category@1@XZ@4PEAXEA" to %"struct.std::once_flag"*), i32 (i8*, i8*, i8**)* @"??$_Immortalize_impl@V_Iostream_error_category@std@@@std@@YAHPEAX0PEAPEAX@Z", i8* bitcast (%"union.std::_Align_type"* @"?_Storage@?1???$_Immortalize@V_Iostream_error_category@std@@@std@@YAAEAV_Iostream_error_category@1@XZ@4T?$_Align_type@N$0BA@@1@A" to i8*)) #13
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @terminate() #14
  unreachable

if.end:                                           ; preds = %entry
  ret %"class.std::_Iostream_error_category"* bitcast (%"union.std::_Align_type"* @"?_Storage@?1???$_Immortalize@V_Iostream_error_category@std@@@std@@YAAEAV_Iostream_error_category@1@XZ@4T?$_Align_type@N$0BA@@1@A" to %"class.std::_Iostream_error_category"*)
}

; Function Attrs: nounwind
declare dso_local i32 @"?_Execute_once@std@@YAHAEAUonce_flag@1@P6AHPEAX1PEAPEAX@Z1@Z"(%"struct.std::once_flag"* nonnull align 8 dereferenceable(8), i32 (i8*, i8*, i8**)*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @"??$_Immortalize_impl@V_Iostream_error_category@std@@@std@@YAHPEAX0PEAPEAX@Z"(i8* %0, i8* %_Storage_ptr, i8** %1) #2 comdat {
entry:
  %.addr = alloca i8**, align 8
  %_Storage_ptr.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8** %1, i8*** %.addr, align 8
  store i8* %_Storage_ptr, i8** %_Storage_ptr.addr, align 8
  store i8* %0, i8** %.addr1, align 8
  %2 = load i8*, i8** %_Storage_ptr.addr, align 8
  %3 = bitcast i8* %2 to %"class.std::_Iostream_error_category"*
  %call = call %"class.std::_Iostream_error_category"* @"??0_Iostream_error_category@std@@QEAA@XZ"(%"class.std::_Iostream_error_category"* %3) #13
  ret i32 1
}

; Function Attrs: noreturn nounwind
declare dso_local void @terminate() #11

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::_Iostream_error_category"* @"??0_Iostream_error_category@std@@QEAA@XZ"(%"class.std::_Iostream_error_category"* returned %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Iostream_error_category"*, align 8
  store %"class.std::_Iostream_error_category"* %this, %"class.std::_Iostream_error_category"** %this.addr, align 8
  %this1 = load %"class.std::_Iostream_error_category"*, %"class.std::_Iostream_error_category"** %this.addr, align 8
  %0 = bitcast %"class.std::_Iostream_error_category"* %this1 to %"class.std::_Generic_error_category"*
  %call = call %"class.std::_Generic_error_category"* @"??0_Generic_error_category@std@@QEAA@XZ"(%"class.std::_Generic_error_category"* %0) #13
  %1 = bitcast %"class.std::_Iostream_error_category"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** @"??_7_Iostream_error_category@std@@6B@" to i32 (...)**), i32 (...)*** %1, align 8
  %2 = bitcast %"class.std::_Iostream_error_category"* %this1 to %"class.std::error_category"*
  %_Addr = getelementptr inbounds %"class.std::error_category", %"class.std::error_category"* %2, i32 0, i32 1
  store i64 5, i64* %_Addr, align 8
  ret %"class.std::_Iostream_error_category"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::_Generic_error_category"* @"??0_Generic_error_category@std@@QEAA@XZ"(%"class.std::_Generic_error_category"* returned %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Generic_error_category"*, align 8
  store %"class.std::_Generic_error_category"* %this, %"class.std::_Generic_error_category"** %this.addr, align 8
  %this1 = load %"class.std::_Generic_error_category"*, %"class.std::_Generic_error_category"** %this.addr, align 8
  %0 = bitcast %"class.std::_Generic_error_category"* %this1 to %"class.std::error_category"*
  %call = call %"class.std::error_category"* @"??0error_category@std@@QEAA@XZ"(%"class.std::error_category"* %0) #13
  %1 = bitcast %"class.std::_Generic_error_category"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** @"??_7_Generic_error_category@std@@6B@" to i32 (...)**), i32 (...)*** %1, align 8
  %2 = bitcast %"class.std::_Generic_error_category"* %this1 to %"class.std::error_category"*
  %_Addr = getelementptr inbounds %"class.std::error_category", %"class.std::error_category"* %2, i32 0, i32 1
  store i64 3, i64* %_Addr, align 8
  ret %"class.std::_Generic_error_category"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"??_G_Iostream_error_category@std@@UEAAPEAXI@Z"(%"class.std::_Iostream_error_category"* %this, i32 %should_call_delete) unnamed_addr #2 comdat align 2 {
entry:
  %retval = alloca i8*, align 8
  %should_call_delete.addr = alloca i32, align 4
  %this.addr = alloca %"class.std::_Iostream_error_category"*, align 8
  store i32 %should_call_delete, i32* %should_call_delete.addr, align 4
  store %"class.std::_Iostream_error_category"* %this, %"class.std::_Iostream_error_category"** %this.addr, align 8
  %this1 = load %"class.std::_Iostream_error_category"*, %"class.std::_Iostream_error_category"** %this.addr, align 8
  %0 = bitcast %"class.std::_Iostream_error_category"* %this1 to i8*
  store i8* %0, i8** %retval, align 8
  %should_call_delete2 = load i32, i32* %should_call_delete.addr, align 4
  call void @"??1_Iostream_error_category@std@@UEAA@XZ"(%"class.std::_Iostream_error_category"* %this1) #13
  %1 = icmp eq i32 %should_call_delete2, 0
  br i1 %1, label %dtor.continue, label %dtor.call_delete

dtor.call_delete:                                 ; preds = %entry
  %2 = bitcast %"class.std::_Iostream_error_category"* %this1 to i8*
  call void @"??3@YAXPEAX@Z"(i8* %2) #17
  br label %dtor.continue

dtor.continue:                                    ; preds = %dtor.call_delete, %entry
  %3 = load i8*, i8** %retval, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"?name@_Iostream_error_category@std@@UEBAPEBDXZ"(%"class.std::_Iostream_error_category"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Iostream_error_category"*, align 8
  store %"class.std::_Iostream_error_category"* %this, %"class.std::_Iostream_error_category"** %this.addr, align 8
  %this1 = load %"class.std::_Iostream_error_category"*, %"class.std::_Iostream_error_category"** %this.addr, align 8
  ret i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"??_C@_08LLGCOLLL@iostream?$AA@", i64 0, i64 0)
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @"?message@_Iostream_error_category@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@H@Z"(%"class.std::_Iostream_error_category"* %this, %"class.std::basic_string"* noalias sret align 8 %agg.result, i32 %_Errcode) unnamed_addr #1 comdat align 2 {
entry:
  %result.ptr = alloca i8*, align 8
  %_Errcode.addr = alloca i32, align 4
  %this.addr = alloca %"class.std::_Iostream_error_category"*, align 8
  %_Iostream_error_length = alloca i64, align 8
  %0 = bitcast %"class.std::basic_string"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store i32 %_Errcode, i32* %_Errcode.addr, align 4
  store %"class.std::_Iostream_error_category"* %this, %"class.std::_Iostream_error_category"** %this.addr, align 8
  %this1 = load %"class.std::_Iostream_error_category"*, %"class.std::_Iostream_error_category"** %this.addr, align 8
  %1 = load i32, i32* %_Errcode.addr, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 21, i64* %_Iostream_error_length, align 8
  %call = call %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD_K@Z"(%"class.std::basic_string"* %agg.result, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"?_Iostream_error@?4??message@_Iostream_error_category@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@3@H@Z@4QBDB", i64 0, i64 0), i64 21)
  br label %return

if.else:                                          ; preds = %entry
  %2 = bitcast %"class.std::_Iostream_error_category"* %this1 to %"class.std::_Generic_error_category"*
  %3 = load i32, i32* %_Errcode.addr, align 4
  call void @"?message@_Generic_error_category@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@H@Z"(%"class.std::_Generic_error_category"* %2, %"class.std::basic_string"* sret align 8 %agg.result, i32 %3)
  br label %return

return:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?default_error_condition@error_category@std@@UEBA?AVerror_condition@2@H@Z"(%"class.std::error_category"* %this, %"class.std::error_condition"* noalias sret align 8 %agg.result, i32 %_Errval) unnamed_addr #2 comdat align 2 {
entry:
  %result.ptr = alloca i8*, align 8
  %_Errval.addr = alloca i32, align 4
  %this.addr = alloca %"class.std::error_category"*, align 8
  %0 = bitcast %"class.std::error_condition"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store i32 %_Errval, i32* %_Errval.addr, align 4
  store %"class.std::error_category"* %this, %"class.std::error_category"** %this.addr, align 8
  %this1 = load %"class.std::error_category"*, %"class.std::error_category"** %this.addr, align 8
  %1 = load i32, i32* %_Errval.addr, align 4
  %call = call %"class.std::error_condition"* @"??0error_condition@std@@QEAA@HAEBVerror_category@1@@Z"(%"class.std::error_condition"* %agg.result, i32 %1, %"class.std::error_category"* nonnull align 8 dereferenceable(16) %this1) #13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @"?equivalent@error_category@std@@UEBA_NAEBVerror_code@2@H@Z"(%"class.std::error_category"* %this, %"class.std::error_code"* nonnull align 8 dereferenceable(16) %_Code, i32 %_Errval) unnamed_addr #2 comdat align 2 {
entry:
  %_Errval.addr = alloca i32, align 4
  %_Code.addr = alloca %"class.std::error_code"*, align 8
  %this.addr = alloca %"class.std::error_category"*, align 8
  store i32 %_Errval, i32* %_Errval.addr, align 4
  store %"class.std::error_code"* %_Code, %"class.std::error_code"** %_Code.addr, align 8
  store %"class.std::error_category"* %this, %"class.std::error_category"** %this.addr, align 8
  %this1 = load %"class.std::error_category"*, %"class.std::error_category"** %this.addr, align 8
  %0 = load %"class.std::error_code"*, %"class.std::error_code"** %_Code.addr, align 8
  %call = call nonnull align 8 dereferenceable(16) %"class.std::error_category"* @"?category@error_code@std@@QEBAAEBVerror_category@2@XZ"(%"class.std::error_code"* %0) #13
  %call2 = call zeroext i1 @"??8error_category@std@@QEBA_NAEBV01@@Z"(%"class.std::error_category"* %this1, %"class.std::error_category"* nonnull align 8 dereferenceable(16) %call) #13
  br i1 %call2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load %"class.std::error_code"*, %"class.std::error_code"** %_Code.addr, align 8
  %call3 = call i32 @"?value@error_code@std@@QEBAHXZ"(%"class.std::error_code"* %1) #13
  %2 = load i32, i32* %_Errval.addr, align 4
  %cmp = icmp eq i32 %call3, %2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @"?equivalent@error_category@std@@UEBA_NHAEBVerror_condition@2@@Z"(%"class.std::error_category"* %this, i32 %_Errval, %"class.std::error_condition"* nonnull align 8 dereferenceable(16) %_Cond) unnamed_addr #2 comdat align 2 {
entry:
  %_Cond.addr = alloca %"class.std::error_condition"*, align 8
  %_Errval.addr = alloca i32, align 4
  %this.addr = alloca %"class.std::error_category"*, align 8
  %ref.tmp = alloca %"class.std::error_condition", align 8
  store %"class.std::error_condition"* %_Cond, %"class.std::error_condition"** %_Cond.addr, align 8
  store i32 %_Errval, i32* %_Errval.addr, align 4
  store %"class.std::error_category"* %this, %"class.std::error_category"** %this.addr, align 8
  %this1 = load %"class.std::error_category"*, %"class.std::error_category"** %this.addr, align 8
  %0 = load %"class.std::error_condition"*, %"class.std::error_condition"** %_Cond.addr, align 8
  %1 = load i32, i32* %_Errval.addr, align 4
  %2 = bitcast %"class.std::error_category"* %this1 to void (%"class.std::error_category"*, %"class.std::error_condition"*, i32)***
  %vtable = load void (%"class.std::error_category"*, %"class.std::error_condition"*, i32)**, void (%"class.std::error_category"*, %"class.std::error_condition"*, i32)*** %2, align 8
  %vfn = getelementptr inbounds void (%"class.std::error_category"*, %"class.std::error_condition"*, i32)*, void (%"class.std::error_category"*, %"class.std::error_condition"*, i32)** %vtable, i64 3
  %3 = load void (%"class.std::error_category"*, %"class.std::error_condition"*, i32)*, void (%"class.std::error_category"*, %"class.std::error_condition"*, i32)** %vfn, align 8
  call void %3(%"class.std::error_category"* %this1, %"class.std::error_condition"* sret align 8 %ref.tmp, i32 %1) #13
  %call = call zeroext i1 @"??8std@@YA_NAEBVerror_condition@0@0@Z"(%"class.std::error_condition"* nonnull align 8 dereferenceable(16) %ref.tmp, %"class.std::error_condition"* nonnull align 8 dereferenceable(16) %0) #13
  ret i1 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::error_category"* @"??0error_category@std@@QEAA@XZ"(%"class.std::error_category"* returned %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::error_category"*, align 8
  store %"class.std::error_category"* %this, %"class.std::error_category"** %this.addr, align 8
  %this1 = load %"class.std::error_category"*, %"class.std::error_category"** %this.addr, align 8
  %0 = ptrtoint %"class.std::error_category"* %this1 to i64
  %_Addr = getelementptr inbounds %"class.std::error_category", %"class.std::error_category"* %this1, i32 0, i32 1
  store i64 %0, i64* %_Addr, align 8
  ret %"class.std::error_category"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"??_G_Generic_error_category@std@@UEAAPEAXI@Z"(%"class.std::_Generic_error_category"* %this, i32 %should_call_delete) unnamed_addr #2 comdat align 2 {
entry:
  %retval = alloca i8*, align 8
  %should_call_delete.addr = alloca i32, align 4
  %this.addr = alloca %"class.std::_Generic_error_category"*, align 8
  store i32 %should_call_delete, i32* %should_call_delete.addr, align 4
  store %"class.std::_Generic_error_category"* %this, %"class.std::_Generic_error_category"** %this.addr, align 8
  %this1 = load %"class.std::_Generic_error_category"*, %"class.std::_Generic_error_category"** %this.addr, align 8
  %0 = bitcast %"class.std::_Generic_error_category"* %this1 to i8*
  store i8* %0, i8** %retval, align 8
  %should_call_delete2 = load i32, i32* %should_call_delete.addr, align 4
  call void @"??1_Generic_error_category@std@@UEAA@XZ"(%"class.std::_Generic_error_category"* %this1) #13
  %1 = icmp eq i32 %should_call_delete2, 0
  br i1 %1, label %dtor.continue, label %dtor.call_delete

dtor.call_delete:                                 ; preds = %entry
  %2 = bitcast %"class.std::_Generic_error_category"* %this1 to i8*
  call void @"??3@YAXPEAX@Z"(i8* %2) #17
  br label %dtor.continue

dtor.continue:                                    ; preds = %dtor.call_delete, %entry
  %3 = load i8*, i8** %retval, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"?name@_Generic_error_category@std@@UEBAPEBDXZ"(%"class.std::_Generic_error_category"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Generic_error_category"*, align 8
  store %"class.std::_Generic_error_category"* %this, %"class.std::_Generic_error_category"** %this.addr, align 8
  %this1 = load %"class.std::_Generic_error_category"*, %"class.std::_Generic_error_category"** %this.addr, align 8
  ret i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"??_C@_07DCLBNMLN@generic?$AA@", i64 0, i64 0)
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @"?message@_Generic_error_category@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@H@Z"(%"class.std::_Generic_error_category"* %this, %"class.std::basic_string"* noalias sret align 8 %agg.result, i32 %_Errcode) unnamed_addr #1 comdat align 2 {
entry:
  %result.ptr = alloca i8*, align 8
  %_Errcode.addr = alloca i32, align 4
  %this.addr = alloca %"class.std::_Generic_error_category"*, align 8
  %0 = bitcast %"class.std::basic_string"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store i32 %_Errcode, i32* %_Errcode.addr, align 4
  store %"class.std::_Generic_error_category"* %this, %"class.std::_Generic_error_category"** %this.addr, align 8
  %this1 = load %"class.std::_Generic_error_category"*, %"class.std::_Generic_error_category"** %this.addr, align 8
  %1 = load i32, i32* %_Errcode.addr, align 4
  %call = call i8* @"?_Syserror_map@std@@YAPEBDH@Z"(i32 %1)
  %call2 = call %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(%"class.std::basic_string"* %agg.result, i8* %call)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1_Generic_error_category@std@@UEAA@XZ"(%"class.std::_Generic_error_category"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Generic_error_category"*, align 8
  store %"class.std::_Generic_error_category"* %this, %"class.std::_Generic_error_category"** %this.addr, align 8
  %this1 = load %"class.std::_Generic_error_category"*, %"class.std::_Generic_error_category"** %this.addr, align 8
  %0 = bitcast %"class.std::_Generic_error_category"* %this1 to %"class.std::error_category"*
  call void @"??1error_category@std@@UEAA@XZ"(%"class.std::error_category"* %0) #13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1error_category@std@@UEAA@XZ"(%"class.std::error_category"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::error_category"*, align 8
  store %"class.std::error_category"* %this, %"class.std::error_category"** %this.addr, align 8
  %this1 = load %"class.std::error_category"*, %"class.std::error_category"** %this.addr, align 8
  ret void
}

declare dso_local i8* @"?_Syserror_map@std@@YAPEBDH@Z"(i32) #9

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1_Iostream_error_category@std@@UEAA@XZ"(%"class.std::_Iostream_error_category"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Iostream_error_category"*, align 8
  store %"class.std::_Iostream_error_category"* %this, %"class.std::_Iostream_error_category"** %this.addr, align 8
  %this1 = load %"class.std::_Iostream_error_category"*, %"class.std::_Iostream_error_category"** %this.addr, align 8
  %0 = bitcast %"class.std::_Iostream_error_category"* %this1 to %"class.std::_Generic_error_category"*
  call void @"??1_Generic_error_category@std@@UEAA@XZ"(%"class.std::_Generic_error_category"* %0) #13
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD_K@Z"(%"class.std::basic_string"* returned %this, i8* %_Ptr, i64 %_Count) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %_Count.addr = alloca i64, align 8
  %_Ptr.addr = alloca i8*, align 8
  %this.addr = alloca %"class.std::basic_string"*, align 8
  %agg.tmp = alloca %"struct.std::_Zero_then_variadic_args_t", align 1
  %_Alproxy = alloca %"struct.std::_Fake_allocator"*, align 8
  %ref.tmp = alloca %"struct.std::_Fake_allocator", align 1
  %_Proxy = alloca %"struct.std::_Fake_proxy_ptr_impl", align 1
  store i64 %_Count, i64* %_Count.addr, align 8
  store i8* %_Ptr, i8** %_Ptr.addr, align 8
  store %"class.std::basic_string"* %this, %"class.std::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::basic_string"*, %"class.std::basic_string"** %this.addr, align 8
  %_Mypair = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %coerce.dive = getelementptr inbounds %"struct.std::_Zero_then_variadic_args_t", %"struct.std::_Zero_then_variadic_args_t"* %agg.tmp, i32 0, i32 0
  %0 = load i8, i8* %coerce.dive, align 1
  %call = call %"class.std::_Compressed_pair"* @"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"(%"class.std::_Compressed_pair"* %_Mypair, i8 %0)
  store %"struct.std::_Fake_allocator"* %ref.tmp, %"struct.std::_Fake_allocator"** %_Alproxy, align 8
  %_Mypair2 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval2 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair2, i32 0, i32 0
  %1 = bitcast %"class.std::_String_val"* %_Myval2 to %"struct.std::_Container_base0"*
  %2 = load %"struct.std::_Fake_allocator"*, %"struct.std::_Fake_allocator"** %_Alproxy, align 8
  %call3 = call %"struct.std::_Fake_proxy_ptr_impl"* @"??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z"(%"struct.std::_Fake_proxy_ptr_impl"* %_Proxy, %"struct.std::_Fake_allocator"* nonnull align 1 dereferenceable(1) %2, %"struct.std::_Container_base0"* nonnull align 1 dereferenceable(1) %1) #13
  call void @"?_Tidy_init@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(%"class.std::basic_string"* %this1) #13
  %3 = load i64, i64* %_Count.addr, align 8
  %4 = load i8*, i8** %_Ptr.addr, align 8
  %call4 = invoke nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"(%"class.std::basic_string"* %this1, i8* %4, i64 %3)
          to label %invoke.cont unwind label %ehcleanup

invoke.cont:                                      ; preds = %entry
  call void @"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ"(%"struct.std::_Fake_proxy_ptr_impl"* %_Proxy) #13
  ret %"class.std::basic_string"* %this1

ehcleanup:                                        ; preds = %entry
  %5 = cleanuppad within none []
  call void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(%"class.std::_Compressed_pair"* %_Mypair) #13 [ "funclet"(token %5) ]
  cleanupret from %5 unwind to caller
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::error_condition"* @"??0error_condition@std@@QEAA@HAEBVerror_category@1@@Z"(%"class.std::error_condition"* returned %this, i32 %_Val, %"class.std::error_category"* nonnull align 8 dereferenceable(16) %_Cat) unnamed_addr #2 comdat align 2 {
entry:
  %_Cat.addr = alloca %"class.std::error_category"*, align 8
  %_Val.addr = alloca i32, align 4
  %this.addr = alloca %"class.std::error_condition"*, align 8
  store %"class.std::error_category"* %_Cat, %"class.std::error_category"** %_Cat.addr, align 8
  store i32 %_Val, i32* %_Val.addr, align 4
  store %"class.std::error_condition"* %this, %"class.std::error_condition"** %this.addr, align 8
  %this1 = load %"class.std::error_condition"*, %"class.std::error_condition"** %this.addr, align 8
  %_Myval = getelementptr inbounds %"class.std::error_condition", %"class.std::error_condition"* %this1, i32 0, i32 0
  %0 = load i32, i32* %_Val.addr, align 4
  store i32 %0, i32* %_Myval, align 8
  %_Mycat = getelementptr inbounds %"class.std::error_condition", %"class.std::error_condition"* %this1, i32 0, i32 1
  %1 = load %"class.std::error_category"*, %"class.std::error_category"** %_Cat.addr, align 8
  store %"class.std::error_category"* %1, %"class.std::error_category"** %_Mycat, align 8
  ret %"class.std::error_condition"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @"??8error_category@std@@QEBA_NAEBV01@@Z"(%"class.std::error_category"* %this, %"class.std::error_category"* nonnull align 8 dereferenceable(16) %_Right) #2 comdat align 2 {
entry:
  %_Right.addr = alloca %"class.std::error_category"*, align 8
  %this.addr = alloca %"class.std::error_category"*, align 8
  store %"class.std::error_category"* %_Right, %"class.std::error_category"** %_Right.addr, align 8
  store %"class.std::error_category"* %this, %"class.std::error_category"** %this.addr, align 8
  %this1 = load %"class.std::error_category"*, %"class.std::error_category"** %this.addr, align 8
  %_Addr = getelementptr inbounds %"class.std::error_category", %"class.std::error_category"* %this1, i32 0, i32 1
  %0 = load i64, i64* %_Addr, align 8
  %1 = load %"class.std::error_category"*, %"class.std::error_category"** %_Right.addr, align 8
  %_Addr2 = getelementptr inbounds %"class.std::error_category", %"class.std::error_category"* %1, i32 0, i32 1
  %2 = load i64, i64* %_Addr2, align 8
  %cmp = icmp eq i64 %0, %2
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(16) %"class.std::error_category"* @"?category@error_code@std@@QEBAAEBVerror_category@2@XZ"(%"class.std::error_code"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::error_code"*, align 8
  store %"class.std::error_code"* %this, %"class.std::error_code"** %this.addr, align 8
  %this1 = load %"class.std::error_code"*, %"class.std::error_code"** %this.addr, align 8
  %_Mycat = getelementptr inbounds %"class.std::error_code", %"class.std::error_code"* %this1, i32 0, i32 1
  %0 = load %"class.std::error_category"*, %"class.std::error_category"** %_Mycat, align 8
  ret %"class.std::error_category"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @"?value@error_code@std@@QEBAHXZ"(%"class.std::error_code"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::error_code"*, align 8
  store %"class.std::error_code"* %this, %"class.std::error_code"** %this.addr, align 8
  %this1 = load %"class.std::error_code"*, %"class.std::error_code"** %this.addr, align 8
  %_Myval = getelementptr inbounds %"class.std::error_code", %"class.std::error_code"* %this1, i32 0, i32 0
  %0 = load i32, i32* %_Myval, align 8
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @"??8std@@YA_NAEBVerror_condition@0@0@Z"(%"class.std::error_condition"* nonnull align 8 dereferenceable(16) %_Left, %"class.std::error_condition"* nonnull align 8 dereferenceable(16) %_Right) #2 comdat {
entry:
  %_Right.addr = alloca %"class.std::error_condition"*, align 8
  %_Left.addr = alloca %"class.std::error_condition"*, align 8
  store %"class.std::error_condition"* %_Right, %"class.std::error_condition"** %_Right.addr, align 8
  store %"class.std::error_condition"* %_Left, %"class.std::error_condition"** %_Left.addr, align 8
  %0 = load %"class.std::error_condition"*, %"class.std::error_condition"** %_Left.addr, align 8
  %call = call nonnull align 8 dereferenceable(16) %"class.std::error_category"* @"?category@error_condition@std@@QEBAAEBVerror_category@2@XZ"(%"class.std::error_condition"* %0) #13
  %1 = load %"class.std::error_condition"*, %"class.std::error_condition"** %_Right.addr, align 8
  %call1 = call nonnull align 8 dereferenceable(16) %"class.std::error_category"* @"?category@error_condition@std@@QEBAAEBVerror_category@2@XZ"(%"class.std::error_condition"* %1) #13
  %call2 = call zeroext i1 @"??8error_category@std@@QEBA_NAEBV01@@Z"(%"class.std::error_category"* %call, %"class.std::error_category"* nonnull align 8 dereferenceable(16) %call1) #13
  br i1 %call2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load %"class.std::error_condition"*, %"class.std::error_condition"** %_Left.addr, align 8
  %call3 = call i32 @"?value@error_condition@std@@QEBAHXZ"(%"class.std::error_condition"* %2) #13
  %3 = load %"class.std::error_condition"*, %"class.std::error_condition"** %_Right.addr, align 8
  %call4 = call i32 @"?value@error_condition@std@@QEBAHXZ"(%"class.std::error_condition"* %3) #13
  %cmp = icmp eq i32 %call3, %call4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(16) %"class.std::error_category"* @"?category@error_condition@std@@QEBAAEBVerror_category@2@XZ"(%"class.std::error_condition"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::error_condition"*, align 8
  store %"class.std::error_condition"* %this, %"class.std::error_condition"** %this.addr, align 8
  %this1 = load %"class.std::error_condition"*, %"class.std::error_condition"** %this.addr, align 8
  %_Mycat = getelementptr inbounds %"class.std::error_condition", %"class.std::error_condition"* %this1, i32 0, i32 1
  %0 = load %"class.std::error_category"*, %"class.std::error_category"** %_Mycat, align 8
  ret %"class.std::error_category"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @"?value@error_condition@std@@QEBAHXZ"(%"class.std::error_condition"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::error_condition"*, align 8
  store %"class.std::error_condition"* %this, %"class.std::error_condition"** %this.addr, align 8
  %this1 = load %"class.std::error_condition"*, %"class.std::error_condition"** %this.addr, align 8
  %_Myval = getelementptr inbounds %"class.std::error_condition", %"class.std::error_condition"* %this1, i32 0, i32 0
  %0 = load i32, i32* %_Myval, align 8
  ret i32 %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::system_error"* @"??0system_error@std@@QEAA@Verror_code@1@PEBD@Z"(%"class.std::system_error"* returned %this, %"class.std::error_code"* %_Errcode, i8* %_Message) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %_Message.addr = alloca i8*, align 8
  %this.addr = alloca %"class.std::system_error"*, align 8
  %ref.tmp = alloca %"class.std::basic_string", align 8
  %agg.tmp = alloca %"class.std::error_code", align 8
  store i8* %_Message, i8** %_Message.addr, align 8
  store %"class.std::system_error"* %this, %"class.std::system_error"** %this.addr, align 8
  %this1 = load %"class.std::system_error"*, %"class.std::system_error"** %this.addr, align 8
  %0 = bitcast %"class.std::system_error"* %this1 to %"class.std::_System_error"*
  %1 = load i8*, i8** %_Message.addr, align 8
  %call = call %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(%"class.std::basic_string"* %ref.tmp, i8* %1)
  %2 = bitcast %"class.std::error_code"* %agg.tmp to i8*
  %3 = bitcast %"class.std::error_code"* %_Errcode to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 16, i1 false)
  %call2 = invoke %"class.std::_System_error"* @"??0_System_error@std@@IEAA@Verror_code@1@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z"(%"class.std::_System_error"* %0, %"class.std::error_code"* %agg.tmp, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont unwind label %ehcleanup

invoke.cont:                                      ; preds = %entry
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %ref.tmp) #13
  %4 = bitcast %"class.std::system_error"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** @"??_7system_error@std@@6B@" to i32 (...)**), i32 (...)*** %4, align 8
  ret %"class.std::system_error"* %this1

ehcleanup:                                        ; preds = %entry
  %5 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %ref.tmp) #13 [ "funclet"(token %5) ]
  cleanupret from %5 unwind to caller
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"??_Gfailure@ios_base@std@@UEAAPEAXI@Z"(%"class.std::ios_base::failure"* %this, i32 %should_call_delete) unnamed_addr #2 comdat align 2 {
entry:
  %retval = alloca i8*, align 8
  %should_call_delete.addr = alloca i32, align 4
  %this.addr = alloca %"class.std::ios_base::failure"*, align 8
  store i32 %should_call_delete, i32* %should_call_delete.addr, align 4
  store %"class.std::ios_base::failure"* %this, %"class.std::ios_base::failure"** %this.addr, align 8
  %this1 = load %"class.std::ios_base::failure"*, %"class.std::ios_base::failure"** %this.addr, align 8
  %0 = bitcast %"class.std::ios_base::failure"* %this1 to i8*
  store i8* %0, i8** %retval, align 8
  %should_call_delete2 = load i32, i32* %should_call_delete.addr, align 4
  call void @"??1failure@ios_base@std@@UEAA@XZ"(%"class.std::ios_base::failure"* %this1) #13
  %1 = icmp eq i32 %should_call_delete2, 0
  br i1 %1, label %dtor.continue, label %dtor.call_delete

dtor.call_delete:                                 ; preds = %entry
  %2 = bitcast %"class.std::ios_base::failure"* %this1 to i8*
  call void @"??3@YAXPEAX@Z"(i8* %2) #17
  br label %dtor.continue

dtor.continue:                                    ; preds = %dtor.call_delete, %entry
  %3 = load i8*, i8** %retval, align 8
  ret i8* %3
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::_System_error"* @"??0_System_error@std@@IEAA@Verror_code@1@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z"(%"class.std::_System_error"* returned %this, %"class.std::error_code"* %_Errcode, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %_Message) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %_Message.addr = alloca %"class.std::basic_string"*, align 8
  %this.addr = alloca %"class.std::_System_error"*, align 8
  %ref.tmp = alloca %"class.std::basic_string", align 8
  %agg.tmp = alloca %"class.std::basic_string", align 8
  %agg.tmp2 = alloca %"class.std::error_code", align 8
  store %"class.std::basic_string"* %_Message, %"class.std::basic_string"** %_Message.addr, align 8
  store %"class.std::_System_error"* %this, %"class.std::_System_error"** %this.addr, align 8
  %this1 = load %"class.std::_System_error"*, %"class.std::_System_error"** %this.addr, align 8
  %0 = bitcast %"class.std::_System_error"* %this1 to %"class.std::runtime_error"*
  %1 = load %"class.std::basic_string"*, %"class.std::basic_string"** %_Message.addr, align 8
  %call = call %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z"(%"class.std::basic_string"* %agg.tmp, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %1)
  %2 = bitcast %"class.std::error_code"* %agg.tmp2 to i8*
  %3 = bitcast %"class.std::error_code"* %_Errcode to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 16, i1 false)
  call void @"?_Makestr@_System_error@std@@CA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@Verror_code@2@V32@@Z"(%"class.std::basic_string"* sret align 8 %ref.tmp, %"class.std::error_code"* %agg.tmp2, %"class.std::basic_string"* %agg.tmp)
  %call3 = invoke %"class.std::runtime_error"* @"??0runtime_error@std@@QEAA@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z"(%"class.std::runtime_error"* %0, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont unwind label %ehcleanup

invoke.cont:                                      ; preds = %entry
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %ref.tmp) #13
  %4 = bitcast %"class.std::_System_error"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** @"??_7_System_error@std@@6B@" to i32 (...)**), i32 (...)*** %4, align 8
  %_Mycode = getelementptr inbounds %"class.std::_System_error", %"class.std::_System_error"* %this1, i32 0, i32 1
  %5 = bitcast %"class.std::error_code"* %_Mycode to i8*
  %6 = bitcast %"class.std::error_code"* %_Errcode to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 16, i1 false)
  ret %"class.std::_System_error"* %this1

ehcleanup:                                        ; preds = %entry
  %7 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %ref.tmp) #13 [ "funclet"(token %7) ]
  cleanupret from %7 unwind to caller
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"??_Gsystem_error@std@@UEAAPEAXI@Z"(%"class.std::system_error"* %this, i32 %should_call_delete) unnamed_addr #2 comdat align 2 {
entry:
  %retval = alloca i8*, align 8
  %should_call_delete.addr = alloca i32, align 4
  %this.addr = alloca %"class.std::system_error"*, align 8
  store i32 %should_call_delete, i32* %should_call_delete.addr, align 4
  store %"class.std::system_error"* %this, %"class.std::system_error"** %this.addr, align 8
  %this1 = load %"class.std::system_error"*, %"class.std::system_error"** %this.addr, align 8
  %0 = bitcast %"class.std::system_error"* %this1 to i8*
  store i8* %0, i8** %retval, align 8
  %should_call_delete2 = load i32, i32* %should_call_delete.addr, align 4
  call void @"??1system_error@std@@UEAA@XZ"(%"class.std::system_error"* %this1) #13
  %1 = icmp eq i32 %should_call_delete2, 0
  br i1 %1, label %dtor.continue, label %dtor.call_delete

dtor.call_delete:                                 ; preds = %entry
  %2 = bitcast %"class.std::system_error"* %this1 to i8*
  call void @"??3@YAXPEAX@Z"(i8* %2) #17
  br label %dtor.continue

dtor.continue:                                    ; preds = %dtor.call_delete, %entry
  %3 = load i8*, i8** %retval, align 8
  ret i8* %3
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @"?_Makestr@_System_error@std@@CA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@Verror_code@2@V32@@Z"(%"class.std::basic_string"* noalias sret align 8 %agg.result, %"class.std::error_code"* %_Errcode, %"class.std::basic_string"* %_Message) #1 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %result.ptr = alloca i8*, align 8
  %ref.tmp = alloca %"class.std::basic_string", align 8
  %0 = bitcast %"class.std::basic_string"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  %call = call zeroext i1 @"?empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_NXZ"(%"class.std::basic_string"* %_Message) #13
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = invoke nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z"(%"class.std::basic_string"* %_Message, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"??_C@_02LMMGGCAJ@?3?5?$AA@", i64 0, i64 0))
          to label %invoke.cont unwind label %ehcleanup6

invoke.cont:                                      ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %invoke.cont, %entry
  invoke void @"?message@error_code@std@@QEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"(%"class.std::error_code"* %_Errcode, %"class.std::basic_string"* sret align 8 %ref.tmp)
          to label %invoke.cont2 unwind label %ehcleanup6

invoke.cont2:                                     ; preds = %if.end
  %call4 = invoke nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@AEBV12@@Z"(%"class.std::basic_string"* %_Message, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %ehcleanup

invoke.cont3:                                     ; preds = %invoke.cont2
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %ref.tmp) #13
  %call5 = call %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@$$QEAV01@@Z"(%"class.std::basic_string"* %agg.result, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %_Message) #13
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %_Message) #13
  ret void

ehcleanup:                                        ; preds = %invoke.cont2
  %1 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %ref.tmp) #13 [ "funclet"(token %1) ]
  cleanupret from %1 unwind label %ehcleanup6

ehcleanup6:                                       ; preds = %ehcleanup, %if.end, %if.then
  %2 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(%"class.std::basic_string"* %_Message) #13 [ "funclet"(token %2) ]
  cleanupret from %2 unwind to caller
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z"(%"class.std::basic_string"* returned %this, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %_Right) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %_Right.addr = alloca %"class.std::basic_string"*, align 8
  %this.addr = alloca %"class.std::basic_string"*, align 8
  %ref.tmp = alloca %"class.std::allocator", align 1
  %agg.tmp = alloca %"struct.std::_One_then_variadic_args_t", align 1
  %_Alproxy = alloca %"struct.std::_Fake_allocator"*, align 8
  %ref.tmp3 = alloca %"struct.std::_Fake_allocator", align 1
  %_Proxy = alloca %"struct.std::_Fake_proxy_ptr_impl", align 1
  store %"class.std::basic_string"* %_Right, %"class.std::basic_string"** %_Right.addr, align 8
  store %"class.std::basic_string"* %this, %"class.std::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::basic_string"*, %"class.std::basic_string"** %this.addr, align 8
  %_Mypair = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %0 = load %"class.std::basic_string"*, %"class.std::basic_string"** %_Right.addr, align 8
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ"(%"class.std::basic_string"* %0) #13
  call void @"?select_on_container_copy_construction@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA?AV?$allocator@D@2@AEBV32@@Z"(%"class.std::allocator"* sret align 1 %ref.tmp, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %call)
  %coerce.dive = getelementptr inbounds %"struct.std::_One_then_variadic_args_t", %"struct.std::_One_then_variadic_args_t"* %agg.tmp, i32 0, i32 0
  %1 = load i8, i8* %coerce.dive, align 1
  %call2 = call %"class.std::_Compressed_pair"* @"??$?0V?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@$$QEAV?$allocator@D@1@@Z"(%"class.std::_Compressed_pair"* %_Mypair, i8 %1, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %ref.tmp)
  store %"struct.std::_Fake_allocator"* %ref.tmp3, %"struct.std::_Fake_allocator"** %_Alproxy, align 8
  %_Mypair4 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval2 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair4, i32 0, i32 0
  %2 = bitcast %"class.std::_String_val"* %_Myval2 to %"struct.std::_Container_base0"*
  %3 = load %"struct.std::_Fake_allocator"*, %"struct.std::_Fake_allocator"** %_Alproxy, align 8
  %call5 = call %"struct.std::_Fake_proxy_ptr_impl"* @"??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z"(%"struct.std::_Fake_proxy_ptr_impl"* %_Proxy, %"struct.std::_Fake_allocator"* nonnull align 1 dereferenceable(1) %3, %"struct.std::_Container_base0"* nonnull align 1 dereferenceable(1) %2) #13
  %4 = load %"class.std::basic_string"*, %"class.std::basic_string"** %_Right.addr, align 8
  invoke void @"?_Construct_lv_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@@Z"(%"class.std::basic_string"* %this1, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %4)
          to label %invoke.cont unwind label %ehcleanup

invoke.cont:                                      ; preds = %entry
  call void @"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ"(%"struct.std::_Fake_proxy_ptr_impl"* %_Proxy) #13
  ret %"class.std::basic_string"* %this1

ehcleanup:                                        ; preds = %entry
  %5 = cleanuppad within none []
  call void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(%"class.std::_Compressed_pair"* %_Mypair) #13 [ "funclet"(token %5) ]
  cleanupret from %5 unwind to caller
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::runtime_error"* @"??0runtime_error@std@@QEAA@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z"(%"class.std::runtime_error"* returned %this, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %_Message) unnamed_addr #2 comdat align 2 {
entry:
  %_Message.addr = alloca %"class.std::basic_string"*, align 8
  %this.addr = alloca %"class.std::runtime_error"*, align 8
  store %"class.std::basic_string"* %_Message, %"class.std::basic_string"** %_Message.addr, align 8
  store %"class.std::runtime_error"* %this, %"class.std::runtime_error"** %this.addr, align 8
  %this1 = load %"class.std::runtime_error"*, %"class.std::runtime_error"** %this.addr, align 8
  %0 = bitcast %"class.std::runtime_error"* %this1 to %"class.std::exception"*
  %1 = load %"class.std::basic_string"*, %"class.std::basic_string"** %_Message.addr, align 8
  %call = call i8* @"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ"(%"class.std::basic_string"* %1) #13
  %call2 = call %"class.std::exception"* @"??0exception@std@@QEAA@QEBD@Z"(%"class.std::exception"* %0, i8* %call) #13
  %2 = bitcast %"class.std::runtime_error"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** @"??_7runtime_error@std@@6B@" to i32 (...)**), i32 (...)*** %2, align 8
  ret %"class.std::runtime_error"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"??_G_System_error@std@@UEAAPEAXI@Z"(%"class.std::_System_error"* %this, i32 %should_call_delete) unnamed_addr #2 comdat align 2 {
entry:
  %retval = alloca i8*, align 8
  %should_call_delete.addr = alloca i32, align 4
  %this.addr = alloca %"class.std::_System_error"*, align 8
  store i32 %should_call_delete, i32* %should_call_delete.addr, align 4
  store %"class.std::_System_error"* %this, %"class.std::_System_error"** %this.addr, align 8
  %this1 = load %"class.std::_System_error"*, %"class.std::_System_error"** %this.addr, align 8
  %0 = bitcast %"class.std::_System_error"* %this1 to i8*
  store i8* %0, i8** %retval, align 8
  %should_call_delete2 = load i32, i32* %should_call_delete.addr, align 4
  call void @"??1_System_error@std@@UEAA@XZ"(%"class.std::_System_error"* %this1) #13
  %1 = icmp eq i32 %should_call_delete2, 0
  br i1 %1, label %dtor.continue, label %dtor.call_delete

dtor.call_delete:                                 ; preds = %entry
  %2 = bitcast %"class.std::_System_error"* %this1 to i8*
  call void @"??3@YAXPEAX@Z"(i8* %2) #17
  br label %dtor.continue

dtor.continue:                                    ; preds = %dtor.call_delete, %entry
  %3 = load i8*, i8** %retval, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @"?empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_NXZ"(%"class.std::basic_string"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::basic_string"*, align 8
  store %"class.std::basic_string"* %this, %"class.std::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::basic_string"*, %"class.std::basic_string"** %this.addr, align 8
  %call = call i64 @"?size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(%"class.std::basic_string"* %this1) #13
  %cmp = icmp eq i64 %call, 0
  ret i1 %cmp
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z"(%"class.std::basic_string"* %this, i8* %_Ptr) #1 comdat align 2 {
entry:
  %_Ptr.addr = alloca i8*, align 8
  %this.addr = alloca %"class.std::basic_string"*, align 8
  store i8* %_Ptr, i8** %_Ptr.addr, align 8
  store %"class.std::basic_string"* %this, %"class.std::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::basic_string"*, %"class.std::basic_string"** %this.addr, align 8
  %0 = load i8*, i8** %_Ptr.addr, align 8
  %call = call i64 @"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"(i8* %0) #13
  %call2 = call i64 @"??$_Convert_size@_K@std@@YA_K_K@Z"(i64 %call) #13
  %1 = load i8*, i8** %_Ptr.addr, align 8
  %call3 = call nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"(%"class.std::basic_string"* %this1, i8* %1, i64 %call2)
  ret %"class.std::basic_string"* %call3
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@AEBV12@@Z"(%"class.std::basic_string"* %this, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %_Right) #1 comdat align 2 {
entry:
  %_Right.addr = alloca %"class.std::basic_string"*, align 8
  %this.addr = alloca %"class.std::basic_string"*, align 8
  store %"class.std::basic_string"* %_Right, %"class.std::basic_string"** %_Right.addr, align 8
  store %"class.std::basic_string"* %this, %"class.std::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::basic_string"*, %"class.std::basic_string"** %this.addr, align 8
  %0 = load %"class.std::basic_string"*, %"class.std::basic_string"** %_Right.addr, align 8
  %_Mypair = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %0, i32 0, i32 0
  %_Myval2 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair, i32 0, i32 0
  %_Mysize = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %_Myval2, i32 0, i32 1
  %1 = load i64, i64* %_Mysize, align 8
  %2 = load %"class.std::basic_string"*, %"class.std::basic_string"** %_Right.addr, align 8
  %_Mypair2 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %2, i32 0, i32 0
  %_Myval23 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair2, i32 0, i32 0
  %call = call i8* @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"(%"class.std::_String_val"* %_Myval23) #13
  %call4 = call nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"(%"class.std::basic_string"* %this1, i8* %call, i64 %1)
  ret %"class.std::basic_string"* %call4
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @"?message@error_code@std@@QEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"(%"class.std::error_code"* %this, %"class.std::basic_string"* noalias sret align 8 %agg.result) #1 comdat align 2 {
entry:
  %result.ptr = alloca i8*, align 8
  %this.addr = alloca %"class.std::error_code"*, align 8
  %0 = bitcast %"class.std::basic_string"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.std::error_code"* %this, %"class.std::error_code"** %this.addr, align 8
  %this1 = load %"class.std::error_code"*, %"class.std::error_code"** %this.addr, align 8
  %call = call nonnull align 8 dereferenceable(16) %"class.std::error_category"* @"?category@error_code@std@@QEBAAEBVerror_category@2@XZ"(%"class.std::error_code"* %this1) #13
  %call2 = call i32 @"?value@error_code@std@@QEBAHXZ"(%"class.std::error_code"* %this1) #13
  %1 = bitcast %"class.std::error_category"* %call to void (%"class.std::error_category"*, %"class.std::basic_string"*, i32)***
  %vtable = load void (%"class.std::error_category"*, %"class.std::basic_string"*, i32)**, void (%"class.std::error_category"*, %"class.std::basic_string"*, i32)*** %1, align 8
  %vfn = getelementptr inbounds void (%"class.std::error_category"*, %"class.std::basic_string"*, i32)*, void (%"class.std::error_category"*, %"class.std::basic_string"*, i32)** %vtable, i64 2
  %2 = load void (%"class.std::error_category"*, %"class.std::basic_string"*, i32)*, void (%"class.std::error_category"*, %"class.std::basic_string"*, i32)** %vfn, align 8
  call void %2(%"class.std::error_category"* %call, %"class.std::basic_string"* sret align 8 %agg.result, i32 %call2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::basic_string"* @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@$$QEAV01@@Z"(%"class.std::basic_string"* returned %this, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %_Right) unnamed_addr #2 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %_Right.addr = alloca %"class.std::basic_string"*, align 8
  %this.addr = alloca %"class.std::basic_string"*, align 8
  %agg.tmp = alloca %"struct.std::_One_then_variadic_args_t", align 1
  %ref.tmp = alloca %"struct.std::_Fake_allocator", align 1
  %agg.tmp5 = alloca %"struct.std::integral_constant", align 1
  store %"class.std::basic_string"* %_Right, %"class.std::basic_string"** %_Right.addr, align 8
  store %"class.std::basic_string"* %this, %"class.std::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::basic_string"*, %"class.std::basic_string"** %this.addr, align 8
  %_Mypair = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %0 = load %"class.std::basic_string"*, %"class.std::basic_string"** %_Right.addr, align 8
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(%"class.std::basic_string"* %0) #13
  %call2 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"??$move@AEAV?$allocator@D@std@@@std@@YA$$QEAV?$allocator@D@0@AEAV10@@Z"(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %call) #13
  %coerce.dive = getelementptr inbounds %"struct.std::_One_then_variadic_args_t", %"struct.std::_One_then_variadic_args_t"* %agg.tmp, i32 0, i32 0
  %1 = load i8, i8* %coerce.dive, align 1
  %call3 = invoke %"class.std::_Compressed_pair"* @"??$?0V?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@$$QEAV?$allocator@D@1@@Z"(%"class.std::_Compressed_pair"* %_Mypair, i8 %1, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %call2)
          to label %invoke.cont unwind label %terminate

invoke.cont:                                      ; preds = %entry
  %_Mypair4 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval2 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair4, i32 0, i32 0
  %2 = bitcast %"class.std::_String_val"* %_Myval2 to %"struct.std::_Container_base0"*
  call void @"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z"(%"struct.std::_Container_base0"* %2, %"struct.std::_Fake_allocator"* nonnull align 1 dereferenceable(1) %ref.tmp) #13
  %3 = load %"class.std::basic_string"*, %"class.std::basic_string"** %_Right.addr, align 8
  %coerce.dive6 = getelementptr inbounds %"struct.std::integral_constant", %"struct.std::integral_constant"* %agg.tmp5, i32 0, i32 0
  %4 = load i8, i8* %coerce.dive6, align 1
  call void @"?_Take_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@U?$integral_constant@_N$00@2@@Z"(%"class.std::basic_string"* %this1, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %3, i8 %4) #13
  ret %"class.std::basic_string"* %this1

terminate:                                        ; preds = %entry
  %5 = cleanuppad within none []
  call void @__std_terminate() #14 [ "funclet"(token %5) ]
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @"?size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(%"class.std::basic_string"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::basic_string"*, align 8
  store %"class.std::basic_string"* %this, %"class.std::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::basic_string"*, %"class.std::basic_string"** %this.addr, align 8
  %_Mypair = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval2 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair, i32 0, i32 0
  %_Mysize = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %_Myval2, i32 0, i32 1
  %0 = load i64, i64* %_Mysize, align 8
  ret i64 %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"(%"class.std::basic_string"* %this, i8* %_Ptr, i64 %_Count) #1 comdat align 2 {
entry:
  %retval = alloca %"class.std::basic_string"*, align 8
  %_Count.addr = alloca i64, align 8
  %_Ptr.addr = alloca i8*, align 8
  %this.addr = alloca %"class.std::basic_string"*, align 8
  %_Old_size = alloca i64, align 8
  %_Old_ptr = alloca i8*, align 8
  %ref.tmp = alloca i8, align 1
  %agg.tmp = alloca %class.anon.0, align 1
  store i64 %_Count, i64* %_Count.addr, align 8
  store i8* %_Ptr, i8** %_Ptr.addr, align 8
  store %"class.std::basic_string"* %this, %"class.std::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::basic_string"*, %"class.std::basic_string"** %this.addr, align 8
  %_Mypair = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval2 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair, i32 0, i32 0
  %_Mysize = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %_Myval2, i32 0, i32 1
  %0 = load i64, i64* %_Mysize, align 8
  store i64 %0, i64* %_Old_size, align 8
  %1 = load i64, i64* %_Count.addr, align 8
  %_Mypair2 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval23 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair2, i32 0, i32 0
  %_Myres = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %_Myval23, i32 0, i32 2
  %2 = load i64, i64* %_Myres, align 8
  %3 = load i64, i64* %_Old_size, align 8
  %sub = sub i64 %2, %3
  %cmp = icmp ule i64 %1, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %_Old_size, align 8
  %5 = load i64, i64* %_Count.addr, align 8
  %add = add i64 %4, %5
  %_Mypair4 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval25 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair4, i32 0, i32 0
  %_Mysize6 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %_Myval25, i32 0, i32 1
  store i64 %add, i64* %_Mysize6, align 8
  %_Mypair7 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval28 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair7, i32 0, i32 0
  %call = call i8* @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(%"class.std::_String_val"* %_Myval28) #13
  store i8* %call, i8** %_Old_ptr, align 8
  %6 = load i64, i64* %_Count.addr, align 8
  %7 = load i8*, i8** %_Ptr.addr, align 8
  %8 = load i8*, i8** %_Old_ptr, align 8
  %9 = load i64, i64* %_Old_size, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9
  %call9 = call i8* @"?move@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(i8* %add.ptr, i8* %7, i64 %6) #13
  store i8 0, i8* %ref.tmp, align 1
  %10 = load i8*, i8** %_Old_ptr, align 8
  %11 = load i64, i64* %_Old_size, align 8
  %12 = load i64, i64* %_Count.addr, align 8
  %add10 = add i64 %11, %12
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %add10
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(i8* nonnull align 1 dereferenceable(1) %arrayidx, i8* nonnull align 1 dereferenceable(1) %ref.tmp) #13
  store %"class.std::basic_string"* %this1, %"class.std::basic_string"** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %13 = load i64, i64* %_Count.addr, align 8
  %14 = load i8*, i8** %_Ptr.addr, align 8
  %15 = load i64, i64* %_Count.addr, align 8
  %coerce.dive = getelementptr inbounds %class.anon.0, %class.anon.0* %agg.tmp, i32 0, i32 0
  %16 = load i8, i8* %coerce.dive, align 1
  %call11 = call nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"??$_Reallocate_grow_by@V<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD_K@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??append@01@QEAAAEAV01@QEBD0@Z@PEBD_K@Z"(%"class.std::basic_string"* %this1, i64 %15, i8 %16, i8* %14, i64 %13)
  store %"class.std::basic_string"* %call11, %"class.std::basic_string"** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %17 = load %"class.std::basic_string"*, %"class.std::basic_string"** %retval, align 8
  ret %"class.std::basic_string"* %17
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(32) %"class.std::basic_string"* @"??$_Reallocate_grow_by@V<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD_K@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??append@01@QEAAAEAV01@QEBD0@Z@PEBD_K@Z"(%"class.std::basic_string"* %this, i64 %_Size_increase, i8 %_Fn.coerce, i8* %_Args1, i64 %_Args) #1 comdat align 2 {
entry:
  %_Fn = alloca %class.anon.0, align 1
  %_Args.addr = alloca i64, align 8
  %_Args.addr2 = alloca i8*, align 8
  %_Size_increase.addr = alloca i64, align 8
  %this.addr = alloca %"class.std::basic_string"*, align 8
  %_My_data = alloca %"class.std::_String_val"*, align 8
  %_Old_size = alloca i64, align 8
  %_New_size = alloca i64, align 8
  %_Old_capacity = alloca i64, align 8
  %_New_capacity = alloca i64, align 8
  %_Al = alloca %"class.std::allocator"*, align 8
  %_New_ptr = alloca i8*, align 8
  %_Raw_new = alloca i8*, align 8
  %_Old_ptr = alloca i8*, align 8
  %coerce.dive = getelementptr inbounds %class.anon.0, %class.anon.0* %_Fn, i32 0, i32 0
  store i8 %_Fn.coerce, i8* %coerce.dive, align 1
  store i64 %_Args, i64* %_Args.addr, align 8
  store i8* %_Args1, i8** %_Args.addr2, align 8
  store i64 %_Size_increase, i64* %_Size_increase.addr, align 8
  store %"class.std::basic_string"* %this, %"class.std::basic_string"** %this.addr, align 8
  %this3 = load %"class.std::basic_string"*, %"class.std::basic_string"** %this.addr, align 8
  %_Mypair = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this3, i32 0, i32 0
  %_Myval2 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair, i32 0, i32 0
  store %"class.std::_String_val"* %_Myval2, %"class.std::_String_val"** %_My_data, align 8
  %0 = load %"class.std::_String_val"*, %"class.std::_String_val"** %_My_data, align 8
  %_Mysize = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %0, i32 0, i32 1
  %1 = load i64, i64* %_Mysize, align 8
  store i64 %1, i64* %_Old_size, align 8
  %call = call i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(%"class.std::basic_string"* %this3) #13
  %2 = load i64, i64* %_Old_size, align 8
  %sub = sub i64 %call, %2
  %3 = load i64, i64* %_Size_increase.addr, align 8
  %cmp = icmp ult i64 %sub, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @"?_Xlen_string@std@@YAXXZ"() #15
  unreachable

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %_Old_size, align 8
  %5 = load i64, i64* %_Size_increase.addr, align 8
  %add = add i64 %4, %5
  store i64 %add, i64* %_New_size, align 8
  %6 = load %"class.std::_String_val"*, %"class.std::_String_val"** %_My_data, align 8
  %_Myres = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %6, i32 0, i32 2
  %7 = load i64, i64* %_Myres, align 8
  store i64 %7, i64* %_Old_capacity, align 8
  %8 = load i64, i64* %_New_size, align 8
  %call4 = call i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"(%"class.std::basic_string"* %this3, i64 %8) #13
  store i64 %call4, i64* %_New_capacity, align 8
  %call5 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(%"class.std::basic_string"* %this3) #13
  store %"class.std::allocator"* %call5, %"class.std::allocator"** %_Al, align 8
  %9 = load %"class.std::allocator"*, %"class.std::allocator"** %_Al, align 8
  %10 = load i64, i64* %_New_capacity, align 8
  %add6 = add i64 %10, 1
  %call7 = call i8* @"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"(%"class.std::allocator"* %9, i64 %add6)
  store i8* %call7, i8** %_New_ptr, align 8
  %11 = load %"class.std::_String_val"*, %"class.std::_String_val"** %_My_data, align 8
  %12 = bitcast %"class.std::_String_val"* %11 to %"struct.std::_Container_base0"*
  call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(%"struct.std::_Container_base0"* %12) #13
  %13 = load i64, i64* %_New_size, align 8
  %14 = load %"class.std::_String_val"*, %"class.std::_String_val"** %_My_data, align 8
  %_Mysize8 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %14, i32 0, i32 1
  store i64 %13, i64* %_Mysize8, align 8
  %15 = load i64, i64* %_New_capacity, align 8
  %16 = load %"class.std::_String_val"*, %"class.std::_String_val"** %_My_data, align 8
  %_Myres9 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %16, i32 0, i32 2
  store i64 %15, i64* %_Myres9, align 8
  %17 = load i8*, i8** %_New_ptr, align 8
  %call10 = call i8* @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(i8* %17) #13
  store i8* %call10, i8** %_Raw_new, align 8
  %18 = load i64, i64* %_Old_capacity, align 8
  %cmp11 = icmp ule i64 16, %18
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  %19 = load %"class.std::_String_val"*, %"class.std::_String_val"** %_My_data, align 8
  %_Bx = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %19, i32 0, i32 0
  %_Ptr = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %_Bx to i8**
  %20 = load i8*, i8** %_Ptr, align 8
  store i8* %20, i8** %_Old_ptr, align 8
  %21 = load i64, i64* %_Args.addr, align 8
  %22 = load i8*, i8** %_Args.addr2, align 8
  %23 = load i64, i64* %_Old_size, align 8
  %24 = load i8*, i8** %_Old_ptr, align 8
  %call13 = call i8* @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(i8* %24) #13
  %25 = load i8*, i8** %_Raw_new, align 8
  call void @"??R<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@QEBA?A?<auto>@@QEAD0101@Z"(%class.anon.0* %_Fn, i8* %25, i8* %call13, i64 %23, i8* %22, i64 %21)
  %26 = load %"class.std::allocator"*, %"class.std::allocator"** %_Al, align 8
  %27 = load i64, i64* %_Old_capacity, align 8
  %add14 = add i64 %27, 1
  %28 = load i8*, i8** %_Old_ptr, align 8
  call void @"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z"(%"class.std::allocator"* %26, i8* %28, i64 %add14)
  %29 = load i8*, i8** %_New_ptr, align 8
  %30 = load %"class.std::_String_val"*, %"class.std::_String_val"** %_My_data, align 8
  %_Bx15 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %30, i32 0, i32 0
  %_Ptr16 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %_Bx15 to i8**
  store i8* %29, i8** %_Ptr16, align 8
  br label %if.end20

if.else:                                          ; preds = %if.end
  %31 = load i64, i64* %_Args.addr, align 8
  %32 = load i8*, i8** %_Args.addr2, align 8
  %33 = load i64, i64* %_Old_size, align 8
  %34 = load %"class.std::_String_val"*, %"class.std::_String_val"** %_My_data, align 8
  %_Bx17 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %34, i32 0, i32 0
  %_Buf = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %_Bx17 to [16 x i8]*
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %_Buf, i64 0, i64 0
  %35 = load i8*, i8** %_Raw_new, align 8
  call void @"??R<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@QEBA?A?<auto>@@QEAD0101@Z"(%class.anon.0* %_Fn, i8* %35, i8* %arraydecay, i64 %33, i8* %32, i64 %31)
  %36 = load %"class.std::_String_val"*, %"class.std::_String_val"** %_My_data, align 8
  %_Bx18 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %36, i32 0, i32 0
  %_Ptr19 = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %_Bx18 to i8**
  call void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(i8** nonnull align 8 dereferenceable(8) %_Ptr19, i8** nonnull align 8 dereferenceable(8) %_New_ptr) #13
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then12
  ret %"class.std::basic_string"* %this3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??R<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@QEBA?A?<auto>@@QEAD0101@Z"(%class.anon.0* %this, i8* %_New_ptr, i8* %_Old_ptr, i64 %_Old_size, i8* %_Ptr, i64 %_Count) #2 comdat align 2 {
entry:
  %_Count.addr = alloca i64, align 8
  %_Ptr.addr = alloca i8*, align 8
  %_Old_size.addr = alloca i64, align 8
  %_Old_ptr.addr = alloca i8*, align 8
  %_New_ptr.addr = alloca i8*, align 8
  %this.addr = alloca %class.anon.0*, align 8
  %ref.tmp = alloca i8, align 1
  store i64 %_Count, i64* %_Count.addr, align 8
  store i8* %_Ptr, i8** %_Ptr.addr, align 8
  store i64 %_Old_size, i64* %_Old_size.addr, align 8
  store i8* %_Old_ptr, i8** %_Old_ptr.addr, align 8
  store i8* %_New_ptr, i8** %_New_ptr.addr, align 8
  store %class.anon.0* %this, %class.anon.0** %this.addr, align 8
  %this1 = load %class.anon.0*, %class.anon.0** %this.addr, align 8
  %0 = load i64, i64* %_Old_size.addr, align 8
  %1 = load i8*, i8** %_Old_ptr.addr, align 8
  %2 = load i8*, i8** %_New_ptr.addr, align 8
  %call = call i8* @"?copy@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(i8* %2, i8* %1, i64 %0) #13
  %3 = load i64, i64* %_Count.addr, align 8
  %4 = load i8*, i8** %_Ptr.addr, align 8
  %5 = load i8*, i8** %_New_ptr.addr, align 8
  %6 = load i64, i64* %_Old_size.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6
  %call2 = call i8* @"?copy@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(i8* %add.ptr, i8* %4, i64 %3) #13
  store i8 0, i8* %ref.tmp, align 1
  %7 = load i8*, i8** %_New_ptr.addr, align 8
  %8 = load i64, i64* %_Old_size.addr, align 8
  %9 = load i64, i64* %_Count.addr, align 8
  %add = add i64 %8, %9
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %add
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(i8* nonnull align 1 dereferenceable(1) %arrayidx, i8* nonnull align 1 dereferenceable(1) %ref.tmp) #13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"(%"class.std::_String_val"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_String_val"*, align 8
  %_Result = alloca i8*, align 8
  store %"class.std::_String_val"* %this, %"class.std::_String_val"** %this.addr, align 8
  %this1 = load %"class.std::_String_val"*, %"class.std::_String_val"** %this.addr, align 8
  %_Bx = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %this1, i32 0, i32 0
  %_Buf = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %_Bx to [16 x i8]*
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %_Buf, i64 0, i64 0
  store i8* %arraydecay, i8** %_Result, align 8
  %call = call zeroext i1 @"?_Large_string_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(%"class.std::_String_val"* %this1) #13
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_Bx2 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %this1, i32 0, i32 0
  %_Ptr = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %_Bx2 to i8**
  %0 = load i8*, i8** %_Ptr, align 8
  %call3 = call i8* @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(i8* %0) #13
  store i8* %call3, i8** %_Result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %_Result, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"??$move@AEAV?$allocator@D@std@@@std@@YA$$QEAV?$allocator@D@0@AEAV10@@Z"(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %_Arg) #2 comdat {
entry:
  %_Arg.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %_Arg, %"class.std::allocator"** %_Arg.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %_Arg.addr, align 8
  ret %"class.std::allocator"* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::_Compressed_pair"* @"??$?0V?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@$$QEAV?$allocator@D@1@@Z"(%"class.std::_Compressed_pair"* returned %this, i8 %.coerce, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %_Val1) unnamed_addr #1 comdat align 2 {
entry:
  %0 = alloca %"struct.std::_One_then_variadic_args_t", align 1
  %_Val1.addr = alloca %"class.std::allocator"*, align 8
  %this.addr = alloca %"class.std::_Compressed_pair"*, align 8
  %coerce.dive = getelementptr inbounds %"struct.std::_One_then_variadic_args_t", %"struct.std::_One_then_variadic_args_t"* %0, i32 0, i32 0
  store i8 %.coerce, i8* %coerce.dive, align 1
  store %"class.std::allocator"* %_Val1, %"class.std::allocator"** %_Val1.addr, align 8
  store %"class.std::_Compressed_pair"* %this, %"class.std::_Compressed_pair"** %this.addr, align 8
  %this1 = load %"class.std::_Compressed_pair"*, %"class.std::_Compressed_pair"** %this.addr, align 8
  %1 = bitcast %"class.std::_Compressed_pair"* %this1 to %"class.std::allocator"*
  %2 = load %"class.std::allocator"*, %"class.std::allocator"** %_Val1.addr, align 8
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"??$forward@V?$allocator@D@std@@@std@@YA$$QEAV?$allocator@D@0@AEAV10@@Z"(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %2) #13
  %_Myval2 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %this1, i32 0, i32 0
  %call2 = call %"class.std::_String_val"* @"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(%"class.std::_String_val"* %_Myval2)
  ret %"class.std::_Compressed_pair"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z"(%"struct.std::_Container_base0"* %this, %"struct.std::_Fake_allocator"* nonnull align 1 dereferenceable(1) %0) #2 comdat align 2 {
entry:
  %.addr = alloca %"struct.std::_Fake_allocator"*, align 8
  %this.addr = alloca %"struct.std::_Container_base0"*, align 8
  store %"struct.std::_Fake_allocator"* %0, %"struct.std::_Fake_allocator"** %.addr, align 8
  store %"struct.std::_Container_base0"* %this, %"struct.std::_Container_base0"** %this.addr, align 8
  %this1 = load %"struct.std::_Container_base0"*, %"struct.std::_Container_base0"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Take_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@U?$integral_constant@_N$00@2@@Z"(%"class.std::basic_string"* %this, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %_Right, i8 %.coerce) #2 comdat align 2 {
entry:
  %0 = alloca %"struct.std::integral_constant", align 1
  %_Right.addr = alloca %"class.std::basic_string"*, align 8
  %this.addr = alloca %"class.std::basic_string"*, align 8
  %coerce.dive = getelementptr inbounds %"struct.std::integral_constant", %"struct.std::integral_constant"* %0, i32 0, i32 0
  store i8 %.coerce, i8* %coerce.dive, align 1
  store %"class.std::basic_string"* %_Right, %"class.std::basic_string"** %_Right.addr, align 8
  store %"class.std::basic_string"* %this, %"class.std::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::basic_string"*, %"class.std::basic_string"** %this.addr, align 8
  %1 = load %"class.std::basic_string"*, %"class.std::basic_string"** %_Right.addr, align 8
  call void @"?_Memcpy_val_from@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@@Z"(%"class.std::basic_string"* %this1, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %1) #13
  %2 = load %"class.std::basic_string"*, %"class.std::basic_string"** %_Right.addr, align 8
  call void @"?_Tidy_init@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(%"class.std::basic_string"* %2) #13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"??$forward@V?$allocator@D@std@@@std@@YA$$QEAV?$allocator@D@0@AEAV10@@Z"(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %_Arg) #2 comdat {
entry:
  %_Arg.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %_Arg, %"class.std::allocator"** %_Arg.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %_Arg.addr, align 8
  ret %"class.std::allocator"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Memcpy_val_from@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@@Z"(%"class.std::basic_string"* %this, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %_Right) #2 comdat align 2 {
entry:
  %_Right.addr = alloca %"class.std::basic_string"*, align 8
  %this.addr = alloca %"class.std::basic_string"*, align 8
  %_My_data_mem = alloca i8*, align 8
  %_Right_data_mem = alloca i8*, align 8
  store %"class.std::basic_string"* %_Right, %"class.std::basic_string"** %_Right.addr, align 8
  store %"class.std::basic_string"* %this, %"class.std::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::basic_string"*, %"class.std::basic_string"** %this.addr, align 8
  %_Mypair = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval2 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair, i32 0, i32 0
  %call = call %"class.std::_String_val"* @"??$addressof@V?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@YAPEAV?$_String_val@U?$_Simple_types@D@std@@@0@AEAV10@@Z"(%"class.std::_String_val"* nonnull align 8 dereferenceable(32) %_Myval2) #13
  %0 = bitcast %"class.std::_String_val"* %call to i8*
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 0
  store i8* %add.ptr, i8** %_My_data_mem, align 8
  %1 = load %"class.std::basic_string"*, %"class.std::basic_string"** %_Right.addr, align 8
  %_Mypair2 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %1, i32 0, i32 0
  %_Myval23 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair2, i32 0, i32 0
  %call4 = call %"class.std::_String_val"* @"??$addressof@$$CBV?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@YAPEBV?$_String_val@U?$_Simple_types@D@std@@@0@AEBV10@@Z"(%"class.std::_String_val"* nonnull align 8 dereferenceable(32) %_Myval23) #13
  %2 = bitcast %"class.std::_String_val"* %call4 to i8*
  %add.ptr5 = getelementptr inbounds i8, i8* %2, i64 0
  store i8* %add.ptr5, i8** %_Right_data_mem, align 8
  %3 = load i8*, i8** %_My_data_mem, align 8
  %4 = load i8*, i8** %_Right_data_mem, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %4, i64 32, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::_String_val"* @"??$addressof@$$CBV?$_String_val@U?$_Simple_types@D@std@@@std@@@std@@YAPEBV?$_String_val@U?$_Simple_types@D@std@@@0@AEBV10@@Z"(%"class.std::_String_val"* nonnull align 8 dereferenceable(32) %_Val) #2 comdat {
entry:
  %_Val.addr = alloca %"class.std::_String_val"*, align 8
  store %"class.std::_String_val"* %_Val, %"class.std::_String_val"** %_Val.addr, align 8
  %0 = load %"class.std::_String_val"*, %"class.std::_String_val"** %_Val.addr, align 8
  ret %"class.std::_String_val"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?select_on_container_copy_construction@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA?AV?$allocator@D@2@AEBV32@@Z"(%"class.std::allocator"* noalias sret align 1 %agg.result, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %_Al) #2 comdat align 2 {
entry:
  %result.ptr = alloca i8*, align 8
  %_Al.addr = alloca %"class.std::allocator"*, align 8
  %0 = bitcast %"class.std::allocator"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.std::allocator"* %_Al, %"class.std::allocator"** %_Al.addr, align 8
  %1 = load %"class.std::allocator"*, %"class.std::allocator"** %_Al.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @"?_Construct_lv_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@@Z"(%"class.std::basic_string"* %this, %"class.std::basic_string"* nonnull align 8 dereferenceable(32) %_Right) #1 comdat align 2 {
entry:
  %_Right.addr = alloca %"class.std::basic_string"*, align 8
  %this.addr = alloca %"class.std::basic_string"*, align 8
  %_Right_data = alloca %"class.std::_String_val"*, align 8
  %_Right_size = alloca i64, align 8
  %_Right_ptr = alloca i8*, align 8
  %_My_data = alloca %"class.std::_String_val"*, align 8
  %_Al = alloca %"class.std::allocator"*, align 8
  %_New_capacity = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  %ref.tmp8 = alloca i64, align 8
  %_New_array = alloca i8*, align 8
  store %"class.std::basic_string"* %_Right, %"class.std::basic_string"** %_Right.addr, align 8
  store %"class.std::basic_string"* %this, %"class.std::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::basic_string"*, %"class.std::basic_string"** %this.addr, align 8
  %0 = load %"class.std::basic_string"*, %"class.std::basic_string"** %_Right.addr, align 8
  %_Mypair = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %0, i32 0, i32 0
  %_Myval2 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair, i32 0, i32 0
  store %"class.std::_String_val"* %_Myval2, %"class.std::_String_val"** %_Right_data, align 8
  %1 = load %"class.std::_String_val"*, %"class.std::_String_val"** %_Right_data, align 8
  %_Mysize = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %1, i32 0, i32 1
  %2 = load i64, i64* %_Mysize, align 8
  store i64 %2, i64* %_Right_size, align 8
  %3 = load %"class.std::_String_val"*, %"class.std::_String_val"** %_Right_data, align 8
  %call = call i8* @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"(%"class.std::_String_val"* %3) #13
  store i8* %call, i8** %_Right_ptr, align 8
  %_Mypair2 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval23 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair2, i32 0, i32 0
  store %"class.std::_String_val"* %_Myval23, %"class.std::_String_val"** %_My_data, align 8
  %4 = load i64, i64* %_Right_size, align 8
  %cmp = icmp ult i64 %4, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %_Right_ptr, align 8
  %6 = load %"class.std::_String_val"*, %"class.std::_String_val"** %_My_data, align 8
  %_Bx = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %6, i32 0, i32 0
  %_Buf = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %_Bx to [16 x i8]*
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %_Buf, i64 0, i64 0
  %call4 = call i8* @"?copy@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(i8* %arraydecay, i8* %5, i64 16) #13
  %7 = load i64, i64* %_Right_size, align 8
  %8 = load %"class.std::_String_val"*, %"class.std::_String_val"** %_My_data, align 8
  %_Mysize5 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %8, i32 0, i32 1
  store i64 %7, i64* %_Mysize5, align 8
  %9 = load %"class.std::_String_val"*, %"class.std::_String_val"** %_My_data, align 8
  %_Myres = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %9, i32 0, i32 2
  store i64 15, i64* %_Myres, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call6 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(%"class.std::basic_string"* %this1) #13
  store %"class.std::allocator"* %call6, %"class.std::allocator"** %_Al, align 8
  %call7 = call i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(%"class.std::basic_string"* %this1) #13
  store i64 %call7, i64* %ref.tmp, align 8
  %10 = load i64, i64* %_Right_size, align 8
  %or = or i64 %10, 15
  store i64 %or, i64* %ref.tmp8, align 8
  %call9 = call nonnull align 8 dereferenceable(8) i64* @"??$_Min_value@_K@std@@YAAEB_KAEB_K0@Z"(i64* nonnull align 8 dereferenceable(8) %ref.tmp8, i64* nonnull align 8 dereferenceable(8) %ref.tmp) #13
  %11 = load i64, i64* %call9, align 8
  store i64 %11, i64* %_New_capacity, align 8
  %12 = load %"class.std::allocator"*, %"class.std::allocator"** %_Al, align 8
  %13 = load i64, i64* %_New_capacity, align 8
  %add = add i64 %13, 1
  %call10 = call i8* @"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"(%"class.std::allocator"* %12, i64 %add)
  store i8* %call10, i8** %_New_array, align 8
  %14 = load %"class.std::_String_val"*, %"class.std::_String_val"** %_My_data, align 8
  %_Bx11 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %14, i32 0, i32 0
  %_Ptr = bitcast %"union.std::_String_val<std::_Simple_types<char>>::_Bxty"* %_Bx11 to i8**
  call void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(i8** nonnull align 8 dereferenceable(8) %_Ptr, i8** nonnull align 8 dereferenceable(8) %_New_array) #13
  %15 = load i64, i64* %_Right_size, align 8
  %add12 = add i64 %15, 1
  %16 = load i8*, i8** %_Right_ptr, align 8
  %17 = load i8*, i8** %_New_array, align 8
  %call13 = call i8* @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(i8* %17) #13
  %call14 = call i8* @"?copy@?$_Narrow_char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(i8* %call13, i8* %16, i64 %add12) #13
  %18 = load i64, i64* %_Right_size, align 8
  %19 = load %"class.std::_String_val"*, %"class.std::_String_val"** %_My_data, align 8
  %_Mysize15 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %19, i32 0, i32 1
  store i64 %18, i64* %_Mysize15, align 8
  %20 = load i64, i64* %_New_capacity, align 8
  %21 = load %"class.std::_String_val"*, %"class.std::_String_val"** %_My_data, align 8
  %_Myres16 = getelementptr inbounds %"class.std::_String_val", %"class.std::_String_val"* %21, i32 0, i32 2
  store i64 %20, i64* %_Myres16, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ"(%"class.std::basic_string"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::basic_string"*, align 8
  store %"class.std::basic_string"* %this, %"class.std::basic_string"** %this.addr, align 8
  %this1 = load %"class.std::basic_string"*, %"class.std::basic_string"** %this.addr, align 8
  %_Mypair = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this1, i32 0, i32 0
  %_Myval2 = getelementptr inbounds %"class.std::_Compressed_pair", %"class.std::_Compressed_pair"* %_Mypair, i32 0, i32 0
  %call = call i8* @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"(%"class.std::_String_val"* %_Myval2) #13
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::exception"* @"??0exception@std@@QEAA@QEBD@Z"(%"class.std::exception"* returned %this, i8* %_Message) unnamed_addr #2 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %_Message.addr = alloca i8*, align 8
  %this.addr = alloca %"class.std::exception"*, align 8
  %_InitData = alloca %struct.__std_exception_data, align 8
  store i8* %_Message, i8** %_Message.addr, align 8
  store %"class.std::exception"* %this, %"class.std::exception"** %this.addr, align 8
  %this1 = load %"class.std::exception"*, %"class.std::exception"** %this.addr, align 8
  %0 = bitcast %"class.std::exception"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** @"??_7exception@std@@6B@" to i32 (...)**), i32 (...)*** %0, align 8
  %_Data = getelementptr inbounds %"class.std::exception", %"class.std::exception"* %this1, i32 0, i32 1
  %1 = bitcast %struct.__std_exception_data* %_Data to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 16, i1 false)
  %_What = getelementptr inbounds %struct.__std_exception_data, %struct.__std_exception_data* %_InitData, i32 0, i32 0
  %2 = load i8*, i8** %_Message.addr, align 8
  store i8* %2, i8** %_What, align 8
  %_DoFree = getelementptr inbounds %struct.__std_exception_data, %struct.__std_exception_data* %_InitData, i32 0, i32 1
  store i8 1, i8* %_DoFree, align 8
  %_Data2 = getelementptr inbounds %"class.std::exception", %"class.std::exception"* %this1, i32 0, i32 1
  invoke void @__std_exception_copy(%struct.__std_exception_data* %_InitData, %struct.__std_exception_data* %_Data2)
          to label %invoke.cont unwind label %terminate

invoke.cont:                                      ; preds = %entry
  ret %"class.std::exception"* %this1

terminate:                                        ; preds = %entry
  %3 = cleanuppad within none []
  call void @__std_terminate() #14 [ "funclet"(token %3) ]
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"??_Gruntime_error@std@@UEAAPEAXI@Z"(%"class.std::runtime_error"* %this, i32 %should_call_delete) unnamed_addr #2 comdat align 2 {
entry:
  %retval = alloca i8*, align 8
  %should_call_delete.addr = alloca i32, align 4
  %this.addr = alloca %"class.std::runtime_error"*, align 8
  store i32 %should_call_delete, i32* %should_call_delete.addr, align 4
  store %"class.std::runtime_error"* %this, %"class.std::runtime_error"** %this.addr, align 8
  %this1 = load %"class.std::runtime_error"*, %"class.std::runtime_error"** %this.addr, align 8
  %0 = bitcast %"class.std::runtime_error"* %this1 to i8*
  store i8* %0, i8** %retval, align 8
  %should_call_delete2 = load i32, i32* %should_call_delete.addr, align 4
  call void @"??1runtime_error@std@@UEAA@XZ"(%"class.std::runtime_error"* %this1) #13
  %1 = icmp eq i32 %should_call_delete2, 0
  br i1 %1, label %dtor.continue, label %dtor.call_delete

dtor.call_delete:                                 ; preds = %entry
  %2 = bitcast %"class.std::runtime_error"* %this1 to i8*
  call void @"??3@YAXPEAX@Z"(i8* %2) #17
  br label %dtor.continue

dtor.continue:                                    ; preds = %dtor.call_delete, %entry
  %3 = load i8*, i8** %retval, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1runtime_error@std@@UEAA@XZ"(%"class.std::runtime_error"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::runtime_error"*, align 8
  store %"class.std::runtime_error"* %this, %"class.std::runtime_error"** %this.addr, align 8
  %this1 = load %"class.std::runtime_error"*, %"class.std::runtime_error"** %this.addr, align 8
  %0 = bitcast %"class.std::runtime_error"* %this1 to %"class.std::exception"*
  call void @"??1exception@std@@UEAA@XZ"(%"class.std::exception"* %0) #13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1_System_error@std@@UEAA@XZ"(%"class.std::_System_error"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_System_error"*, align 8
  store %"class.std::_System_error"* %this, %"class.std::_System_error"** %this.addr, align 8
  %this1 = load %"class.std::_System_error"*, %"class.std::_System_error"** %this.addr, align 8
  %0 = bitcast %"class.std::_System_error"* %this1 to %"class.std::runtime_error"*
  call void @"??1runtime_error@std@@UEAA@XZ"(%"class.std::runtime_error"* %0) #13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1system_error@std@@UEAA@XZ"(%"class.std::system_error"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::system_error"*, align 8
  store %"class.std::system_error"* %this, %"class.std::system_error"** %this.addr, align 8
  %this1 = load %"class.std::system_error"*, %"class.std::system_error"** %this.addr, align 8
  %0 = bitcast %"class.std::system_error"* %this1 to %"class.std::_System_error"*
  call void @"??1_System_error@std@@UEAA@XZ"(%"class.std::_System_error"* %0) #13
  ret void
}

; Function Attrs: nounwind
declare dso_local zeroext i1 @"?uncaught_exception@std@@YA_NXZ"() #3

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @"?_Osfx@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAXXZ"(%"class.std::basic_ostream"* %this) #1 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %this.addr = alloca %"class.std::basic_ostream"*, align 8
  store %"class.std::basic_ostream"* %this, %"class.std::basic_ostream"** %this.addr, align 8
  %this1 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %this.addr, align 8
  %0 = bitcast %"class.std::basic_ostream"* %this1 to i8*
  %vbptr = getelementptr inbounds i8, i8* %0, i64 0
  %1 = bitcast i8* %vbptr to i32**
  %vbtable = load i32*, i32** %1, align 8
  %2 = getelementptr inbounds i32, i32* %vbtable, i32 1
  %vbase_offs = load i32, i32* %2, align 4
  %3 = sext i32 %vbase_offs to i64
  %4 = add nsw i64 0, %3
  %5 = bitcast %"class.std::basic_ostream"* %this1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %4
  %6 = bitcast i8* %add.ptr to %"class.std::ios_base"*
  %call = invoke zeroext i1 @"?good@ios_base@std@@QEBA_NXZ"(%"class.std::ios_base"* %6)
          to label %invoke.cont unwind label %catch.dispatch

invoke.cont:                                      ; preds = %entry
  br i1 %call, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %invoke.cont
  %7 = bitcast %"class.std::basic_ostream"* %this1 to i8*
  %vbptr2 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = bitcast i8* %vbptr2 to i32**
  %vbtable3 = load i32*, i32** %8, align 8
  %9 = getelementptr inbounds i32, i32* %vbtable3, i32 1
  %vbase_offs4 = load i32, i32* %9, align 4
  %10 = sext i32 %vbase_offs4 to i64
  %11 = add nsw i64 0, %10
  %12 = bitcast %"class.std::basic_ostream"* %this1 to i8*
  %add.ptr5 = getelementptr inbounds i8, i8* %12, i64 %11
  %13 = bitcast i8* %add.ptr5 to %"class.std::ios_base"*
  %call6 = call i32 @"?flags@ios_base@std@@QEBAHXZ"(%"class.std::ios_base"* %13)
  %and = and i32 %call6, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end20

if.then:                                          ; preds = %land.lhs.true
  %14 = bitcast %"class.std::basic_ostream"* %this1 to i8*
  %vbptr7 = getelementptr inbounds i8, i8* %14, i64 0
  %15 = bitcast i8* %vbptr7 to i32**
  %vbtable8 = load i32*, i32** %15, align 8
  %16 = getelementptr inbounds i32, i32* %vbtable8, i32 1
  %vbase_offs9 = load i32, i32* %16, align 4
  %17 = sext i32 %vbase_offs9 to i64
  %18 = add nsw i64 0, %17
  %19 = bitcast %"class.std::basic_ostream"* %this1 to i8*
  %add.ptr10 = getelementptr inbounds i8, i8* %19, i64 %18
  %20 = bitcast i8* %add.ptr10 to %"class.std::basic_ios"*
  %call11 = call %"class.std::basic_streambuf"* @"?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ"(%"class.std::basic_ios"* %20)
  %call13 = invoke i32 @"?pubsync@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHXZ"(%"class.std::basic_streambuf"* %call11)
          to label %invoke.cont12 unwind label %catch.dispatch

invoke.cont12:                                    ; preds = %if.then
  %cmp = icmp eq i32 %call13, -1
  br i1 %cmp, label %if.then14, label %if.end

if.then14:                                        ; preds = %invoke.cont12
  %21 = bitcast %"class.std::basic_ostream"* %this1 to i8*
  %vbptr15 = getelementptr inbounds i8, i8* %21, i64 0
  %22 = bitcast i8* %vbptr15 to i32**
  %vbtable16 = load i32*, i32** %22, align 8
  %23 = getelementptr inbounds i32, i32* %vbtable16, i32 1
  %vbase_offs17 = load i32, i32* %23, align 4
  %24 = sext i32 %vbase_offs17 to i64
  %25 = add nsw i64 0, %24
  %26 = bitcast %"class.std::basic_ostream"* %this1 to i8*
  %add.ptr18 = getelementptr inbounds i8, i8* %26, i64 %25
  %27 = bitcast i8* %add.ptr18 to %"class.std::basic_ios"*
  invoke void @"?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z"(%"class.std::basic_ios"* %27, i32 4, i1 zeroext false)
          to label %invoke.cont19 unwind label %catch.dispatch

catch.dispatch:                                   ; preds = %if.then14, %if.then, %entry
  %28 = catchswitch within none [label %catch] unwind to caller

catch:                                            ; preds = %catch.dispatch
  %29 = catchpad within %28 [i8* null, i32 64, i8* null]
  catchret from %29 to label %catchret.dest

catchret.dest:                                    ; preds = %catch
  br label %try.cont

try.cont:                                         ; preds = %catchret.dest, %if.end20
  ret void

invoke.cont19:                                    ; preds = %if.then14
  br label %if.end

if.end:                                           ; preds = %invoke.cont19, %invoke.cont12
  br label %if.end20

if.end20:                                         ; preds = %if.end, %land.lhs.true, %invoke.cont
  br label %try.cont
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @"?put@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@D@Z"(%"class.std::basic_ostream"* %this, i8 %_Ch) #1 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %_Ch.addr = alloca i8, align 1
  %this.addr = alloca %"class.std::basic_ostream"*, align 8
  %_State = alloca i32, align 4
  %_Ok = alloca %"class.std::basic_ostream<char, std::char_traits<char>>::sentry", align 8
  %ref.tmp = alloca i32, align 4
  %ref.tmp5 = alloca i32, align 4
  store i8 %_Ch, i8* %_Ch.addr, align 1
  store %"class.std::basic_ostream"* %this, %"class.std::basic_ostream"** %this.addr, align 8
  %this1 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %this.addr, align 8
  store i32 0, i32* %_State, align 4
  %call = call %"class.std::basic_ostream<char, std::char_traits<char>>::sentry"* @"??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z"(%"class.std::basic_ostream<char, std::char_traits<char>>::sentry"* %_Ok, %"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %this1)
  %call2 = call zeroext i1 @"??Bsentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEBA_NXZ"(%"class.std::basic_ostream<char, std::char_traits<char>>::sentry"* %_Ok)
  br i1 %call2, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32, i32* %_State, align 4
  %or = or i32 %0, 4
  store i32 %or, i32* %_State, align 4
  br label %if.end15

if.else:                                          ; preds = %entry
  %1 = bitcast %"class.std::basic_ostream"* %this1 to i8*
  %vbptr = getelementptr inbounds i8, i8* %1, i64 0
  %2 = bitcast i8* %vbptr to i32**
  %vbtable = load i32*, i32** %2, align 8
  %3 = getelementptr inbounds i32, i32* %vbtable, i32 1
  %vbase_offs = load i32, i32* %3, align 4
  %4 = sext i32 %vbase_offs to i64
  %5 = add nsw i64 0, %4
  %6 = bitcast %"class.std::basic_ostream"* %this1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %5
  %7 = bitcast i8* %add.ptr to %"class.std::basic_ios"*
  %call3 = call %"class.std::basic_streambuf"* @"?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ"(%"class.std::basic_ios"* %7)
  %8 = load i8, i8* %_Ch.addr, align 1
  %call4 = invoke i32 @"?sputc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHD@Z"(%"class.std::basic_streambuf"* %call3, i8 %8)
          to label %invoke.cont unwind label %catch.dispatch

catch.dispatch:                                   ; preds = %if.else
  %9 = catchswitch within none [label %catch] unwind label %ehcleanup

catch:                                            ; preds = %catch.dispatch
  %10 = catchpad within %9 [i8* null, i32 64, i8* null]
  %11 = bitcast %"class.std::basic_ostream"* %this1 to i8*
  %vbptr10 = getelementptr inbounds i8, i8* %11, i64 0
  %12 = bitcast i8* %vbptr10 to i32**
  %vbtable11 = load i32*, i32** %12, align 8
  %13 = getelementptr inbounds i32, i32* %vbtable11, i32 1
  %vbase_offs12 = load i32, i32* %13, align 4
  %14 = sext i32 %vbase_offs12 to i64
  %15 = add nsw i64 0, %14
  %16 = bitcast %"class.std::basic_ostream"* %this1 to i8*
  %add.ptr13 = getelementptr inbounds i8, i8* %16, i64 %15
  %17 = bitcast i8* %add.ptr13 to %"class.std::basic_ios"*
  invoke void @"?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z"(%"class.std::basic_ios"* %17, i32 4, i1 zeroext true) [ "funclet"(token %10) ]
          to label %invoke.cont14 unwind label %ehcleanup

invoke.cont14:                                    ; preds = %catch
  catchret from %10 to label %catchret.dest

catchret.dest:                                    ; preds = %invoke.cont14
  br label %try.cont

try.cont:                                         ; preds = %catchret.dest, %if.end
  br label %if.end15

invoke.cont:                                      ; preds = %if.else
  store i32 %call4, i32* %ref.tmp, align 4
  %call6 = call i32 @"?eof@?$_Narrow_char_traits@DH@std@@SAHXZ"() #13
  store i32 %call6, i32* %ref.tmp5, align 4
  %call7 = call zeroext i1 @"?eq_int_type@?$_Narrow_char_traits@DH@std@@SA_NAEBH0@Z"(i32* nonnull align 4 dereferenceable(4) %ref.tmp5, i32* nonnull align 4 dereferenceable(4) %ref.tmp) #13
  br i1 %call7, label %if.then8, label %if.end

if.then8:                                         ; preds = %invoke.cont
  %18 = load i32, i32* %_State, align 4
  %or9 = or i32 %18, 4
  store i32 %or9, i32* %_State, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8, %invoke.cont
  br label %try.cont

if.end15:                                         ; preds = %try.cont, %if.then
  %19 = bitcast %"class.std::basic_ostream"* %this1 to i8*
  %vbptr16 = getelementptr inbounds i8, i8* %19, i64 0
  %20 = bitcast i8* %vbptr16 to i32**
  %vbtable17 = load i32*, i32** %20, align 8
  %21 = getelementptr inbounds i32, i32* %vbtable17, i32 1
  %vbase_offs18 = load i32, i32* %21, align 4
  %22 = sext i32 %vbase_offs18 to i64
  %23 = add nsw i64 0, %22
  %24 = bitcast %"class.std::basic_ostream"* %this1 to i8*
  %add.ptr19 = getelementptr inbounds i8, i8* %24, i64 %23
  %25 = bitcast i8* %add.ptr19 to %"class.std::basic_ios"*
  %26 = load i32, i32* %_State, align 4
  invoke void @"?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z"(%"class.std::basic_ios"* %25, i32 %26, i1 zeroext false)
          to label %invoke.cont20 unwind label %ehcleanup

invoke.cont20:                                    ; preds = %if.end15
  call void @"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"(%"class.std::basic_ostream<char, std::char_traits<char>>::sentry"* %_Ok) #13
  ret %"class.std::basic_ostream"* %this1

ehcleanup:                                        ; preds = %if.end15, %catch, %catch.dispatch
  %27 = cleanuppad within none []
  call void @"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"(%"class.std::basic_ostream<char, std::char_traits<char>>::sentry"* %_Ok) #13 [ "funclet"(token %27) ]
  cleanupret from %27 unwind to caller
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i8 @"?widen@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBADD@Z"(%"class.std::basic_ios"* %this, i8 %_Byte) #1 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %_Byte.addr = alloca i8, align 1
  %this.addr = alloca %"class.std::basic_ios"*, align 8
  %ref.tmp = alloca %"class.std::locale", align 8
  store i8 %_Byte, i8* %_Byte.addr, align 1
  store %"class.std::basic_ios"* %this, %"class.std::basic_ios"** %this.addr, align 8
  %this1 = load %"class.std::basic_ios"*, %"class.std::basic_ios"** %this.addr, align 8
  %0 = bitcast %"class.std::basic_ios"* %this1 to %"class.std::ios_base"*
  call void @"?getloc@ios_base@std@@QEBA?AVlocale@2@XZ"(%"class.std::ios_base"* %0, %"class.std::locale"* sret align 8 %ref.tmp)
  %call = invoke nonnull align 8 dereferenceable(48) %"class.std::ctype"* @"??$use_facet@V?$ctype@D@std@@@std@@YAAEBV?$ctype@D@0@AEBVlocale@0@@Z"(%"class.std::locale"* nonnull align 8 dereferenceable(16) %ref.tmp)
          to label %invoke.cont unwind label %ehcleanup

invoke.cont:                                      ; preds = %entry
  %1 = load i8, i8* %_Byte.addr, align 1
  %call3 = invoke i8 @"?widen@?$ctype@D@std@@QEBADD@Z"(%"class.std::ctype"* %call, i8 %1)
          to label %invoke.cont2 unwind label %ehcleanup

invoke.cont2:                                     ; preds = %invoke.cont
  call void @"??1locale@std@@QEAA@XZ"(%"class.std::locale"* %ref.tmp) #13
  ret i8 %call3

ehcleanup:                                        ; preds = %invoke.cont, %entry
  %2 = cleanuppad within none []
  call void @"??1locale@std@@QEAA@XZ"(%"class.std::locale"* %ref.tmp) #13 [ "funclet"(token %2) ]
  cleanupret from %2 unwind to caller
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(48) %"class.std::ctype"* @"??$use_facet@V?$ctype@D@std@@@std@@YAAEBV?$ctype@D@0@AEBVlocale@0@@Z"(%"class.std::locale"* nonnull align 8 dereferenceable(16) %_Loc) #1 comdat personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %_Loc.addr = alloca %"class.std::locale"*, align 8
  %_Lock = alloca %"class.std::_Lockit", align 4
  %_Psave = alloca %"class.std::locale::facet"*, align 8
  %_Id = alloca i64, align 8
  %_Pf = alloca %"class.std::locale::facet"*, align 8
  %_Pfmod = alloca %"class.std::locale::facet"*, align 8
  %_Psave_guard = alloca %"class.std::unique_ptr", align 8
  store %"class.std::locale"* %_Loc, %"class.std::locale"** %_Loc.addr, align 8
  %call = call %"class.std::_Lockit"* @"??0_Lockit@std@@QEAA@H@Z"(%"class.std::_Lockit"* %_Lock, i32 0) #13
  %0 = load %"class.std::locale::facet"*, %"class.std::locale::facet"** @"?_Psave@?$_Facetptr@V?$ctype@D@std@@@std@@2PEBVfacet@locale@2@EB", align 8
  store %"class.std::locale::facet"* %0, %"class.std::locale::facet"** %_Psave, align 8
  %call1 = invoke i64 @"??Bid@locale@std@@QEAA_KXZ"(%"class.std::locale::id"* @"?id@?$ctype@D@std@@2V0locale@2@A")
          to label %invoke.cont unwind label %ehcleanup16

invoke.cont:                                      ; preds = %entry
  store i64 %call1, i64* %_Id, align 8
  %1 = load %"class.std::locale"*, %"class.std::locale"** %_Loc.addr, align 8
  %2 = load i64, i64* %_Id, align 8
  %call3 = invoke %"class.std::locale::facet"* @"?_Getfacet@locale@std@@QEBAPEBVfacet@12@_K@Z"(%"class.std::locale"* %1, i64 %2)
          to label %invoke.cont2 unwind label %ehcleanup16

invoke.cont2:                                     ; preds = %invoke.cont
  store %"class.std::locale::facet"* %call3, %"class.std::locale::facet"** %_Pf, align 8
  %3 = load %"class.std::locale::facet"*, %"class.std::locale::facet"** %_Pf, align 8
  %tobool = icmp ne %"class.std::locale::facet"* %3, null
  br i1 %tobool, label %if.end15, label %if.then

if.then:                                          ; preds = %invoke.cont2
  %4 = load %"class.std::locale::facet"*, %"class.std::locale::facet"** %_Psave, align 8
  %tobool4 = icmp ne %"class.std::locale::facet"* %4, null
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %5 = load %"class.std::locale::facet"*, %"class.std::locale::facet"** %_Psave, align 8
  store %"class.std::locale::facet"* %5, %"class.std::locale::facet"** %_Pf, align 8
  br label %if.end14

if.else:                                          ; preds = %if.then
  %6 = load %"class.std::locale"*, %"class.std::locale"** %_Loc.addr, align 8
  %call7 = invoke i64 @"?_Getcat@?$ctype@D@std@@SA_KPEAPEBVfacet@locale@2@PEBV42@@Z"(%"class.std::locale::facet"** %_Psave, %"class.std::locale"* %6)
          to label %invoke.cont6 unwind label %ehcleanup16

invoke.cont6:                                     ; preds = %if.else
  %cmp = icmp eq i64 %call7, -1
  br i1 %cmp, label %if.then8, label %if.else10

if.then8:                                         ; preds = %invoke.cont6
  invoke void @"?_Throw_bad_cast@std@@YAXXZ"() #15
          to label %invoke.cont9 unwind label %ehcleanup16

invoke.cont9:                                     ; preds = %if.then8
  unreachable

if.else10:                                        ; preds = %invoke.cont6
  %7 = load %"class.std::locale::facet"*, %"class.std::locale::facet"** %_Psave, align 8
  store %"class.std::locale::facet"* %7, %"class.std::locale::facet"** %_Pfmod, align 8
  %8 = load %"class.std::locale::facet"*, %"class.std::locale::facet"** %_Pfmod, align 8
  %9 = bitcast %"class.std::locale::facet"* %8 to %"class.std::_Facet_base"*
  %call11 = call %"class.std::unique_ptr"* @"??$?0U?$default_delete@V_Facet_base@std@@@std@@$0A@@?$unique_ptr@V_Facet_base@std@@U?$default_delete@V_Facet_base@std@@@2@@std@@QEAA@PEAV_Facet_base@1@@Z"(%"class.std::unique_ptr"* %_Psave_guard, %"class.std::_Facet_base"* %9) #13
  %10 = load %"class.std::locale::facet"*, %"class.std::locale::facet"** %_Pfmod, align 8
  %11 = bitcast %"class.std::locale::facet"* %10 to %"class.std::_Facet_base"*
  invoke void @"?_Facet_Register@std@@YAXPEAV_Facet_base@1@@Z"(%"class.std::_Facet_base"* %11)
          to label %invoke.cont12 unwind label %ehcleanup

invoke.cont12:                                    ; preds = %if.else10
  %12 = load %"class.std::locale::facet"*, %"class.std::locale::facet"** %_Pfmod, align 8
  %13 = bitcast %"class.std::locale::facet"* %12 to void (%"class.std::locale::facet"*)***
  %vtable = load void (%"class.std::locale::facet"*)**, void (%"class.std::locale::facet"*)*** %13, align 8
  %vfn = getelementptr inbounds void (%"class.std::locale::facet"*)*, void (%"class.std::locale::facet"*)** %vtable, i64 1
  %14 = load void (%"class.std::locale::facet"*)*, void (%"class.std::locale::facet"*)** %vfn, align 8
  call void %14(%"class.std::locale::facet"* %12) #13
  %15 = load %"class.std::locale::facet"*, %"class.std::locale::facet"** %_Psave, align 8
  store %"class.std::locale::facet"* %15, %"class.std::locale::facet"** @"?_Psave@?$_Facetptr@V?$ctype@D@std@@@std@@2PEBVfacet@locale@2@EB", align 8
  %16 = load %"class.std::locale::facet"*, %"class.std::locale::facet"** %_Psave, align 8
  store %"class.std::locale::facet"* %16, %"class.std::locale::facet"** %_Pf, align 8
  %call13 = call %"class.std::_Facet_base"* @"?release@?$unique_ptr@V_Facet_base@std@@U?$default_delete@V_Facet_base@std@@@2@@std@@QEAAPEAV_Facet_base@2@XZ"(%"class.std::unique_ptr"* %_Psave_guard) #13
  call void @"??1?$unique_ptr@V_Facet_base@std@@U?$default_delete@V_Facet_base@std@@@2@@std@@QEAA@XZ"(%"class.std::unique_ptr"* %_Psave_guard) #13
  br label %if.end

ehcleanup:                                        ; preds = %if.else10
  %17 = cleanuppad within none []
  call void @"??1?$unique_ptr@V_Facet_base@std@@U?$default_delete@V_Facet_base@std@@@2@@std@@QEAA@XZ"(%"class.std::unique_ptr"* %_Psave_guard) #13 [ "funclet"(token %17) ]
  cleanupret from %17 unwind label %ehcleanup16

if.end:                                           ; preds = %invoke.cont12
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then5
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %invoke.cont2
  %18 = load %"class.std::locale::facet"*, %"class.std::locale::facet"** %_Pf, align 8
  %19 = bitcast %"class.std::locale::facet"* %18 to %"class.std::ctype"*
  call void @"??1_Lockit@std@@QEAA@XZ"(%"class.std::_Lockit"* %_Lock) #13
  ret %"class.std::ctype"* %19

ehcleanup16:                                      ; preds = %ehcleanup, %if.then8, %if.else, %invoke.cont, %entry
  %20 = cleanuppad within none []
  call void @"??1_Lockit@std@@QEAA@XZ"(%"class.std::_Lockit"* %_Lock) #13 [ "funclet"(token %20) ]
  cleanupret from %20 unwind to caller
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?getloc@ios_base@std@@QEBA?AVlocale@2@XZ"(%"class.std::ios_base"* %this, %"class.std::locale"* noalias sret align 8 %agg.result) #2 comdat align 2 {
entry:
  %result.ptr = alloca i8*, align 8
  %this.addr = alloca %"class.std::ios_base"*, align 8
  %0 = bitcast %"class.std::locale"* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.std::ios_base"* %this, %"class.std::ios_base"** %this.addr, align 8
  %this1 = load %"class.std::ios_base"*, %"class.std::ios_base"** %this.addr, align 8
  %_Ploc = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %this1, i32 0, i32 9
  %1 = load %"class.std::locale"*, %"class.std::locale"** %_Ploc, align 8
  %call = call %"class.std::locale"* @"??0locale@std@@QEAA@AEBV01@@Z"(%"class.std::locale"* %agg.result, %"class.std::locale"* nonnull align 8 dereferenceable(16) %1) #13
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i8 @"?widen@?$ctype@D@std@@QEBADD@Z"(%"class.std::ctype"* %this, i8 %_Byte) #1 comdat align 2 {
entry:
  %_Byte.addr = alloca i8, align 1
  %this.addr = alloca %"class.std::ctype"*, align 8
  store i8 %_Byte, i8* %_Byte.addr, align 1
  store %"class.std::ctype"* %this, %"class.std::ctype"** %this.addr, align 8
  %this1 = load %"class.std::ctype"*, %"class.std::ctype"** %this.addr, align 8
  %0 = load i8, i8* %_Byte.addr, align 1
  %1 = bitcast %"class.std::ctype"* %this1 to i8 (%"class.std::ctype"*, i8)***
  %vtable = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %1, align 8
  %vfn = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable, i64 8
  %2 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn, align 8
  %call = call i8 %2(%"class.std::ctype"* %this1, i8 %0)
  ret i8 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1locale@std@@QEAA@XZ"(%"class.std::locale"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::locale"*, align 8
  store %"class.std::locale"* %this, %"class.std::locale"** %this.addr, align 8
  %this1 = load %"class.std::locale"*, %"class.std::locale"** %this.addr, align 8
  %_Ptr = getelementptr inbounds %"class.std::locale", %"class.std::locale"* %this1, i32 0, i32 1
  %0 = load %"class.std::locale::_Locimp"*, %"class.std::locale::_Locimp"** %_Ptr, align 8
  %tobool = icmp ne %"class.std::locale::_Locimp"* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_Ptr2 = getelementptr inbounds %"class.std::locale", %"class.std::locale"* %this1, i32 0, i32 1
  %1 = load %"class.std::locale::_Locimp"*, %"class.std::locale::_Locimp"** %_Ptr2, align 8
  %2 = bitcast %"class.std::locale::_Locimp"* %1 to %"class.std::locale::facet"*
  %3 = bitcast %"class.std::locale::facet"* %2 to %"class.std::_Facet_base"* (%"class.std::locale::facet"*)***
  %vtable = load %"class.std::_Facet_base"* (%"class.std::locale::facet"*)**, %"class.std::_Facet_base"* (%"class.std::locale::facet"*)*** %3, align 8
  %vfn = getelementptr inbounds %"class.std::_Facet_base"* (%"class.std::locale::facet"*)*, %"class.std::_Facet_base"* (%"class.std::locale::facet"*)** %vtable, i64 2
  %4 = load %"class.std::_Facet_base"* (%"class.std::locale::facet"*)*, %"class.std::_Facet_base"* (%"class.std::locale::facet"*)** %vfn, align 8
  %call = call %"class.std::_Facet_base"* %4(%"class.std::locale::facet"* %2) #13
  %isnull = icmp eq %"class.std::_Facet_base"* %call, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %if.then
  %5 = bitcast %"class.std::_Facet_base"* %call to i8* (%"class.std::_Facet_base"*, i32)***
  %vtable3 = load i8* (%"class.std::_Facet_base"*, i32)**, i8* (%"class.std::_Facet_base"*, i32)*** %5, align 8
  %vfn4 = getelementptr inbounds i8* (%"class.std::_Facet_base"*, i32)*, i8* (%"class.std::_Facet_base"*, i32)** %vtable3, i64 0
  %6 = load i8* (%"class.std::_Facet_base"*, i32)*, i8* (%"class.std::_Facet_base"*, i32)** %vfn4, align 8
  %call5 = call i8* %6(%"class.std::_Facet_base"* %call, i32 1) #13
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %if.then
  br label %if.end

if.end:                                           ; preds = %delete.end, %entry
  ret void
}

; Function Attrs: nounwind
declare dso_local %"class.std::_Lockit"* @"??0_Lockit@std@@QEAA@H@Z"(%"class.std::_Lockit"* returned, i32) unnamed_addr #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @"??Bid@locale@std@@QEAA_KXZ"(%"class.std::locale::id"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::locale::id"*, align 8
  %_Lock = alloca %"class.std::_Lockit", align 4
  store %"class.std::locale::id"* %this, %"class.std::locale::id"** %this.addr, align 8
  %this1 = load %"class.std::locale::id"*, %"class.std::locale::id"** %this.addr, align 8
  %_Id = getelementptr inbounds %"class.std::locale::id", %"class.std::locale::id"* %this1, i32 0, i32 0
  %0 = load i64, i64* %_Id, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %call = call %"class.std::_Lockit"* @"??0_Lockit@std@@QEAA@H@Z"(%"class.std::_Lockit"* %_Lock, i32 0) #13
  %_Id2 = getelementptr inbounds %"class.std::locale::id", %"class.std::locale::id"* %this1, i32 0, i32 0
  %1 = load i64, i64* %_Id2, align 8
  %cmp3 = icmp eq i64 %1, 0
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %2 = load i32, i32* @"?_Id_cnt@id@locale@std@@0HA", align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* @"?_Id_cnt@id@locale@std@@0HA", align 4
  %conv = sext i32 %inc to i64
  %_Id5 = getelementptr inbounds %"class.std::locale::id", %"class.std::locale::id"* %this1, i32 0, i32 0
  store i64 %conv, i64* %_Id5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  call void @"??1_Lockit@std@@QEAA@XZ"(%"class.std::_Lockit"* %_Lock) #13
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %_Id7 = getelementptr inbounds %"class.std::locale::id", %"class.std::locale::id"* %this1, i32 0, i32 0
  %3 = load i64, i64* %_Id7, align 8
  ret i64 %3
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::locale::facet"* @"?_Getfacet@locale@std@@QEBAPEBVfacet@12@_K@Z"(%"class.std::locale"* %this, i64 %_Id) #1 comdat align 2 {
entry:
  %retval = alloca %"class.std::locale::facet"*, align 8
  %_Id.addr = alloca i64, align 8
  %this.addr = alloca %"class.std::locale"*, align 8
  %_Facptr = alloca %"class.std::locale::facet"*, align 8
  %_Ptr0 = alloca %"class.std::locale::_Locimp"*, align 8
  store i64 %_Id, i64* %_Id.addr, align 8
  store %"class.std::locale"* %this, %"class.std::locale"** %this.addr, align 8
  %this1 = load %"class.std::locale"*, %"class.std::locale"** %this.addr, align 8
  %0 = load i64, i64* %_Id.addr, align 8
  %_Ptr = getelementptr inbounds %"class.std::locale", %"class.std::locale"* %this1, i32 0, i32 1
  %1 = load %"class.std::locale::_Locimp"*, %"class.std::locale::_Locimp"** %_Ptr, align 8
  %_Facetcount = getelementptr inbounds %"class.std::locale::_Locimp", %"class.std::locale::_Locimp"* %1, i32 0, i32 2
  %2 = load i64, i64* %_Facetcount, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_Ptr2 = getelementptr inbounds %"class.std::locale", %"class.std::locale"* %this1, i32 0, i32 1
  %3 = load %"class.std::locale::_Locimp"*, %"class.std::locale::_Locimp"** %_Ptr2, align 8
  %_Facetvec = getelementptr inbounds %"class.std::locale::_Locimp", %"class.std::locale::_Locimp"* %3, i32 0, i32 1
  %4 = load %"class.std::locale::facet"**, %"class.std::locale::facet"*** %_Facetvec, align 8
  %5 = load i64, i64* %_Id.addr, align 8
  %arrayidx = getelementptr inbounds %"class.std::locale::facet"*, %"class.std::locale::facet"** %4, i64 %5
  %6 = load %"class.std::locale::facet"*, %"class.std::locale::facet"** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %"class.std::locale::facet"* [ %6, %cond.true ], [ null, %cond.false ]
  store %"class.std::locale::facet"* %cond, %"class.std::locale::facet"** %_Facptr, align 8
  %7 = load %"class.std::locale::facet"*, %"class.std::locale::facet"** %_Facptr, align 8
  %tobool = icmp ne %"class.std::locale::facet"* %7, null
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %_Ptr3 = getelementptr inbounds %"class.std::locale", %"class.std::locale"* %this1, i32 0, i32 1
  %8 = load %"class.std::locale::_Locimp"*, %"class.std::locale::_Locimp"** %_Ptr3, align 8
  %_Xparent = getelementptr inbounds %"class.std::locale::_Locimp", %"class.std::locale::_Locimp"* %8, i32 0, i32 4
  %9 = load i8, i8* %_Xparent, align 4
  %tobool4 = trunc i8 %9 to i1
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  %10 = load %"class.std::locale::facet"*, %"class.std::locale::facet"** %_Facptr, align 8
  store %"class.std::locale::facet"* %10, %"class.std::locale::facet"** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call = call %"class.std::locale::_Locimp"* @"?_Getgloballocale@locale@std@@CAPEAV_Locimp@12@XZ"()
  store %"class.std::locale::_Locimp"* %call, %"class.std::locale::_Locimp"** %_Ptr0, align 8
  %11 = load i64, i64* %_Id.addr, align 8
  %12 = load %"class.std::locale::_Locimp"*, %"class.std::locale::_Locimp"** %_Ptr0, align 8
  %_Facetcount5 = getelementptr inbounds %"class.std::locale::_Locimp", %"class.std::locale::_Locimp"* %12, i32 0, i32 2
  %13 = load i64, i64* %_Facetcount5, align 8
  %cmp6 = icmp ult i64 %11, %13
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  %14 = load %"class.std::locale::_Locimp"*, %"class.std::locale::_Locimp"** %_Ptr0, align 8
  %_Facetvec8 = getelementptr inbounds %"class.std::locale::_Locimp", %"class.std::locale::_Locimp"* %14, i32 0, i32 1
  %15 = load %"class.std::locale::facet"**, %"class.std::locale::facet"*** %_Facetvec8, align 8
  %16 = load i64, i64* %_Id.addr, align 8
  %arrayidx9 = getelementptr inbounds %"class.std::locale::facet"*, %"class.std::locale::facet"** %15, i64 %16
  %17 = load %"class.std::locale::facet"*, %"class.std::locale::facet"** %arrayidx9, align 8
  store %"class.std::locale::facet"* %17, %"class.std::locale::facet"** %retval, align 8
  br label %return

if.end10:                                         ; preds = %if.end
  store %"class.std::locale::facet"* null, %"class.std::locale::facet"** %retval, align 8
  br label %return

return:                                           ; preds = %if.end10, %if.then7, %if.then
  %18 = load %"class.std::locale::facet"*, %"class.std::locale::facet"** %retval, align 8
  ret %"class.std::locale::facet"* %18
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @"?_Getcat@?$ctype@D@std@@SA_KPEAPEBVfacet@locale@2@PEBV42@@Z"(%"class.std::locale::facet"** %_Ppf, %"class.std::locale"* %_Ploc) #1 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %_Ploc.addr = alloca %"class.std::locale"*, align 8
  %_Ppf.addr = alloca %"class.std::locale::facet"**, align 8
  %ref.tmp = alloca %"class.std::_Locinfo", align 8
  %cleanup.isactive = alloca i1, align 1
  store %"class.std::locale"* %_Ploc, %"class.std::locale"** %_Ploc.addr, align 8
  store %"class.std::locale::facet"** %_Ppf, %"class.std::locale::facet"*** %_Ppf.addr, align 8
  %0 = load %"class.std::locale::facet"**, %"class.std::locale::facet"*** %_Ppf.addr, align 8
  %tobool = icmp ne %"class.std::locale::facet"** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %"class.std::locale::facet"**, %"class.std::locale::facet"*** %_Ppf.addr, align 8
  %2 = load %"class.std::locale::facet"*, %"class.std::locale::facet"** %1, align 8
  %tobool1 = icmp ne %"class.std::locale::facet"* %2, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = call noalias nonnull i8* @"??2@YAPEAX_K@Z"(i64 48) #18
  store i1 true, i1* %cleanup.isactive, align 1
  %3 = bitcast i8* %call to %"class.std::ctype"*
  %4 = load %"class.std::locale"*, %"class.std::locale"** %_Ploc.addr, align 8
  %call2 = invoke i8* @"?c_str@locale@std@@QEBAPEBDXZ"(%"class.std::locale"* %4)
          to label %invoke.cont unwind label %ehcleanup7

invoke.cont:                                      ; preds = %if.then
  %call4 = invoke %"class.std::_Locinfo"* @"??0_Locinfo@std@@QEAA@PEBD@Z"(%"class.std::_Locinfo"* %ref.tmp, i8* %call2)
          to label %invoke.cont3 unwind label %ehcleanup7

invoke.cont3:                                     ; preds = %invoke.cont
  %call6 = invoke %"class.std::ctype"* @"??0?$ctype@D@std@@QEAA@AEBV_Locinfo@1@_K@Z"(%"class.std::ctype"* %3, %"class.std::_Locinfo"* nonnull align 8 dereferenceable(104) %ref.tmp, i64 0)
          to label %invoke.cont5 unwind label %ehcleanup

invoke.cont5:                                     ; preds = %invoke.cont3
  store i1 false, i1* %cleanup.isactive, align 1
  %5 = bitcast %"class.std::ctype"* %3 to %"class.std::locale::facet"*
  %6 = load %"class.std::locale::facet"**, %"class.std::locale::facet"*** %_Ppf.addr, align 8
  store %"class.std::locale::facet"* %5, %"class.std::locale::facet"** %6, align 8
  call void @"??1_Locinfo@std@@QEAA@XZ"(%"class.std::_Locinfo"* %ref.tmp) #13
  br label %if.end

ehcleanup:                                        ; preds = %invoke.cont3
  %7 = cleanuppad within none []
  call void @"??1_Locinfo@std@@QEAA@XZ"(%"class.std::_Locinfo"* %ref.tmp) #13 [ "funclet"(token %7) ]
  cleanupret from %7 unwind label %ehcleanup7

ehcleanup7:                                       ; preds = %ehcleanup, %invoke.cont, %if.then
  %8 = cleanuppad within none []
  %cleanup.is_active = load i1, i1* %cleanup.isactive, align 1
  br i1 %cleanup.is_active, label %cleanup.action, label %cleanup.done

cleanup.action:                                   ; preds = %ehcleanup7
  call void @"??3@YAXPEAX@Z"(i8* %call) #17 [ "funclet"(token %8) ]
  br label %cleanup.done

cleanup.done:                                     ; preds = %cleanup.action, %ehcleanup7
  cleanupret from %8 unwind to caller

if.end:                                           ; preds = %invoke.cont5, %land.lhs.true, %entry
  ret i64 2
}

; Function Attrs: noinline noreturn optnone uwtable
define linkonce_odr dso_local void @"?_Throw_bad_cast@std@@YAXXZ"() #6 comdat {
entry:
  %tmp = alloca %"class.std::bad_cast", align 8
  %call = call %"class.std::bad_cast"* @"??0bad_cast@std@@QEAA@XZ"(%"class.std::bad_cast"* %tmp) #13
  %0 = bitcast %"class.std::bad_cast"* %tmp to i8*
  call void @_CxxThrowException(i8* %0, %eh.ThrowInfo* @"_TI2?AVbad_cast@std@@") #15
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::unique_ptr"* @"??$?0U?$default_delete@V_Facet_base@std@@@std@@$0A@@?$unique_ptr@V_Facet_base@std@@U?$default_delete@V_Facet_base@std@@@2@@std@@QEAA@PEAV_Facet_base@1@@Z"(%"class.std::unique_ptr"* returned %this, %"class.std::_Facet_base"* %_Ptr) unnamed_addr #2 comdat align 2 {
entry:
  %_Ptr.addr = alloca %"class.std::_Facet_base"*, align 8
  %this.addr = alloca %"class.std::unique_ptr"*, align 8
  %agg.tmp = alloca %"struct.std::_Zero_then_variadic_args_t", align 1
  store %"class.std::_Facet_base"* %_Ptr, %"class.std::_Facet_base"** %_Ptr.addr, align 8
  store %"class.std::unique_ptr"* %this, %"class.std::unique_ptr"** %this.addr, align 8
  %this1 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %this.addr, align 8
  %_Mypair = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %this1, i32 0, i32 0
  %coerce.dive = getelementptr inbounds %"struct.std::_Zero_then_variadic_args_t", %"struct.std::_Zero_then_variadic_args_t"* %agg.tmp, i32 0, i32 0
  %0 = load i8, i8* %coerce.dive, align 1
  %call = call %"class.std::_Compressed_pair.2"* @"??$?0AEAPEAV_Facet_base@std@@@?$_Compressed_pair@U?$default_delete@V_Facet_base@std@@@std@@PEAV_Facet_base@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@AEAPEAV_Facet_base@1@@Z"(%"class.std::_Compressed_pair.2"* %_Mypair, i8 %0, %"class.std::_Facet_base"** nonnull align 8 dereferenceable(8) %_Ptr.addr) #13
  ret %"class.std::unique_ptr"* %this1
}

declare dso_local void @"?_Facet_Register@std@@YAXPEAV_Facet_base@1@@Z"(%"class.std::_Facet_base"*) #9

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::_Facet_base"* @"?release@?$unique_ptr@V_Facet_base@std@@U?$default_delete@V_Facet_base@std@@@2@@std@@QEAAPEAV_Facet_base@2@XZ"(%"class.std::unique_ptr"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::unique_ptr"*, align 8
  %ref.tmp = alloca %"class.std::_Facet_base"*, align 8
  store %"class.std::unique_ptr"* %this, %"class.std::unique_ptr"** %this.addr, align 8
  %this1 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %this.addr, align 8
  store %"class.std::_Facet_base"* null, %"class.std::_Facet_base"** %ref.tmp, align 8
  %_Mypair = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %this1, i32 0, i32 0
  %_Myval2 = getelementptr inbounds %"class.std::_Compressed_pair.2", %"class.std::_Compressed_pair.2"* %_Mypair, i32 0, i32 0
  %call = call %"class.std::_Facet_base"* @"??$exchange@PEAV_Facet_base@std@@PEAV12@@std@@YAPEAV_Facet_base@0@AEAPEAV10@$$QEAPEAV10@@Z"(%"class.std::_Facet_base"** nonnull align 8 dereferenceable(8) %_Myval2, %"class.std::_Facet_base"** nonnull align 8 dereferenceable(8) %ref.tmp) #13
  ret %"class.std::_Facet_base"* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$unique_ptr@V_Facet_base@std@@U?$default_delete@V_Facet_base@std@@@2@@std@@QEAA@XZ"(%"class.std::unique_ptr"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::unique_ptr"*, align 8
  store %"class.std::unique_ptr"* %this, %"class.std::unique_ptr"** %this.addr, align 8
  %this1 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %this.addr, align 8
  %_Mypair = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %this1, i32 0, i32 0
  %_Myval2 = getelementptr inbounds %"class.std::_Compressed_pair.2", %"class.std::_Compressed_pair.2"* %_Mypair, i32 0, i32 0
  %0 = load %"class.std::_Facet_base"*, %"class.std::_Facet_base"** %_Myval2, align 8
  %tobool = icmp ne %"class.std::_Facet_base"* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_Mypair2 = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %this1, i32 0, i32 0
  %call = call nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @"?_Get_first@?$_Compressed_pair@U?$default_delete@V_Facet_base@std@@@std@@PEAV_Facet_base@2@$00@std@@QEAAAEAU?$default_delete@V_Facet_base@std@@@2@XZ"(%"class.std::_Compressed_pair.2"* %_Mypair2) #13
  %_Mypair3 = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %this1, i32 0, i32 0
  %_Myval24 = getelementptr inbounds %"class.std::_Compressed_pair.2", %"class.std::_Compressed_pair.2"* %_Mypair3, i32 0, i32 0
  %1 = load %"class.std::_Facet_base"*, %"class.std::_Facet_base"** %_Myval24, align 8
  call void @"??R?$default_delete@V_Facet_base@std@@@std@@QEBAXPEAV_Facet_base@1@@Z"(%"struct.std::default_delete"* %call, %"class.std::_Facet_base"* %1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare dso_local void @"??1_Lockit@std@@QEAA@XZ"(%"class.std::_Lockit"*) unnamed_addr #3

declare dso_local %"class.std::locale::_Locimp"* @"?_Getgloballocale@locale@std@@CAPEAV_Locimp@12@XZ"() #9

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"?c_str@locale@std@@QEBAPEBDXZ"(%"class.std::locale"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::locale"*, align 8
  store %"class.std::locale"* %this, %"class.std::locale"** %this.addr, align 8
  %this1 = load %"class.std::locale"*, %"class.std::locale"** %this.addr, align 8
  %_Ptr = getelementptr inbounds %"class.std::locale", %"class.std::locale"* %this1, i32 0, i32 1
  %0 = load %"class.std::locale::_Locimp"*, %"class.std::locale::_Locimp"** %_Ptr, align 8
  %tobool = icmp ne %"class.std::locale::_Locimp"* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_Ptr2 = getelementptr inbounds %"class.std::locale", %"class.std::locale"* %this1, i32 0, i32 1
  %1 = load %"class.std::locale::_Locimp"*, %"class.std::locale::_Locimp"** %_Ptr2, align 8
  %_Name = getelementptr inbounds %"class.std::locale::_Locimp", %"class.std::locale::_Locimp"* %1, i32 0, i32 5
  %call = call i8* @"?c_str@?$_Yarn@D@std@@QEBAPEBDXZ"(%"class.std::_Yarn"* %_Name) #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @"??_C@_00CNPNBAHC@?$AA@", i64 0, i64 0), %cond.false ]
  ret i8* %cond
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::_Locinfo"* @"??0_Locinfo@std@@QEAA@PEBD@Z"(%"class.std::_Locinfo"* returned %this, i8* %_Pch) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %_Pch.addr = alloca i8*, align 8
  %this.addr = alloca %"class.std::_Locinfo"*, align 8
  store i8* %_Pch, i8** %_Pch.addr, align 8
  store %"class.std::_Locinfo"* %this, %"class.std::_Locinfo"** %this.addr, align 8
  %this1 = load %"class.std::_Locinfo"*, %"class.std::_Locinfo"** %this.addr, align 8
  %_Lock = getelementptr inbounds %"class.std::_Locinfo", %"class.std::_Locinfo"* %this1, i32 0, i32 0
  %call = call %"class.std::_Lockit"* @"??0_Lockit@std@@QEAA@H@Z"(%"class.std::_Lockit"* %_Lock, i32 0) #13
  %_Days = getelementptr inbounds %"class.std::_Locinfo", %"class.std::_Locinfo"* %this1, i32 0, i32 1
  %call2 = call %"class.std::_Yarn"* @"??0?$_Yarn@D@std@@QEAA@XZ"(%"class.std::_Yarn"* %_Days) #13
  %_Months = getelementptr inbounds %"class.std::_Locinfo", %"class.std::_Locinfo"* %this1, i32 0, i32 2
  %call3 = call %"class.std::_Yarn"* @"??0?$_Yarn@D@std@@QEAA@XZ"(%"class.std::_Yarn"* %_Months) #13
  %_W_Days = getelementptr inbounds %"class.std::_Locinfo", %"class.std::_Locinfo"* %this1, i32 0, i32 3
  %call4 = call %"class.std::_Yarn.3"* @"??0?$_Yarn@_W@std@@QEAA@XZ"(%"class.std::_Yarn.3"* %_W_Days) #13
  %_W_Months = getelementptr inbounds %"class.std::_Locinfo", %"class.std::_Locinfo"* %this1, i32 0, i32 4
  %call5 = call %"class.std::_Yarn.3"* @"??0?$_Yarn@_W@std@@QEAA@XZ"(%"class.std::_Yarn.3"* %_W_Months) #13
  %_Oldlocname = getelementptr inbounds %"class.std::_Locinfo", %"class.std::_Locinfo"* %this1, i32 0, i32 5
  %call6 = call %"class.std::_Yarn"* @"??0?$_Yarn@D@std@@QEAA@XZ"(%"class.std::_Yarn"* %_Oldlocname) #13
  %_Newlocname = getelementptr inbounds %"class.std::_Locinfo", %"class.std::_Locinfo"* %this1, i32 0, i32 6
  %call7 = call %"class.std::_Yarn"* @"??0?$_Yarn@D@std@@QEAA@XZ"(%"class.std::_Yarn"* %_Newlocname) #13
  %0 = load i8*, i8** %_Pch.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %_Pch.addr, align 8
  invoke void @"?_Locinfo_ctor@_Locinfo@std@@SAXPEAV12@PEBD@Z"(%"class.std::_Locinfo"* %this1, i8* %1)
          to label %invoke.cont unwind label %ehcleanup

invoke.cont:                                      ; preds = %if.then
  ret %"class.std::_Locinfo"* %this1

if.end:                                           ; preds = %entry
  invoke void @"?_Xruntime_error@std@@YAXPEBD@Z"(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"??_C@_0BA@ELKIONDK@bad?5locale?5name?$AA@", i64 0, i64 0)) #15
          to label %invoke.cont8 unwind label %ehcleanup

invoke.cont8:                                     ; preds = %if.end
  unreachable

ehcleanup:                                        ; preds = %if.end, %if.then
  %2 = cleanuppad within none []
  call void @"??1?$_Yarn@D@std@@QEAA@XZ"(%"class.std::_Yarn"* %_Newlocname) #13 [ "funclet"(token %2) ]
  cleanupret from %2 unwind label %ehcleanup9

ehcleanup9:                                       ; preds = %ehcleanup
  %3 = cleanuppad within none []
  call void @"??1?$_Yarn@D@std@@QEAA@XZ"(%"class.std::_Yarn"* %_Oldlocname) #13 [ "funclet"(token %3) ]
  cleanupret from %3 unwind label %ehcleanup10

ehcleanup10:                                      ; preds = %ehcleanup9
  %4 = cleanuppad within none []
  call void @"??1?$_Yarn@_W@std@@QEAA@XZ"(%"class.std::_Yarn.3"* %_W_Months) #13 [ "funclet"(token %4) ]
  cleanupret from %4 unwind label %ehcleanup11

ehcleanup11:                                      ; preds = %ehcleanup10
  %5 = cleanuppad within none []
  call void @"??1?$_Yarn@_W@std@@QEAA@XZ"(%"class.std::_Yarn.3"* %_W_Days) #13 [ "funclet"(token %5) ]
  cleanupret from %5 unwind label %ehcleanup12

ehcleanup12:                                      ; preds = %ehcleanup11
  %6 = cleanuppad within none []
  call void @"??1?$_Yarn@D@std@@QEAA@XZ"(%"class.std::_Yarn"* %_Months) #13 [ "funclet"(token %6) ]
  cleanupret from %6 unwind label %ehcleanup13

ehcleanup13:                                      ; preds = %ehcleanup12
  %7 = cleanuppad within none []
  call void @"??1?$_Yarn@D@std@@QEAA@XZ"(%"class.std::_Yarn"* %_Days) #13 [ "funclet"(token %7) ]
  cleanupret from %7 unwind label %ehcleanup14

ehcleanup14:                                      ; preds = %ehcleanup13
  %8 = cleanuppad within none []
  call void @"??1_Lockit@std@@QEAA@XZ"(%"class.std::_Lockit"* %_Lock) #13 [ "funclet"(token %8) ]
  cleanupret from %8 unwind to caller
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::ctype"* @"??0?$ctype@D@std@@QEAA@AEBV_Locinfo@1@_K@Z"(%"class.std::ctype"* returned %this, %"class.std::_Locinfo"* nonnull align 8 dereferenceable(104) %_Lobj, i64 %_Refs) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %_Refs.addr = alloca i64, align 8
  %_Lobj.addr = alloca %"class.std::_Locinfo"*, align 8
  %this.addr = alloca %"class.std::ctype"*, align 8
  store i64 %_Refs, i64* %_Refs.addr, align 8
  store %"class.std::_Locinfo"* %_Lobj, %"class.std::_Locinfo"** %_Lobj.addr, align 8
  store %"class.std::ctype"* %this, %"class.std::ctype"** %this.addr, align 8
  %this1 = load %"class.std::ctype"*, %"class.std::ctype"** %this.addr, align 8
  %0 = bitcast %"class.std::ctype"* %this1 to %"struct.std::ctype_base"*
  %1 = load i64, i64* %_Refs.addr, align 8
  %call = call %"struct.std::ctype_base"* @"??0ctype_base@std@@QEAA@_K@Z"(%"struct.std::ctype_base"* %0, i64 %1)
  %2 = bitcast %"class.std::ctype"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** @"??_7?$ctype@D@std@@6B@" to i32 (...)**), i32 (...)*** %2, align 8
  %_Ctype = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %this1, i32 0, i32 1
  %3 = load %"class.std::_Locinfo"*, %"class.std::_Locinfo"** %_Lobj.addr, align 8
  invoke void @"?_Init@?$ctype@D@std@@IEAAXAEBV_Locinfo@2@@Z"(%"class.std::ctype"* %this1, %"class.std::_Locinfo"* nonnull align 8 dereferenceable(104) %3)
          to label %invoke.cont unwind label %ehcleanup

invoke.cont:                                      ; preds = %entry
  ret %"class.std::ctype"* %this1

ehcleanup:                                        ; preds = %entry
  %4 = cleanuppad within none []
  %5 = bitcast %"class.std::ctype"* %this1 to %"struct.std::ctype_base"*
  call void @"??1ctype_base@std@@UEAA@XZ"(%"struct.std::ctype_base"* %5) #13 [ "funclet"(token %4) ]
  cleanupret from %4 unwind to caller
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1_Locinfo@std@@QEAA@XZ"(%"class.std::_Locinfo"* %this) unnamed_addr #2 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Locinfo"*, align 8
  store %"class.std::_Locinfo"* %this, %"class.std::_Locinfo"** %this.addr, align 8
  %this1 = load %"class.std::_Locinfo"*, %"class.std::_Locinfo"** %this.addr, align 8
  invoke void @"?_Locinfo_dtor@_Locinfo@std@@SAXPEAV12@@Z"(%"class.std::_Locinfo"* %this1)
          to label %invoke.cont unwind label %ehcleanup

invoke.cont:                                      ; preds = %entry
  %_Newlocname = getelementptr inbounds %"class.std::_Locinfo", %"class.std::_Locinfo"* %this1, i32 0, i32 6
  call void @"??1?$_Yarn@D@std@@QEAA@XZ"(%"class.std::_Yarn"* %_Newlocname) #13
  %_Oldlocname = getelementptr inbounds %"class.std::_Locinfo", %"class.std::_Locinfo"* %this1, i32 0, i32 5
  call void @"??1?$_Yarn@D@std@@QEAA@XZ"(%"class.std::_Yarn"* %_Oldlocname) #13
  %_W_Months = getelementptr inbounds %"class.std::_Locinfo", %"class.std::_Locinfo"* %this1, i32 0, i32 4
  call void @"??1?$_Yarn@_W@std@@QEAA@XZ"(%"class.std::_Yarn.3"* %_W_Months) #13
  %_W_Days = getelementptr inbounds %"class.std::_Locinfo", %"class.std::_Locinfo"* %this1, i32 0, i32 3
  call void @"??1?$_Yarn@_W@std@@QEAA@XZ"(%"class.std::_Yarn.3"* %_W_Days) #13
  %_Months = getelementptr inbounds %"class.std::_Locinfo", %"class.std::_Locinfo"* %this1, i32 0, i32 2
  call void @"??1?$_Yarn@D@std@@QEAA@XZ"(%"class.std::_Yarn"* %_Months) #13
  %_Days = getelementptr inbounds %"class.std::_Locinfo", %"class.std::_Locinfo"* %this1, i32 0, i32 1
  call void @"??1?$_Yarn@D@std@@QEAA@XZ"(%"class.std::_Yarn"* %_Days) #13
  %_Lock = getelementptr inbounds %"class.std::_Locinfo", %"class.std::_Locinfo"* %this1, i32 0, i32 0
  call void @"??1_Lockit@std@@QEAA@XZ"(%"class.std::_Lockit"* %_Lock) #13
  ret void

ehcleanup:                                        ; preds = %entry
  %0 = cleanuppad within none []
  %_Newlocname2 = getelementptr inbounds %"class.std::_Locinfo", %"class.std::_Locinfo"* %this1, i32 0, i32 6
  call void @"??1?$_Yarn@D@std@@QEAA@XZ"(%"class.std::_Yarn"* %_Newlocname2) #13 [ "funclet"(token %0) ]
  cleanupret from %0 unwind label %ehcleanup3

ehcleanup3:                                       ; preds = %ehcleanup
  %1 = cleanuppad within none []
  %_Oldlocname4 = getelementptr inbounds %"class.std::_Locinfo", %"class.std::_Locinfo"* %this1, i32 0, i32 5
  call void @"??1?$_Yarn@D@std@@QEAA@XZ"(%"class.std::_Yarn"* %_Oldlocname4) #13 [ "funclet"(token %1) ]
  cleanupret from %1 unwind label %ehcleanup5

ehcleanup5:                                       ; preds = %ehcleanup3
  %2 = cleanuppad within none []
  %_W_Months6 = getelementptr inbounds %"class.std::_Locinfo", %"class.std::_Locinfo"* %this1, i32 0, i32 4
  call void @"??1?$_Yarn@_W@std@@QEAA@XZ"(%"class.std::_Yarn.3"* %_W_Months6) #13 [ "funclet"(token %2) ]
  cleanupret from %2 unwind label %ehcleanup7

ehcleanup7:                                       ; preds = %ehcleanup5
  %3 = cleanuppad within none []
  %_W_Days8 = getelementptr inbounds %"class.std::_Locinfo", %"class.std::_Locinfo"* %this1, i32 0, i32 3
  call void @"??1?$_Yarn@_W@std@@QEAA@XZ"(%"class.std::_Yarn.3"* %_W_Days8) #13 [ "funclet"(token %3) ]
  cleanupret from %3 unwind label %ehcleanup9

ehcleanup9:                                       ; preds = %ehcleanup7
  %4 = cleanuppad within none []
  %_Months10 = getelementptr inbounds %"class.std::_Locinfo", %"class.std::_Locinfo"* %this1, i32 0, i32 2
  call void @"??1?$_Yarn@D@std@@QEAA@XZ"(%"class.std::_Yarn"* %_Months10) #13 [ "funclet"(token %4) ]
  cleanupret from %4 unwind label %ehcleanup11

ehcleanup11:                                      ; preds = %ehcleanup9
  %5 = cleanuppad within none []
  %_Days12 = getelementptr inbounds %"class.std::_Locinfo", %"class.std::_Locinfo"* %this1, i32 0, i32 1
  call void @"??1?$_Yarn@D@std@@QEAA@XZ"(%"class.std::_Yarn"* %_Days12) #13 [ "funclet"(token %5) ]
  cleanupret from %5 unwind label %ehcleanup13

ehcleanup13:                                      ; preds = %ehcleanup11
  %6 = cleanuppad within none []
  %_Lock14 = getelementptr inbounds %"class.std::_Locinfo", %"class.std::_Locinfo"* %this1, i32 0, i32 0
  call void @"??1_Lockit@std@@QEAA@XZ"(%"class.std::_Lockit"* %_Lock14) #13 [ "funclet"(token %6) ]
  cleanupret from %6 unwind label %terminate

terminate:                                        ; preds = %ehcleanup13
  %7 = cleanuppad within none []
  call void @__std_terminate() #14 [ "funclet"(token %7) ]
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"?c_str@?$_Yarn@D@std@@QEBAPEBDXZ"(%"class.std::_Yarn"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Yarn"*, align 8
  store %"class.std::_Yarn"* %this, %"class.std::_Yarn"** %this.addr, align 8
  %this1 = load %"class.std::_Yarn"*, %"class.std::_Yarn"** %this.addr, align 8
  %_Myptr = getelementptr inbounds %"class.std::_Yarn", %"class.std::_Yarn"* %this1, i32 0, i32 0
  %0 = load i8*, i8** %_Myptr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_Myptr2 = getelementptr inbounds %"class.std::_Yarn", %"class.std::_Yarn"* %this1, i32 0, i32 0
  %1 = load i8*, i8** %_Myptr2, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %_Nul = getelementptr inbounds %"class.std::_Yarn", %"class.std::_Yarn"* %this1, i32 0, i32 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %1, %cond.true ], [ %_Nul, %cond.false ]
  ret i8* %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::_Yarn"* @"??0?$_Yarn@D@std@@QEAA@XZ"(%"class.std::_Yarn"* returned %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Yarn"*, align 8
  store %"class.std::_Yarn"* %this, %"class.std::_Yarn"** %this.addr, align 8
  %this1 = load %"class.std::_Yarn"*, %"class.std::_Yarn"** %this.addr, align 8
  %_Myptr = getelementptr inbounds %"class.std::_Yarn", %"class.std::_Yarn"* %this1, i32 0, i32 0
  store i8* null, i8** %_Myptr, align 8
  %_Nul = getelementptr inbounds %"class.std::_Yarn", %"class.std::_Yarn"* %this1, i32 0, i32 1
  store i8 0, i8* %_Nul, align 8
  ret %"class.std::_Yarn"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::_Yarn.3"* @"??0?$_Yarn@_W@std@@QEAA@XZ"(%"class.std::_Yarn.3"* returned %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Yarn.3"*, align 8
  store %"class.std::_Yarn.3"* %this, %"class.std::_Yarn.3"** %this.addr, align 8
  %this1 = load %"class.std::_Yarn.3"*, %"class.std::_Yarn.3"** %this.addr, align 8
  %_Myptr = getelementptr inbounds %"class.std::_Yarn.3", %"class.std::_Yarn.3"* %this1, i32 0, i32 0
  store i16* null, i16** %_Myptr, align 8
  %_Nul = getelementptr inbounds %"class.std::_Yarn.3", %"class.std::_Yarn.3"* %this1, i32 0, i32 1
  store i16 0, i16* %_Nul, align 8
  ret %"class.std::_Yarn.3"* %this1
}

declare dso_local void @"?_Locinfo_ctor@_Locinfo@std@@SAXPEAV12@PEBD@Z"(%"class.std::_Locinfo"*, i8*) #9

; Function Attrs: noreturn
declare dso_local void @"?_Xruntime_error@std@@YAXPEBD@Z"(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$_Yarn@D@std@@QEAA@XZ"(%"class.std::_Yarn"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Yarn"*, align 8
  store %"class.std::_Yarn"* %this, %"class.std::_Yarn"** %this.addr, align 8
  %this1 = load %"class.std::_Yarn"*, %"class.std::_Yarn"** %this.addr, align 8
  call void @"?_Tidy@?$_Yarn@D@std@@AEAAXXZ"(%"class.std::_Yarn"* %this1) #13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$_Yarn@_W@std@@QEAA@XZ"(%"class.std::_Yarn.3"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Yarn.3"*, align 8
  store %"class.std::_Yarn.3"* %this, %"class.std::_Yarn.3"** %this.addr, align 8
  %this1 = load %"class.std::_Yarn.3"*, %"class.std::_Yarn.3"** %this.addr, align 8
  call void @"?_Tidy@?$_Yarn@_W@std@@AEAAXXZ"(%"class.std::_Yarn.3"* %this1) #13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Tidy@?$_Yarn@D@std@@AEAAXXZ"(%"class.std::_Yarn"* %this) #2 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Yarn"*, align 8
  store %"class.std::_Yarn"* %this, %"class.std::_Yarn"** %this.addr, align 8
  %this1 = load %"class.std::_Yarn"*, %"class.std::_Yarn"** %this.addr, align 8
  %_Myptr = getelementptr inbounds %"class.std::_Yarn", %"class.std::_Yarn"* %this1, i32 0, i32 0
  %0 = load i8*, i8** %_Myptr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_Myptr2 = getelementptr inbounds %"class.std::_Yarn", %"class.std::_Yarn"* %this1, i32 0, i32 0
  %1 = load i8*, i8** %_Myptr2, align 8
  invoke void @free(i8* %1)
          to label %invoke.cont unwind label %terminate

invoke.cont:                                      ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %invoke.cont, %entry
  %_Myptr3 = getelementptr inbounds %"class.std::_Yarn", %"class.std::_Yarn"* %this1, i32 0, i32 0
  store i8* null, i8** %_Myptr3, align 8
  ret void

terminate:                                        ; preds = %if.then
  %2 = cleanuppad within none []
  call void @__std_terminate() #14 [ "funclet"(token %2) ]
  unreachable
}

declare dso_local void @free(i8*) #9

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Tidy@?$_Yarn@_W@std@@AEAAXXZ"(%"class.std::_Yarn.3"* %this) #2 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Yarn.3"*, align 8
  store %"class.std::_Yarn.3"* %this, %"class.std::_Yarn.3"** %this.addr, align 8
  %this1 = load %"class.std::_Yarn.3"*, %"class.std::_Yarn.3"** %this.addr, align 8
  %_Myptr = getelementptr inbounds %"class.std::_Yarn.3", %"class.std::_Yarn.3"* %this1, i32 0, i32 0
  %0 = load i16*, i16** %_Myptr, align 8
  %tobool = icmp ne i16* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_Myptr2 = getelementptr inbounds %"class.std::_Yarn.3", %"class.std::_Yarn.3"* %this1, i32 0, i32 0
  %1 = load i16*, i16** %_Myptr2, align 8
  %2 = bitcast i16* %1 to i8*
  invoke void @free(i8* %2)
          to label %invoke.cont unwind label %terminate

invoke.cont:                                      ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %invoke.cont, %entry
  %_Myptr3 = getelementptr inbounds %"class.std::_Yarn.3", %"class.std::_Yarn.3"* %this1, i32 0, i32 0
  store i16* null, i16** %_Myptr3, align 8
  ret void

terminate:                                        ; preds = %if.then
  %3 = cleanuppad within none []
  call void @__std_terminate() #14 [ "funclet"(token %3) ]
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::ctype_base"* @"??0ctype_base@std@@QEAA@_K@Z"(%"struct.std::ctype_base"* returned %this, i64 %_Refs) unnamed_addr #1 comdat align 2 {
entry:
  %_Refs.addr = alloca i64, align 8
  %this.addr = alloca %"struct.std::ctype_base"*, align 8
  store i64 %_Refs, i64* %_Refs.addr, align 8
  store %"struct.std::ctype_base"* %this, %"struct.std::ctype_base"** %this.addr, align 8
  %this1 = load %"struct.std::ctype_base"*, %"struct.std::ctype_base"** %this.addr, align 8
  %0 = bitcast %"struct.std::ctype_base"* %this1 to %"class.std::locale::facet"*
  %1 = load i64, i64* %_Refs.addr, align 8
  %call = call %"class.std::locale::facet"* @"??0facet@locale@std@@IEAA@_K@Z"(%"class.std::locale::facet"* %0, i64 %1)
  %2 = bitcast %"struct.std::ctype_base"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** @"??_7ctype_base@std@@6B@" to i32 (...)**), i32 (...)*** %2, align 8
  ret %"struct.std::ctype_base"* %this1
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @"?_Init@?$ctype@D@std@@IEAAXAEBV_Locinfo@2@@Z"(%"class.std::ctype"* %this, %"class.std::_Locinfo"* nonnull align 8 dereferenceable(104) %_Lobj) #1 comdat align 2 {
entry:
  %_Lobj.addr = alloca %"class.std::_Locinfo"*, align 8
  %this.addr = alloca %"class.std::ctype"*, align 8
  %ref.tmp = alloca %struct._Ctypevec, align 8
  store %"class.std::_Locinfo"* %_Lobj, %"class.std::_Locinfo"** %_Lobj.addr, align 8
  store %"class.std::ctype"* %this, %"class.std::ctype"** %this.addr, align 8
  %this1 = load %"class.std::ctype"*, %"class.std::ctype"** %this.addr, align 8
  %0 = load %"class.std::_Locinfo"*, %"class.std::_Locinfo"** %_Lobj.addr, align 8
  call void @"?_Getctype@_Locinfo@std@@QEBA?AU_Ctypevec@@XZ"(%"class.std::_Locinfo"* %0, %struct._Ctypevec* sret align 8 %ref.tmp)
  %_Ctype = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %this1, i32 0, i32 1
  %1 = bitcast %struct._Ctypevec* %_Ctype to i8*
  %2 = bitcast %struct._Ctypevec* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 32, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1ctype_base@std@@UEAA@XZ"(%"struct.std::ctype_base"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::ctype_base"*, align 8
  store %"struct.std::ctype_base"* %this, %"struct.std::ctype_base"** %this.addr, align 8
  %this1 = load %"struct.std::ctype_base"*, %"struct.std::ctype_base"** %this.addr, align 8
  %0 = bitcast %"struct.std::ctype_base"* %this1 to %"class.std::locale::facet"*
  call void @"??1facet@locale@std@@MEAA@XZ"(%"class.std::locale::facet"* %0) #13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"??_G?$ctype@D@std@@MEAAPEAXI@Z"(%"class.std::ctype"* %this, i32 %should_call_delete) unnamed_addr #2 comdat align 2 {
entry:
  %retval = alloca i8*, align 8
  %should_call_delete.addr = alloca i32, align 4
  %this.addr = alloca %"class.std::ctype"*, align 8
  store i32 %should_call_delete, i32* %should_call_delete.addr, align 4
  store %"class.std::ctype"* %this, %"class.std::ctype"** %this.addr, align 8
  %this1 = load %"class.std::ctype"*, %"class.std::ctype"** %this.addr, align 8
  %0 = bitcast %"class.std::ctype"* %this1 to i8*
  store i8* %0, i8** %retval, align 8
  %should_call_delete2 = load i32, i32* %should_call_delete.addr, align 4
  call void @"??1?$ctype@D@std@@MEAA@XZ"(%"class.std::ctype"* %this1) #13
  %1 = icmp eq i32 %should_call_delete2, 0
  br i1 %1, label %dtor.continue, label %dtor.call_delete

dtor.call_delete:                                 ; preds = %entry
  %2 = bitcast %"class.std::ctype"* %this1 to i8*
  call void @"??3@YAXPEAX@Z"(i8* %2) #17
  br label %dtor.continue

dtor.continue:                                    ; preds = %dtor.call_delete, %entry
  %3 = load i8*, i8** %retval, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Incref@facet@locale@std@@UEAAXXZ"(%"class.std::locale::facet"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::locale::facet"*, align 8
  store %"class.std::locale::facet"* %this, %"class.std::locale::facet"** %this.addr, align 8
  %this1 = load %"class.std::locale::facet"*, %"class.std::locale::facet"** %this.addr, align 8
  %_Myrefs = getelementptr inbounds %"class.std::locale::facet", %"class.std::locale::facet"* %this1, i32 0, i32 1
  %0 = atomicrmw add i32* %_Myrefs, i32 1 seq_cst
  %1 = add i32 %0, 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::_Facet_base"* @"?_Decref@facet@locale@std@@UEAAPEAV_Facet_base@3@XZ"(%"class.std::locale::facet"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %retval = alloca %"class.std::_Facet_base"*, align 8
  %this.addr = alloca %"class.std::locale::facet"*, align 8
  store %"class.std::locale::facet"* %this, %"class.std::locale::facet"** %this.addr, align 8
  %this1 = load %"class.std::locale::facet"*, %"class.std::locale::facet"** %this.addr, align 8
  %_Myrefs = getelementptr inbounds %"class.std::locale::facet", %"class.std::locale::facet"* %this1, i32 0, i32 1
  %0 = atomicrmw sub i32* %_Myrefs, i32 1 seq_cst
  %1 = sub i32 %0, 1
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast %"class.std::locale::facet"* %this1 to %"class.std::_Facet_base"*
  store %"class.std::_Facet_base"* %2, %"class.std::_Facet_base"** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store %"class.std::_Facet_base"* null, %"class.std::_Facet_base"** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %"class.std::_Facet_base"*, %"class.std::_Facet_base"** %retval, align 8
  ret %"class.std::_Facet_base"* %3
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i8* @"?do_tolower@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z"(%"class.std::ctype"* %this, i8* %_First, i8* %_Last) unnamed_addr #1 comdat align 2 {
entry:
  %_Last.addr = alloca i8*, align 8
  %_First.addr = alloca i8*, align 8
  %this.addr = alloca %"class.std::ctype"*, align 8
  store i8* %_Last, i8** %_Last.addr, align 8
  store i8* %_First, i8** %_First.addr, align 8
  store %"class.std::ctype"* %this, %"class.std::ctype"** %this.addr, align 8
  %this1 = load %"class.std::ctype"*, %"class.std::ctype"** %this.addr, align 8
  call void @"??$_Adl_verify_range@PEADPEBD@std@@YAXAEBQEADAEBQEBD@Z"(i8** nonnull align 8 dereferenceable(8) %_First.addr, i8** nonnull align 8 dereferenceable(8) %_Last.addr)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %_First.addr, align 8
  %1 = load i8*, i8** %_Last.addr, align 8
  %cmp = icmp ne i8* %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %_Ctype = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %this1, i32 0, i32 1
  %2 = load i8*, i8** %_First.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  %call = call i32 @_Tolower(i32 %conv, %struct._Ctypevec* %_Ctype)
  %conv2 = trunc i32 %call to i8
  %4 = load i8*, i8** %_First.addr, align 8
  store i8 %conv2, i8* %4, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i8*, i8** %_First.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %_First.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i8*, i8** %_First.addr, align 8
  ret i8* %6
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i8 @"?do_tolower@?$ctype@D@std@@MEBADD@Z"(%"class.std::ctype"* %this, i8 %_Ch) unnamed_addr #1 comdat align 2 {
entry:
  %_Ch.addr = alloca i8, align 1
  %this.addr = alloca %"class.std::ctype"*, align 8
  store i8 %_Ch, i8* %_Ch.addr, align 1
  store %"class.std::ctype"* %this, %"class.std::ctype"** %this.addr, align 8
  %this1 = load %"class.std::ctype"*, %"class.std::ctype"** %this.addr, align 8
  %_Ctype = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %this1, i32 0, i32 1
  %0 = load i8, i8* %_Ch.addr, align 1
  %conv = zext i8 %0 to i32
  %call = call i32 @_Tolower(i32 %conv, %struct._Ctypevec* %_Ctype)
  %conv2 = trunc i32 %call to i8
  ret i8 %conv2
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i8* @"?do_toupper@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z"(%"class.std::ctype"* %this, i8* %_First, i8* %_Last) unnamed_addr #1 comdat align 2 {
entry:
  %_Last.addr = alloca i8*, align 8
  %_First.addr = alloca i8*, align 8
  %this.addr = alloca %"class.std::ctype"*, align 8
  store i8* %_Last, i8** %_Last.addr, align 8
  store i8* %_First, i8** %_First.addr, align 8
  store %"class.std::ctype"* %this, %"class.std::ctype"** %this.addr, align 8
  %this1 = load %"class.std::ctype"*, %"class.std::ctype"** %this.addr, align 8
  call void @"??$_Adl_verify_range@PEADPEBD@std@@YAXAEBQEADAEBQEBD@Z"(i8** nonnull align 8 dereferenceable(8) %_First.addr, i8** nonnull align 8 dereferenceable(8) %_Last.addr)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %_First.addr, align 8
  %1 = load i8*, i8** %_Last.addr, align 8
  %cmp = icmp ne i8* %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %_Ctype = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %this1, i32 0, i32 1
  %2 = load i8*, i8** %_First.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  %call = call i32 @_Toupper(i32 %conv, %struct._Ctypevec* %_Ctype)
  %conv2 = trunc i32 %call to i8
  %4 = load i8*, i8** %_First.addr, align 8
  store i8 %conv2, i8* %4, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i8*, i8** %_First.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %_First.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i8*, i8** %_First.addr, align 8
  ret i8* %6
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i8 @"?do_toupper@?$ctype@D@std@@MEBADD@Z"(%"class.std::ctype"* %this, i8 %_Ch) unnamed_addr #1 comdat align 2 {
entry:
  %_Ch.addr = alloca i8, align 1
  %this.addr = alloca %"class.std::ctype"*, align 8
  store i8 %_Ch, i8* %_Ch.addr, align 1
  store %"class.std::ctype"* %this, %"class.std::ctype"** %this.addr, align 8
  %this1 = load %"class.std::ctype"*, %"class.std::ctype"** %this.addr, align 8
  %_Ctype = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %this1, i32 0, i32 1
  %0 = load i8, i8* %_Ch.addr, align 1
  %conv = zext i8 %0 to i32
  %call = call i32 @_Toupper(i32 %conv, %struct._Ctypevec* %_Ctype)
  %conv2 = trunc i32 %call to i8
  ret i8 %conv2
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i8* @"?do_widen@?$ctype@D@std@@MEBAPEBDPEBD0PEAD@Z"(%"class.std::ctype"* %this, i8* %_First, i8* %_Last, i8* %_Dest) unnamed_addr #1 comdat align 2 {
entry:
  %_Dest.addr = alloca i8*, align 8
  %_Last.addr = alloca i8*, align 8
  %_First.addr = alloca i8*, align 8
  %this.addr = alloca %"class.std::ctype"*, align 8
  store i8* %_Dest, i8** %_Dest.addr, align 8
  store i8* %_Last, i8** %_Last.addr, align 8
  store i8* %_First, i8** %_First.addr, align 8
  store %"class.std::ctype"* %this, %"class.std::ctype"** %this.addr, align 8
  %this1 = load %"class.std::ctype"*, %"class.std::ctype"** %this.addr, align 8
  call void @"??$_Adl_verify_range@PEBDPEBD@std@@YAXAEBQEBD0@Z"(i8** nonnull align 8 dereferenceable(8) %_First.addr, i8** nonnull align 8 dereferenceable(8) %_Last.addr)
  %0 = load i8*, i8** %_Dest.addr, align 8
  %1 = load i8*, i8** %_First.addr, align 8
  %2 = load i8*, i8** %_Last.addr, align 8
  %3 = load i8*, i8** %_First.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 %1, i64 %sub.ptr.sub, i1 false)
  %4 = load i8*, i8** %_Last.addr, align 8
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8 @"?do_widen@?$ctype@D@std@@MEBADD@Z"(%"class.std::ctype"* %this, i8 %_Byte) unnamed_addr #2 comdat align 2 {
entry:
  %_Byte.addr = alloca i8, align 1
  %this.addr = alloca %"class.std::ctype"*, align 8
  store i8 %_Byte, i8* %_Byte.addr, align 1
  store %"class.std::ctype"* %this, %"class.std::ctype"** %this.addr, align 8
  %this1 = load %"class.std::ctype"*, %"class.std::ctype"** %this.addr, align 8
  %0 = load i8, i8* %_Byte.addr, align 1
  ret i8 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"?do_narrow@?$ctype@D@std@@MEBAPEBDPEBD0DPEAD@Z"(%"class.std::ctype"* %this, i8* %_First, i8* %_Last, i8 %0, i8* %_Dest) unnamed_addr #2 comdat align 2 {
entry:
  %_Dest.addr = alloca i8*, align 8
  %.addr = alloca i8, align 1
  %_Last.addr = alloca i8*, align 8
  %_First.addr = alloca i8*, align 8
  %this.addr = alloca %"class.std::ctype"*, align 8
  store i8* %_Dest, i8** %_Dest.addr, align 8
  store i8 %0, i8* %.addr, align 1
  store i8* %_Last, i8** %_Last.addr, align 8
  store i8* %_First, i8** %_First.addr, align 8
  store %"class.std::ctype"* %this, %"class.std::ctype"** %this.addr, align 8
  %this1 = load %"class.std::ctype"*, %"class.std::ctype"** %this.addr, align 8
  call void @"??$_Adl_verify_range@PEBDPEBD@std@@YAXAEBQEBD0@Z"(i8** nonnull align 8 dereferenceable(8) %_First.addr, i8** nonnull align 8 dereferenceable(8) %_Last.addr)
  %1 = load i8*, i8** %_Dest.addr, align 8
  %2 = load i8*, i8** %_First.addr, align 8
  %3 = load i8*, i8** %_Last.addr, align 8
  %4 = load i8*, i8** %_First.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 %2, i64 %sub.ptr.sub, i1 false)
  %5 = load i8*, i8** %_Last.addr, align 8
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8 @"?do_narrow@?$ctype@D@std@@MEBADDD@Z"(%"class.std::ctype"* %this, i8 %_Ch, i8 %0) unnamed_addr #2 comdat align 2 {
entry:
  %.addr = alloca i8, align 1
  %_Ch.addr = alloca i8, align 1
  %this.addr = alloca %"class.std::ctype"*, align 8
  store i8 %0, i8* %.addr, align 1
  store i8 %_Ch, i8* %_Ch.addr, align 1
  store %"class.std::ctype"* %this, %"class.std::ctype"** %this.addr, align 8
  %this1 = load %"class.std::ctype"*, %"class.std::ctype"** %this.addr, align 8
  %1 = load i8, i8* %_Ch.addr, align 1
  ret i8 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::locale::facet"* @"??0facet@locale@std@@IEAA@_K@Z"(%"class.std::locale::facet"* returned %this, i64 %_Initrefs) unnamed_addr #2 comdat align 2 {
entry:
  %_Initrefs.addr = alloca i64, align 8
  %this.addr = alloca %"class.std::locale::facet"*, align 8
  store i64 %_Initrefs, i64* %_Initrefs.addr, align 8
  store %"class.std::locale::facet"* %this, %"class.std::locale::facet"** %this.addr, align 8
  %this1 = load %"class.std::locale::facet"*, %"class.std::locale::facet"** %this.addr, align 8
  %0 = bitcast %"class.std::locale::facet"* %this1 to %"class.std::_Facet_base"*
  %call = call %"class.std::_Facet_base"* @"??0_Facet_base@std@@QEAA@XZ"(%"class.std::_Facet_base"* %0) #13
  %1 = bitcast %"class.std::locale::facet"* %this1 to i8*
  %2 = getelementptr inbounds i8, i8* %1, i64 8
  %3 = bitcast i8* %2 to %"struct.std::_Crt_new_delete"*
  %4 = bitcast %"class.std::locale::facet"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** @"??_7facet@locale@std@@6B@" to i32 (...)**), i32 (...)*** %4, align 8
  %_Myrefs = getelementptr inbounds %"class.std::locale::facet", %"class.std::locale::facet"* %this1, i32 0, i32 1
  %5 = load i64, i64* %_Initrefs.addr, align 8
  %conv = trunc i64 %5 to i32
  store i32 %conv, i32* %_Myrefs, align 8
  ret %"class.std::locale::facet"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"??_Gctype_base@std@@UEAAPEAXI@Z"(%"struct.std::ctype_base"* %this, i32 %should_call_delete) unnamed_addr #2 comdat align 2 {
entry:
  %retval = alloca i8*, align 8
  %should_call_delete.addr = alloca i32, align 4
  %this.addr = alloca %"struct.std::ctype_base"*, align 8
  store i32 %should_call_delete, i32* %should_call_delete.addr, align 4
  store %"struct.std::ctype_base"* %this, %"struct.std::ctype_base"** %this.addr, align 8
  %this1 = load %"struct.std::ctype_base"*, %"struct.std::ctype_base"** %this.addr, align 8
  %0 = bitcast %"struct.std::ctype_base"* %this1 to i8*
  store i8* %0, i8** %retval, align 8
  %should_call_delete2 = load i32, i32* %should_call_delete.addr, align 4
  call void @"??1ctype_base@std@@UEAA@XZ"(%"struct.std::ctype_base"* %this1) #13
  %1 = icmp eq i32 %should_call_delete2, 0
  br i1 %1, label %dtor.continue, label %dtor.call_delete

dtor.call_delete:                                 ; preds = %entry
  %2 = bitcast %"struct.std::ctype_base"* %this1 to i8*
  call void @"??3@YAXPEAX@Z"(i8* %2) #17
  br label %dtor.continue

dtor.continue:                                    ; preds = %dtor.call_delete, %entry
  %3 = load i8*, i8** %retval, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::_Facet_base"* @"??0_Facet_base@std@@QEAA@XZ"(%"class.std::_Facet_base"* returned %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Facet_base"*, align 8
  store %"class.std::_Facet_base"* %this, %"class.std::_Facet_base"** %this.addr, align 8
  %this1 = load %"class.std::_Facet_base"*, %"class.std::_Facet_base"** %this.addr, align 8
  %0 = bitcast %"class.std::_Facet_base"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** @"??_7_Facet_base@std@@6B@" to i32 (...)**), i32 (...)*** %0, align 8
  ret %"class.std::_Facet_base"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"??_Gfacet@locale@std@@MEAAPEAXI@Z"(%"class.std::locale::facet"* %this, i32 %should_call_delete) unnamed_addr #2 comdat align 2 {
entry:
  %retval = alloca i8*, align 8
  %should_call_delete.addr = alloca i32, align 4
  %this.addr = alloca %"class.std::locale::facet"*, align 8
  store i32 %should_call_delete, i32* %should_call_delete.addr, align 4
  store %"class.std::locale::facet"* %this, %"class.std::locale::facet"** %this.addr, align 8
  %this1 = load %"class.std::locale::facet"*, %"class.std::locale::facet"** %this.addr, align 8
  %0 = bitcast %"class.std::locale::facet"* %this1 to i8*
  store i8* %0, i8** %retval, align 8
  %should_call_delete2 = load i32, i32* %should_call_delete.addr, align 4
  call void @"??1facet@locale@std@@MEAA@XZ"(%"class.std::locale::facet"* %this1) #13
  %1 = icmp eq i32 %should_call_delete2, 0
  br i1 %1, label %dtor.continue, label %dtor.call_delete

dtor.call_delete:                                 ; preds = %entry
  %2 = bitcast %"class.std::locale::facet"* %this1 to i8*
  call void @"??3@YAXPEAX@Z"(i8* %2) #17
  br label %dtor.continue

dtor.continue:                                    ; preds = %dtor.call_delete, %entry
  %3 = load i8*, i8** %retval, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"??_G_Facet_base@std@@UEAAPEAXI@Z"(%"class.std::_Facet_base"* %this, i32 %should_call_delete) unnamed_addr #2 comdat align 2 {
entry:
  %retval = alloca i8*, align 8
  %should_call_delete.addr = alloca i32, align 4
  %this.addr = alloca %"class.std::_Facet_base"*, align 8
  store i32 %should_call_delete, i32* %should_call_delete.addr, align 4
  store %"class.std::_Facet_base"* %this, %"class.std::_Facet_base"** %this.addr, align 8
  %this1 = load %"class.std::_Facet_base"*, %"class.std::_Facet_base"** %this.addr, align 8
  %0 = bitcast %"class.std::_Facet_base"* %this1 to i8*
  store i8* %0, i8** %retval, align 8
  %should_call_delete2 = load i32, i32* %should_call_delete.addr, align 4
  call void @llvm.trap() #14
  unreachable
}

declare dso_local void @_purecall() unnamed_addr

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #12

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1facet@locale@std@@MEAA@XZ"(%"class.std::locale::facet"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::locale::facet"*, align 8
  store %"class.std::locale::facet"* %this, %"class.std::locale::facet"** %this.addr, align 8
  %this1 = load %"class.std::locale::facet"*, %"class.std::locale::facet"** %this.addr, align 8
  %0 = bitcast %"class.std::locale::facet"* %this1 to %"class.std::_Facet_base"*
  call void @"??1_Facet_base@std@@UEAA@XZ"(%"class.std::_Facet_base"* %0) #13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1_Facet_base@std@@UEAA@XZ"(%"class.std::_Facet_base"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Facet_base"*, align 8
  store %"class.std::_Facet_base"* %this, %"class.std::_Facet_base"** %this.addr, align 8
  %this1 = load %"class.std::_Facet_base"*, %"class.std::_Facet_base"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @"?_Getctype@_Locinfo@std@@QEBA?AU_Ctypevec@@XZ"(%"class.std::_Locinfo"* %this, %struct._Ctypevec* noalias sret align 8 %agg.result) #1 comdat align 2 {
entry:
  %result.ptr = alloca i8*, align 8
  %this.addr = alloca %"class.std::_Locinfo"*, align 8
  %0 = bitcast %struct._Ctypevec* %agg.result to i8*
  store i8* %0, i8** %result.ptr, align 8
  store %"class.std::_Locinfo"* %this, %"class.std::_Locinfo"** %this.addr, align 8
  %this1 = load %"class.std::_Locinfo"*, %"class.std::_Locinfo"** %this.addr, align 8
  call void @_Getctype(%struct._Ctypevec* sret align 8 %agg.result)
  ret void
}

declare dso_local void @_Getctype(%struct._Ctypevec* sret align 8) #9

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$ctype@D@std@@MEAA@XZ"(%"class.std::ctype"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::ctype"*, align 8
  store %"class.std::ctype"* %this, %"class.std::ctype"** %this.addr, align 8
  %this1 = load %"class.std::ctype"*, %"class.std::ctype"** %this.addr, align 8
  %0 = bitcast %"class.std::ctype"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** @"??_7?$ctype@D@std@@6B@" to i32 (...)**), i32 (...)*** %0, align 8
  call void @"?_Tidy@?$ctype@D@std@@IEAAXXZ"(%"class.std::ctype"* %this1) #13
  %1 = bitcast %"class.std::ctype"* %this1 to %"struct.std::ctype_base"*
  call void @"??1ctype_base@std@@UEAA@XZ"(%"struct.std::ctype_base"* %1) #13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Tidy@?$ctype@D@std@@IEAAXXZ"(%"class.std::ctype"* %this) #2 comdat align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %this.addr = alloca %"class.std::ctype"*, align 8
  store %"class.std::ctype"* %this, %"class.std::ctype"** %this.addr, align 8
  %this1 = load %"class.std::ctype"*, %"class.std::ctype"** %this.addr, align 8
  %_Ctype = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %this1, i32 0, i32 1
  %_Delfl = getelementptr inbounds %struct._Ctypevec, %struct._Ctypevec* %_Ctype, i32 0, i32 2
  %0 = load i32, i32* %_Delfl, align 8
  %cmp = icmp slt i32 0, %0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %_Ctype2 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %this1, i32 0, i32 1
  %_Table = getelementptr inbounds %struct._Ctypevec, %struct._Ctypevec* %_Ctype2, i32 0, i32 1
  %1 = load i16*, i16** %_Table, align 8
  %2 = bitcast i16* %1 to i8*
  invoke void @free(i8* %2)
          to label %invoke.cont unwind label %terminate

invoke.cont:                                      ; preds = %if.then
  br label %if.end9

if.else:                                          ; preds = %entry
  %_Ctype3 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %this1, i32 0, i32 1
  %_Delfl4 = getelementptr inbounds %struct._Ctypevec, %struct._Ctypevec* %_Ctype3, i32 0, i32 2
  %3 = load i32, i32* %_Delfl4, align 8
  %cmp5 = icmp slt i32 %3, 0
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.else
  %_Ctype7 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %this1, i32 0, i32 1
  %_Table8 = getelementptr inbounds %struct._Ctypevec, %struct._Ctypevec* %_Ctype7, i32 0, i32 1
  %4 = load i16*, i16** %_Table8, align 8
  %isnull = icmp eq i16* %4, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %if.then6
  %5 = bitcast i16* %4 to i8*
  call void @"??_V@YAXPEAX@Z"(i8* %5) #17
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %if.then6
  br label %if.end

if.end:                                           ; preds = %delete.end, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end, %invoke.cont
  %_Ctype10 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %this1, i32 0, i32 1
  %_LocaleName = getelementptr inbounds %struct._Ctypevec, %struct._Ctypevec* %_Ctype10, i32 0, i32 3
  %6 = load i16*, i16** %_LocaleName, align 8
  %7 = bitcast i16* %6 to i8*
  invoke void @free(i8* %7)
          to label %invoke.cont11 unwind label %terminate

invoke.cont11:                                    ; preds = %if.end9
  ret void

terminate:                                        ; preds = %if.end9, %if.then
  %8 = cleanuppad within none []
  call void @__std_terminate() #14 [ "funclet"(token %8) ]
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @"??_V@YAXPEAX@Z"(i8*) #8

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Adl_verify_range@PEADPEBD@std@@YAXAEBQEADAEBQEBD@Z"(i8** nonnull align 8 dereferenceable(8) %_First, i8** nonnull align 8 dereferenceable(8) %_Last) #2 comdat {
entry:
  %_Last.addr = alloca i8**, align 8
  %_First.addr = alloca i8**, align 8
  store i8** %_Last, i8*** %_Last.addr, align 8
  store i8** %_First, i8*** %_First.addr, align 8
  %0 = load i8**, i8*** %_First.addr, align 8
  %1 = load i8**, i8*** %_Last.addr, align 8
  ret void
}

declare dso_local i32 @_Tolower(i32, %struct._Ctypevec*) #9

declare dso_local i32 @_Toupper(i32, %struct._Ctypevec*) #9

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Adl_verify_range@PEBDPEBD@std@@YAXAEBQEBD0@Z"(i8** nonnull align 8 dereferenceable(8) %_First, i8** nonnull align 8 dereferenceable(8) %_Last) #2 comdat {
entry:
  %_Last.addr = alloca i8**, align 8
  %_First.addr = alloca i8**, align 8
  store i8** %_Last, i8*** %_Last.addr, align 8
  store i8** %_First, i8*** %_First.addr, align 8
  %0 = load i8**, i8*** %_First.addr, align 8
  %1 = load i8**, i8*** %_Last.addr, align 8
  ret void
}

declare dso_local void @"?_Locinfo_dtor@_Locinfo@std@@SAXPEAV12@@Z"(%"class.std::_Locinfo"*) #9

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::bad_cast"* @"??0bad_cast@std@@QEAA@XZ"(%"class.std::bad_cast"* returned %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::bad_cast"*, align 8
  store %"class.std::bad_cast"* %this, %"class.std::bad_cast"** %this.addr, align 8
  %this1 = load %"class.std::bad_cast"*, %"class.std::bad_cast"** %this.addr, align 8
  %0 = bitcast %"class.std::bad_cast"* %this1 to %"class.std::exception"*
  %call = call %"class.std::exception"* @"??0exception@std@@QEAA@QEBDH@Z"(%"class.std::exception"* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"??_C@_08EPJLHIJG@bad?5cast?$AA@", i64 0, i64 0), i32 1) #13
  %1 = bitcast %"class.std::bad_cast"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** @"??_7bad_cast@std@@6B@" to i32 (...)**), i32 (...)*** %1, align 8
  ret %"class.std::bad_cast"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::bad_cast"* @"??0bad_cast@std@@QEAA@AEBV01@@Z"(%"class.std::bad_cast"* returned %this, %"class.std::bad_cast"* nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
entry:
  %.addr = alloca %"class.std::bad_cast"*, align 8
  %this.addr = alloca %"class.std::bad_cast"*, align 8
  store %"class.std::bad_cast"* %0, %"class.std::bad_cast"** %.addr, align 8
  store %"class.std::bad_cast"* %this, %"class.std::bad_cast"** %this.addr, align 8
  %this1 = load %"class.std::bad_cast"*, %"class.std::bad_cast"** %this.addr, align 8
  %1 = bitcast %"class.std::bad_cast"* %this1 to %"class.std::exception"*
  %2 = load %"class.std::bad_cast"*, %"class.std::bad_cast"** %.addr, align 8
  %3 = bitcast %"class.std::bad_cast"* %2 to %"class.std::exception"*
  %call = call %"class.std::exception"* @"??0exception@std@@QEAA@AEBV01@@Z"(%"class.std::exception"* %1, %"class.std::exception"* nonnull align 8 dereferenceable(24) %3) #13
  %4 = bitcast %"class.std::bad_cast"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** @"??_7bad_cast@std@@6B@" to i32 (...)**), i32 (...)*** %4, align 8
  ret %"class.std::bad_cast"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1bad_cast@std@@UEAA@XZ"(%"class.std::bad_cast"* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::bad_cast"*, align 8
  store %"class.std::bad_cast"* %this, %"class.std::bad_cast"** %this.addr, align 8
  %this1 = load %"class.std::bad_cast"*, %"class.std::bad_cast"** %this.addr, align 8
  %0 = bitcast %"class.std::bad_cast"* %this1 to %"class.std::exception"*
  call void @"??1exception@std@@UEAA@XZ"(%"class.std::exception"* %0) #13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @"??_Gbad_cast@std@@UEAAPEAXI@Z"(%"class.std::bad_cast"* %this, i32 %should_call_delete) unnamed_addr #2 comdat align 2 {
entry:
  %retval = alloca i8*, align 8
  %should_call_delete.addr = alloca i32, align 4
  %this.addr = alloca %"class.std::bad_cast"*, align 8
  store i32 %should_call_delete, i32* %should_call_delete.addr, align 4
  store %"class.std::bad_cast"* %this, %"class.std::bad_cast"** %this.addr, align 8
  %this1 = load %"class.std::bad_cast"*, %"class.std::bad_cast"** %this.addr, align 8
  %0 = bitcast %"class.std::bad_cast"* %this1 to i8*
  store i8* %0, i8** %retval, align 8
  %should_call_delete2 = load i32, i32* %should_call_delete.addr, align 4
  call void @"??1bad_cast@std@@UEAA@XZ"(%"class.std::bad_cast"* %this1) #13
  %1 = icmp eq i32 %should_call_delete2, 0
  br i1 %1, label %dtor.continue, label %dtor.call_delete

dtor.call_delete:                                 ; preds = %entry
  %2 = bitcast %"class.std::bad_cast"* %this1 to i8*
  call void @"??3@YAXPEAX@Z"(i8* %2) #17
  br label %dtor.continue

dtor.continue:                                    ; preds = %dtor.call_delete, %entry
  %3 = load i8*, i8** %retval, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::_Compressed_pair.2"* @"??$?0AEAPEAV_Facet_base@std@@@?$_Compressed_pair@U?$default_delete@V_Facet_base@std@@@std@@PEAV_Facet_base@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@AEAPEAV_Facet_base@1@@Z"(%"class.std::_Compressed_pair.2"* returned %this, i8 %.coerce, %"class.std::_Facet_base"** nonnull align 8 dereferenceable(8) %_Val2) unnamed_addr #2 comdat align 2 {
entry:
  %0 = alloca %"struct.std::_Zero_then_variadic_args_t", align 1
  %_Val2.addr = alloca %"class.std::_Facet_base"**, align 8
  %this.addr = alloca %"class.std::_Compressed_pair.2"*, align 8
  %coerce.dive = getelementptr inbounds %"struct.std::_Zero_then_variadic_args_t", %"struct.std::_Zero_then_variadic_args_t"* %0, i32 0, i32 0
  store i8 %.coerce, i8* %coerce.dive, align 1
  store %"class.std::_Facet_base"** %_Val2, %"class.std::_Facet_base"*** %_Val2.addr, align 8
  store %"class.std::_Compressed_pair.2"* %this, %"class.std::_Compressed_pair.2"** %this.addr, align 8
  %this1 = load %"class.std::_Compressed_pair.2"*, %"class.std::_Compressed_pair.2"** %this.addr, align 8
  %1 = bitcast %"class.std::_Compressed_pair.2"* %this1 to %"struct.std::default_delete"*
  %_Myval2 = getelementptr inbounds %"class.std::_Compressed_pair.2", %"class.std::_Compressed_pair.2"* %this1, i32 0, i32 0
  %2 = load %"class.std::_Facet_base"**, %"class.std::_Facet_base"*** %_Val2.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) %"class.std::_Facet_base"** @"??$forward@AEAPEAV_Facet_base@std@@@std@@YAAEAPEAV_Facet_base@0@AEAPEAV10@@Z"(%"class.std::_Facet_base"** nonnull align 8 dereferenceable(8) %2) #13
  %3 = load %"class.std::_Facet_base"*, %"class.std::_Facet_base"** %call, align 8
  store %"class.std::_Facet_base"* %3, %"class.std::_Facet_base"** %_Myval2, align 8
  ret %"class.std::_Compressed_pair.2"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"class.std::_Facet_base"** @"??$forward@AEAPEAV_Facet_base@std@@@std@@YAAEAPEAV_Facet_base@0@AEAPEAV10@@Z"(%"class.std::_Facet_base"** nonnull align 8 dereferenceable(8) %_Arg) #2 comdat {
entry:
  %_Arg.addr = alloca %"class.std::_Facet_base"**, align 8
  store %"class.std::_Facet_base"** %_Arg, %"class.std::_Facet_base"*** %_Arg.addr, align 8
  %0 = load %"class.std::_Facet_base"**, %"class.std::_Facet_base"*** %_Arg.addr, align 8
  ret %"class.std::_Facet_base"** %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::_Facet_base"* @"??$exchange@PEAV_Facet_base@std@@PEAV12@@std@@YAPEAV_Facet_base@0@AEAPEAV10@$$QEAPEAV10@@Z"(%"class.std::_Facet_base"** nonnull align 8 dereferenceable(8) %_Val, %"class.std::_Facet_base"** nonnull align 8 dereferenceable(8) %_New_val) #2 comdat {
entry:
  %_New_val.addr = alloca %"class.std::_Facet_base"**, align 8
  %_Val.addr = alloca %"class.std::_Facet_base"**, align 8
  %_Old_val = alloca %"class.std::_Facet_base"*, align 8
  store %"class.std::_Facet_base"** %_New_val, %"class.std::_Facet_base"*** %_New_val.addr, align 8
  store %"class.std::_Facet_base"** %_Val, %"class.std::_Facet_base"*** %_Val.addr, align 8
  %0 = load %"class.std::_Facet_base"**, %"class.std::_Facet_base"*** %_Val.addr, align 8
  %1 = load %"class.std::_Facet_base"*, %"class.std::_Facet_base"** %0, align 8
  store %"class.std::_Facet_base"* %1, %"class.std::_Facet_base"** %_Old_val, align 8
  %2 = load %"class.std::_Facet_base"**, %"class.std::_Facet_base"*** %_New_val.addr, align 8
  %3 = load %"class.std::_Facet_base"*, %"class.std::_Facet_base"** %2, align 8
  %4 = load %"class.std::_Facet_base"**, %"class.std::_Facet_base"*** %_Val.addr, align 8
  store %"class.std::_Facet_base"* %3, %"class.std::_Facet_base"** %4, align 8
  %5 = load %"class.std::_Facet_base"*, %"class.std::_Facet_base"** %_Old_val, align 8
  ret %"class.std::_Facet_base"* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"struct.std::default_delete"* @"?_Get_first@?$_Compressed_pair@U?$default_delete@V_Facet_base@std@@@std@@PEAV_Facet_base@2@$00@std@@QEAAAEAU?$default_delete@V_Facet_base@std@@@2@XZ"(%"class.std::_Compressed_pair.2"* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Compressed_pair.2"*, align 8
  store %"class.std::_Compressed_pair.2"* %this, %"class.std::_Compressed_pair.2"** %this.addr, align 8
  %this1 = load %"class.std::_Compressed_pair.2"*, %"class.std::_Compressed_pair.2"** %this.addr, align 8
  %0 = bitcast %"class.std::_Compressed_pair.2"* %this1 to %"struct.std::default_delete"*
  ret %"struct.std::default_delete"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??R?$default_delete@V_Facet_base@std@@@std@@QEBAXPEAV_Facet_base@1@@Z"(%"struct.std::default_delete"* %this, %"class.std::_Facet_base"* %_Ptr) #2 comdat align 2 {
entry:
  %_Ptr.addr = alloca %"class.std::_Facet_base"*, align 8
  %this.addr = alloca %"struct.std::default_delete"*, align 8
  store %"class.std::_Facet_base"* %_Ptr, %"class.std::_Facet_base"** %_Ptr.addr, align 8
  store %"struct.std::default_delete"* %this, %"struct.std::default_delete"** %this.addr, align 8
  %this1 = load %"struct.std::default_delete"*, %"struct.std::default_delete"** %this.addr, align 8
  %0 = load %"class.std::_Facet_base"*, %"class.std::_Facet_base"** %_Ptr.addr, align 8
  %isnull = icmp eq %"class.std::_Facet_base"* %0, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %1 = bitcast %"class.std::_Facet_base"* %0 to i8* (%"class.std::_Facet_base"*, i32)***
  %vtable = load i8* (%"class.std::_Facet_base"*, i32)**, i8* (%"class.std::_Facet_base"*, i32)*** %1, align 8
  %vfn = getelementptr inbounds i8* (%"class.std::_Facet_base"*, i32)*, i8* (%"class.std::_Facet_base"*, i32)** %vtable, i64 0
  %2 = load i8* (%"class.std::_Facet_base"*, i32)*, i8* (%"class.std::_Facet_base"*, i32)** %vfn, align 8
  %call = call i8* %2(%"class.std::_Facet_base"* %0, i32 1) #13
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::locale"* @"??0locale@std@@QEAA@AEBV01@@Z"(%"class.std::locale"* returned %this, %"class.std::locale"* nonnull align 8 dereferenceable(16) %_Right) unnamed_addr #2 comdat align 2 {
entry:
  %_Right.addr = alloca %"class.std::locale"*, align 8
  %this.addr = alloca %"class.std::locale"*, align 8
  store %"class.std::locale"* %_Right, %"class.std::locale"** %_Right.addr, align 8
  store %"class.std::locale"* %this, %"class.std::locale"** %this.addr, align 8
  %this1 = load %"class.std::locale"*, %"class.std::locale"** %this.addr, align 8
  %0 = bitcast %"class.std::locale"* %this1 to %"class.std::_Locbase"*
  %1 = bitcast %"class.std::locale"* %this1 to i8*
  %2 = getelementptr inbounds i8, i8* %1, i64 1
  %3 = bitcast i8* %2 to %"struct.std::_Crt_new_delete"*
  %_Ptr = getelementptr inbounds %"class.std::locale", %"class.std::locale"* %this1, i32 0, i32 1
  %4 = load %"class.std::locale"*, %"class.std::locale"** %_Right.addr, align 8
  %_Ptr2 = getelementptr inbounds %"class.std::locale", %"class.std::locale"* %4, i32 0, i32 1
  %5 = load %"class.std::locale::_Locimp"*, %"class.std::locale::_Locimp"** %_Ptr2, align 8
  store %"class.std::locale::_Locimp"* %5, %"class.std::locale::_Locimp"** %_Ptr, align 8
  %_Ptr3 = getelementptr inbounds %"class.std::locale", %"class.std::locale"* %this1, i32 0, i32 1
  %6 = load %"class.std::locale::_Locimp"*, %"class.std::locale::_Locimp"** %_Ptr3, align 8
  %7 = bitcast %"class.std::locale::_Locimp"* %6 to %"class.std::locale::facet"*
  %8 = bitcast %"class.std::locale::facet"* %7 to void (%"class.std::locale::facet"*)***
  %vtable = load void (%"class.std::locale::facet"*)**, void (%"class.std::locale::facet"*)*** %8, align 8
  %vfn = getelementptr inbounds void (%"class.std::locale::facet"*)*, void (%"class.std::locale::facet"*)** %vtable, i64 1
  %9 = load void (%"class.std::locale::facet"*)*, void (%"class.std::locale::facet"*)** %vfn, align 8
  call void %9(%"class.std::locale::facet"* %7) #13
  ret %"class.std::locale"* %this1
}

attributes #0 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { noinline noreturn optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind willreturn writeonly }
attributes #8 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nobuiltin allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { cold noreturn nounwind }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { allocsize(0) }
attributes #17 = { builtin nounwind }
attributes #18 = { builtin allocsize(0) }

!llvm.linker.options = !{!0, !1, !2, !3, !4}
!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}

!0 = !{!"/FAILIFMISMATCH:\22_MSC_VER=1900\22"}
!1 = !{!"/FAILIFMISMATCH:\22_ITERATOR_DEBUG_LEVEL=0\22"}
!2 = !{!"/FAILIFMISMATCH:\22RuntimeLibrary=MT_StaticRelease\22"}
!3 = !{!"/DEFAULTLIB:libcpmt.lib"}
!4 = !{!"/FAILIFMISMATCH:\22_CRT_STDIO_ISO_WIDE_SPECIFIERS=0\22"}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 12.0.0"}
