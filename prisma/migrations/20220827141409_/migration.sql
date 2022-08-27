/*
  Warnings:

  - You are about to alter the column `dueDate` on the `charge` table. The data in that column could be lost. The data in that column will be cast from `DateTime(0)` to `DateTime`.
  - You are about to alter the column `createdAt` on the `user` table. The data in that column could be lost. The data in that column will be cast from `DateTime(3)` to `DateTime(0)`.

*/
-- AlterTable
ALTER TABLE `charge` MODIFY `dueDate` DATETIME NOT NULL;

-- AlterTable
ALTER TABLE `user` MODIFY `createdAt` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0);
