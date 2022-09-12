/*
  Warnings:

  - You are about to alter the column `dueDate` on the `charge` table. The data in that column could be lost. The data in that column will be cast from `DateTime(0)` to `DateTime`.
  - A unique constraint covering the columns `[account]` on the table `user` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE `charge` MODIFY `dueDate` DATETIME NULL;

-- AlterTable
ALTER TABLE `user` ADD COLUMN `account` TINYINT NULL,
    ADD COLUMN `agency` TINYINT NULL,
    ADD COLUMN `bank` VARCHAR(75) NULL;

-- CreateIndex
CREATE UNIQUE INDEX `user_account_key` ON `user`(`account`);
