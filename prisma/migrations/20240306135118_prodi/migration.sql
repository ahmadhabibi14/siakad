-- CreateTable
CREATE TABLE `Fakultas` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nama` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `Fakultas_nama_key`(`nama`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ProgramStudi` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nama` VARCHAR(191) NOT NULL,
    `fakultasId` INTEGER NOT NULL,

    UNIQUE INDEX `ProgramStudi_nama_key`(`nama`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `ProgramStudi` ADD CONSTRAINT `ProgramStudi_fakultasId_fkey` FOREIGN KEY (`fakultasId`) REFERENCES `Fakultas`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
