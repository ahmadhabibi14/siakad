-- CreateTable
CREATE TABLE `User` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nim` INTEGER NOT NULL,
    `nama` VARCHAR(191) NULL,
    `email` VARCHAR(191) NOT NULL,
    `phoneNumber` VARCHAR(191) NULL,
    `passwordHash` VARCHAR(191) NOT NULL,
    `angkatan` INTEGER NOT NULL,
    `avatarFileName` VARCHAR(191) NOT NULL DEFAULT 'default.png',
    `role` ENUM('MAHASISWA', 'DOSEN', 'ADMIN') NOT NULL DEFAULT 'MAHASISWA',

    UNIQUE INDEX `User_nim_key`(`nim`),
    UNIQUE INDEX `User_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
