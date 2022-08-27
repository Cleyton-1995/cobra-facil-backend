/*
  Warnings:

  - You are about to drop the column `userId` on the `charge` table. All the data in the column will be lost.
  - You are about to alter the column `dueDate` on the `charge` table. The data in that column could be lost. The data in that column will be cast from `DateTime(0)` to `DateTime`.
  - You are about to drop the column `idCharge` on the `user_charge` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `user_charge` table. All the data in the column will be lost.
  - Added the required column `id_Charge` to the `user_charge` table without a default value. This is not possible if the table is not empty.
  - Added the required column `id_User` to the `user_charge` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `user_charge` DROP FOREIGN KEY `user_charge_idCharge_fkey`;

-- DropForeignKey
ALTER TABLE `user_charge` DROP FOREIGN KEY `user_charge_userId_fkey`;

-- DropIndex
DROP INDEX `charge_userId_fkey` ON `charge`;

-- AlterTable
ALTER TABLE `charge` DROP COLUMN `userId`,
    MODIFY `dueDate` DATETIME NOT NULL;

-- AlterTable
ALTER TABLE `user_charge` DROP COLUMN `idCharge`,
    DROP COLUMN `userId`,
    ADD COLUMN `id_Charge` INTEGER NOT NULL,
    ADD COLUMN `id_User` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `user_charge` ADD CONSTRAINT `user_charge_id_User_fkey` FOREIGN KEY (`id_User`) REFERENCES `user`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `user_charge` ADD CONSTRAINT `user_charge_id_Charge_fkey` FOREIGN KEY (`id_Charge`) REFERENCES `charge`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
