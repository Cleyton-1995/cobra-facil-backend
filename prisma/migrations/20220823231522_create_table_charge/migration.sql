/*
  Warnings:

  - You are about to drop the `voucher` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `voucher` DROP FOREIGN KEY `voucher_userId_fkey`;

-- DropTable
DROP TABLE `voucher`;

-- CreateTable
CREATE TABLE `charge` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `userId` INTEGER NOT NULL,
    `name` VARCHAR(75) NOT NULL,
    `description` TEXT NOT NULL,
    `status` TINYINT NOT NULL,
    `value` DECIMAL(7, 2) NOT NULL,
    `code` INTEGER NOT NULL,
    `dueDate` DATETIME NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `charge` ADD CONSTRAINT `charge_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `user`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
