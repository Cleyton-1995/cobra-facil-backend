/*
  Warnings:

  - You are about to alter the column `dueDate` on the `charge` table. The data in that column could be lost. The data in that column will be cast from `DateTime(0)` to `DateTime`.

*/
-- AlterTable
ALTER TABLE `charge` MODIFY `dueDate` DATETIME NULL;
