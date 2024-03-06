/*
  Warnings:

  - You are about to drop the column `angkatan` on the `User` table. All the data in the column will be lost.
  - Added the required column `tahunMasuk` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `User` DROP COLUMN `angkatan`,
    ADD COLUMN `tahunMasuk` YEAR NOT NULL;
