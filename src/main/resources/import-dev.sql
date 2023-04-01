INSERT INTO "users" ("id", "name", "password", "created", "version")
VALUES (0, 'admin', '$2y$10$zoNV3lgzljnqALG/fIDxpePqiFjLLn/BEERYCeO5fpCPUuIwgBSAC', NOW(), 0)
    ON CONFLICT DO NOTHING;
INSERT INTO "user_roles" ("id", "role") VALUES (0, 'admin')
    ON CONFLICT DO NOTHING;
INSERT INTO "user_roles" ("id", "role") VALUES (0, 'user')
    ON CONFLICT DO NOTHING;
INSERT INTO "users" ("id", "name", "password", "created", "version")
VALUES (1, 'user', '$2y$10$zoNV3lgzljnqALG/fIDxpePqiFjLLn/BEERYCeO5fpCPUuIwgBSAC', NOW(), 0)
    ON CONFLICT DO NOTHING;
INSERT INTO "user_roles" ("id", "role") VALUES (1, 'user')
    ON CONFLICT DO NOTHING;
INSERT INTO "projects" ("id", "name", "user_id", "created", "version")
VALUES (0, 'Work', 1, NOW(), 0)
    ON CONFLICT DO NOTHING;

ALTER SEQUENCE IF EXISTS hibernate_sequence RESTART WITH 10;
