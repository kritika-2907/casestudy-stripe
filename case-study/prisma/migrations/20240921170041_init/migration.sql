/*
  Warnings:

  - Added the required column `activationDate` to the `CustomerPlan` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dueDate` to the `CustomerPlan` table without a default value. This is not possible if the table is not empty.
  - Added the required column `billingCycle` to the `Plan` table without a default value. This is not possible if the table is not empty.
  - Added the required column `billingCycle` to the `PrepaidPlan` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `customerplan` ADD COLUMN `activationDate` DATETIME(3) NOT NULL,
    ADD COLUMN `datePurchased` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `dueDate` DATETIME(3) NOT NULL;

-- AlterTable
ALTER TABLE `invoice` ADD COLUMN `status` VARCHAR(191) NULL DEFAULT 'null';

-- AlterTable
ALTER TABLE `plan` ADD COLUMN `billingCycle` VARCHAR(191) NOT NULL,
    MODIFY `description` VARCHAR(191) NOT NULL DEFAULT 'basic plan';

-- AlterTable
ALTER TABLE `prepaidplan` ADD COLUMN `billingCycle` VARCHAR(191) NOT NULL;
