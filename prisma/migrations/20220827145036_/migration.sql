/*
  Warnings:

  - You are about to alter the column `dueDate` on the `charge` table. The data in that column could be lost. The data in that column will be cast from `DateTime(0)` to `DateTime`.

*/
-- DropForeignKey
ALTER TABLE `charge` DROP FOREIGN KEY `charge_userId_fkey`;

-- AlterTable
ALTER TABLE `charge` MODIFY `dueDate` DATETIME NOT NULL;

-- CreateTable
CREATE TABLE `user_charge` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `userId` INTEGER NOT NULL,
    `idCharge` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `user_charge` ADD CONSTRAINT `user_charge_idCharge_fkey` FOREIGN KEY (`idCharge`) REFERENCES `user`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `user_charge` ADD CONSTRAINT `user_charge_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `charge`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
