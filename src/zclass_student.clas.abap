CLASS ZCLASS_STUDENT DEFINITION PUBLIC FINAL CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES IF_OO_ADT_CLASSRUN.
ENDCLASS.


CLASS ZCLASS_STUDENT IMPLEMENTATION.

  METHOD IF_OO_ADT_CLASSRUN~MAIN.
    DATA: IT_STUDENTS TYPE TABLE OF ZYTABLE_STUDENT.

* Filling Internal table (ITAB)
    IT_STUDENTS = VALUE #(
        ( STUDENT_ID = '0001' STUDENT_NAME = 'Naruto Uzumaki' DATE_OF_BIRTH = '20001010' GENDER = 'M' EMAIL = 'naruto.uzumaki@fake.com'
            CREATED_ON = cl_abap_context_info=>get_system_date( ) CREATED_at = cl_abap_context_info=>GET_SYSTEM_TIME( ) created_by = sy-UNAME )
        ( STUDENT_ID = '0002' STUDENT_NAME = 'Sasuke Uchiha'  DATE_OF_BIRTH = '20000723' GENDER = 'M' EMAIL = 'sasuke.uchiha@fake.com'
            CREATED_ON = cl_abap_context_info=>get_system_date( ) CREATED_at = cl_abap_context_info=>GET_SYSTEM_TIME( ) created_by = sy-UNAME )
        ( STUDENT_ID = '0003' STUDENT_NAME = 'Sakura Haruno'  DATE_OF_BIRTH = '19990207' GENDER = 'F' EMAIL = 'sakura.haruno@fake.com'
            CREATED_ON = cl_abap_context_info=>get_system_date( ) CREATED_at = cl_abap_context_info=>GET_SYSTEM_TIME( ) created_by = sy-UNAME )
        ( STUDENT_ID = '0004' STUDENT_NAME = 'Hinata Hyuga'   DATE_OF_BIRTH = '19991227' GENDER = 'F' EMAIL = 'hinata.hyuga@fake.com'
            CREATED_ON = cl_abap_context_info=>get_system_date( ) CREATED_at = cl_abap_context_info=>GET_SYSTEM_TIME( ) created_by = sy-UNAME )
        ( STUDENT_ID = '0005' STUDENT_NAME = 'Shikamaru Nara' DATE_OF_BIRTH = '19980613' GENDER = 'M' EMAIL = 'shikamaru.nara@fake.com'
            CREATED_ON = cl_abap_context_info=>get_system_date( ) CREATED_at = cl_abap_context_info=>GET_SYSTEM_TIME( ) created_by = sy-UNAME )
        ( STUDENT_ID = '0006' STUDENT_NAME = 'Itachi Uchiha'  DATE_OF_BIRTH = '19960502' GENDER = 'M' EMAIL = 'itachi.uchiha@fake.com'
            CREATED_ON = cl_abap_context_info=>get_system_date( ) CREATED_at = cl_abap_context_info=>GET_SYSTEM_TIME( ) created_by = sy-UNAME )
        ( STUDENT_ID = '0007' STUDENT_NAME = 'Rock Lee'       DATE_OF_BIRTH = '20000227' GENDER = 'M' EMAIL = 'rock.lee@fake.com'
            CREATED_ON = cl_abap_context_info=>get_system_date( ) CREATED_at = cl_abap_context_info=>GET_SYSTEM_TIME( ) created_by = sy-UNAME )
        ( STUDENT_ID = '0008' STUDENT_NAME = 'Neji Hyuga'     DATE_OF_BIRTH = '19990818' GENDER = 'M' EMAIL = 'neji.hyuga@fake.com'
            CREATED_ON = cl_abap_context_info=>get_system_date( ) CREATED_at = cl_abap_context_info=>GET_SYSTEM_TIME( ) created_by = sy-UNAME )
        ( STUDENT_ID = '0009' STUDENT_NAME = 'Obito Uchiha'   DATE_OF_BIRTH = '19960712' GENDER = 'M' EMAIL = 'obito.uchiha@fake.com'
            CREATED_ON = cl_abap_context_info=>get_system_date( ) CREATED_at = cl_abap_context_info=>GET_SYSTEM_TIME( ) created_by = sy-UNAME )
        ( STUDENT_ID = '0010' STUDENT_NAME = 'Ko Hyuga'       DATE_OF_BIRTH = '19970424' GENDER = 'M' EMAIL = 'ko.hyuga@fake.com'
            CREATED_ON = cl_abap_context_info=>get_system_date( ) CREATED_at = cl_abap_context_info=>GET_SYSTEM_TIME( ) created_by = sy-UNAME )
        ( STUDENT_ID = '0011' STUDENT_NAME = 'Kagami Uchiha'  DATE_OF_BIRTH = '19970922' GENDER = 'M' EMAIL = 'kagami.uchiha@fake.com'
            CREATED_ON = cl_abap_context_info=>get_system_date( ) CREATED_at = cl_abap_context_info=>GET_SYSTEM_TIME( ) created_by = sy-UNAME )
        ( STUDENT_ID = '0012' STUDENT_NAME = 'Tenten'         DATE_OF_BIRTH = '20000216' GENDER = 'F' EMAIL = 'tenten@fake.com'
            CREATED_ON = cl_abap_context_info=>get_system_date( ) CREATED_at = cl_abap_context_info=>GET_SYSTEM_TIME( ) created_by = sy-UNAME )
        ( STUDENT_ID = '0013' STUDENT_NAME = 'Temari'         DATE_OF_BIRTH = '19990517' GENDER = 'F' EMAIL = 'temari@fake.com'
            CREATED_ON = cl_abap_context_info=>get_system_date( ) CREATED_at = cl_abap_context_info=>GET_SYSTEM_TIME( ) created_by = sy-UNAME ) ).

    DELETE FROM ZYTABLE_STUDENT.                                       "To delete existing entry from Table
    INSERT ZYTABLE_STUDENT FROM TABLE @IT_STUDENTS.                    "Insert the data from ITab to Table
    OUT->WRITE( |{ SY-DBCNT } entries inserted successfully!| ).       "Print the output upon successful creation of records in Table

  ENDMETHOD.
ENDCLASS.

