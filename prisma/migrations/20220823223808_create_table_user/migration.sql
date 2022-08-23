-- CreateTable
CREATE TABLE `user` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `pv` TINYINT NOT NULL,
    `status` TINYINT NOT NULL,
    `email` VARCHAR(75) NOT NULL,
    `document` VARCHAR(14) NOT NULL,
    `password` VARCHAR(60) NULL,
    `name` VARCHAR(75) NOT NULL,
    `phone` VARCHAR(11) NULL,
    `avatar` VARCHAR(255) NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `voucher` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `userId` INTEGER NOT NULL,
    `status` TINYINT NOT NULL,
    `type` TINYINT NOT NULL,
    `code` INTEGER NOT NULL,
    `spentValue` DECIMAL(19, 2) NULL,
    `savedValue` DECIMAL(19, 2) NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `voucher` ADD CONSTRAINT `voucher_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `user`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
