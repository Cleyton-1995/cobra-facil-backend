-- CreateTable
CREATE TABLE `user` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `pv` TINYINT NULL,
    `status` TINYINT NULL,
    `email` VARCHAR(75) NULL,
    `document` VARCHAR(14) NULL,
    `password` VARCHAR(60) NULL,
    `name` VARCHAR(75) NULL,
    `phone` VARCHAR(11) NULL,
    `avatar` VARCHAR(255) NULL,
    `createdAt` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updatedAt` DATETIME(3) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `charge` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(75) NULL,
    `description` TEXT NULL,
    `status` TINYINT NULL,
    `value` DECIMAL(7, 2) NULL,
    `code` INTEGER NULL,
    `dueDate` DATETIME NULL,
    `createdAt` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `user_charge` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `id_User` INTEGER NOT NULL,
    `id_Charge` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `user_charge` ADD CONSTRAINT `user_charge_id_User_fkey` FOREIGN KEY (`id_User`) REFERENCES `user`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `user_charge` ADD CONSTRAINT `user_charge_id_Charge_fkey` FOREIGN KEY (`id_Charge`) REFERENCES `charge`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
