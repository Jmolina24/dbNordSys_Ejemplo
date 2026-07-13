CREATE DATABASE dbNordSys;
USE dbNordSys;
SET NAMES utf8mb4;

CREATE TABLE contact (
    id CHAR(36) NOT NULL,
    whatsapp VARCHAR(20) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    email VARCHAR(255) NOT NULL,
    city VARCHAR(100) NOT NULL,
    SCHEDULE VARCHAR(100) NOT NULL,
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL,

    PRIMARY KEY (id),
    UNIQUE KEY uk_email (email),
    INDEX idx_whatsapp (whatsapp),
    INDEX idx_phone (phone)
)
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

INSERT INTO contact (
    id,
    whatsapp,
    phone,
    email,
    city,
    SCHEDULE,
    createdAt,
    updatedAt
) VALUES (
    '8083024c-06e3-4894-96f5-de8a6af97212',
    '3242047574',
    '6011234567',
    'info@cryotech.co',
    'Cali, Colombia',
    'Lun–Dom · 7am–9pm',
    '2026-06-21 03:18:18',
    '2026-06-24 01:56:17'
);


CREATE TABLE users (
    id CHAR(36) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    tipo_documento VARCHAR(10) NOT NULL,
    num_documento VARCHAR(20) NOT NULL,
    email VARCHAR(255) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    username VARCHAR(100) NOT NULL,
    PASSWORD VARCHAR(255) NOT NULL,
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL,

    PRIMARY KEY (id),
    UNIQUE KEY uk_email (email),
    UNIQUE KEY uk_num_documento (num_documento),
    UNIQUE KEY uk_username (username),
    INDEX idx_telefono (telefono)
)
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;



INSERT INTO users (
    id,
    nombre,
    apellido,
    tipo_documento,
    num_documento,
    email,
    telefono,
    username,
    PASSWORD,
    createdAt,
    updatedAt
) VALUES (
    'ae0d19c1-d503-4b40-a55d-08d13e2576b2',
    'Jair',
    'Molina',
    'CC',
    '1143450658',
    'jairmolina51@gmail.com',
    '3242047574',
    'Admin',
    'Admin',
    '2026-06-20 21:35:23',
    '2026-06-20 21:35:23'
);


CREATE TABLE services (
    id CHAR(36) NOT NULL,
    icon VARCHAR(20) NOT NULL,
    color VARCHAR(50) NOT NULL,
    title VARCHAR(255) NOT NULL,
    `desc` TEXT NOT NULL,
    items JSON NOT NULL,
    ACTIVE BOOLEAN NOT NULL DEFAULT TRUE,
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL,

    PRIMARY KEY (id),
    INDEX idx_title (title),
    INDEX idx_active (ACTIVE)
)
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;


INSERT INTO services (
    id,
    icon,
    color,
    title,
    `desc`,
    items,
    ACTIVE,
    createdAt,
    updatedAt
) VALUES (
    UUID(),
    '❄️',
    'blue',
    'Mantenimiento aire acondicionado',
    'Limpieza de filtros, revisión de gas...',
    JSON_ARRAY(
        'Limpieza de filtros',
        'Revisión de gas',
        'Prueba final'
    ),
    TRUE,
    NOW(),
    NOW()
);


CREATE TABLE seccion (
    id CHAR(36) NOT NULL,
    num CHAR(10) NOT NULL,
    icon VARCHAR(20) NOT NULL,
    title VARCHAR(255) NOT NULL,
    descripcion TEXT NOT NULL,
    ACTIVE BOOLEAN NOT NULL DEFAULT TRUE,
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL,

    PRIMARY KEY (id),
    INDEX idx_num (num),
    INDEX idx_title (title),
    INDEX idx_active (ACTIVE)
)
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

ALTER TABLE seccion
CONVERT TO CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;



INSERT INTO seccion (
    id,
    num,
    icon,
    title,
    descripcion,
    ACTIVE,
    createdAt,
    updatedAt
) VALUES (
    '8083024c-06e3-4894-96f5-de8a6af97242',
    '01',
    '📞',
    'Solicita el servicio',
    'Contáctanos por WhatsApp...',
    TRUE,
    '2026-06-21 03:18:18',
    '2026-06-21 03:18:18'
);


