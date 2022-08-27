-- /*
--   Warnings:

--   - You are about to alter the column `dueDate` on the `charge` table. The data in that column could be lost. The data in that column will be cast from `DateTime(0)` to `DateTime`.

-- */
-- -- AlterTable
-- ALTER TABLE `charge` MODIFY `name` VARCHAR(75) NULL,
--     MODIFY `description` TEXT NULL,
--     MODIFY `status` TINYINT NULL,
--     MODIFY `value` DECIMAL(7, 2) NULL,
--     MODIFY `code` INTEGER NULL,
--     MODIFY `dueDate` DATETIME NULL,
--     MODIFY `createdAt` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
--     MODIFY `updatedAt` DATETIME(3) NULL;

-- -- AlterTable
-- ALTER TABLE `user` MODIFY `pv` TINYINT NULL,
--     MODIFY `status` TINYINT NULL,
--     MODIFY `email` VARCHAR(75) NULL,
--     MODIFY `document` VARCHAR(14) NULL,
--     MODIFY `name` VARCHAR(75) NULL,
--     MODIFY `updatedAt` DATETIME(3) NULL;
