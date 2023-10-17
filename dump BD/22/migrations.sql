INSERT INTO SAPI.migrations (id, migration, batch) VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (2, '2014_10_12_100000_create_password_reset_tokens_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (5, '2020_03_31_114745_remove_backpackuser_model', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (6, '2020_MM_DD_133858_create_permission_tables', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (7, '2021_11_11_100000_users_add_is_blocked', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (8, '2023_05_18_142040_users_add_profile_data', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (9, '2023_09_07_104804_create_students_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (10, '2023_09_07_110607_create_parents_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (11, '2023_09_07_110844_create_parent_student_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (12, '2023_09_09_181908_create_news_categories_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (13, '2023_09_09_202707_create_subjects_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (14, '2023_09_09_203905_create_call_schedules_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (15, '2023_09_10_105606_create_photos_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (16, '2023_09_10_105829_create_albums_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (17, '2023_09_10_110028_create_album_photo_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (18, '2023_09_10_123417_create_appeals_categories_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (19, '2023_09_10_124322_create_achievements_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (20, '2023_09_11_143950_create_appeals_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (21, '2023_09_11_144254_create_teachers_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (22, '2023_09_11_144545_create_news_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (23, '2023_09_11_144600_create_likes_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (24, '2023_09_11_145023_create_classrooms_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (25, '2023_09_11_145129_create_days_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (26, '2023_09_11_145236_create_schedules_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (27, '2023_09_19_081214_delete_classroom_id_column_from_days_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (28, '2023_09_19_145504_add_column_text_from_news_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (29, '2023_09_19_145519_rename_column_resource_to_source_from_table_news', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (30, '2023_09_21_090614_change_type_on_json_of_source_column_in_news_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (31, '2023_09_25_172443_create_cabinets_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (32, '2023_09_28_083748_permissions_1', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (33, '2023_09_28_085029_permissions_2', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (34, '2023_09_28_221702_create_menu_items_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (35, '2023_09_28_221755_create_menu_basics_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (36, '2023_09_28_222221_create_menus_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (37, '2023_09_30_103540_update_teachers_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (38, '2023_09_30_164756_update_appeals', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (39, '2023_10_02_190052_create_chapters_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (40, '2023_10_02_190126_create_sections_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (41, '2023_10_02_190153_create_docimages_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (42, '2023_10_02_190219_create_docsources_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (43, '2023_10_02_190250_create_docimage_section_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (44, '2023_10_02_190321_create_docsource_section_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (45, '2023_10_07_225547_update_students_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (46, '2023_10_07_225606_update_parents_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (47, '2023_10_09_233819_add_classroom_id_column_to_students_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (48, '2023_10_09_234605_add_number_column_to_cabinets_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (49, '2023_10_09_235517_add_cabinet_id_column_to_classrooms_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (50, '2023_10_15_230330_create_banners_table', 1);
INSERT INTO SAPI.migrations (id, migration, batch) VALUES (51, '2023_10_15_230330_create_banners_table', 1);
