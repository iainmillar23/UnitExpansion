/* Unit Upgrade Changes */
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_TREBUCHET' WHERE Unit = 'UNIT_CATAPULT';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_RIFLEMAN' WHERE Unit = 'UNIT_MUSKETMAN';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_RIFLEMAN' WHERE Unit = 'UNIT_SPANISH_CONQUISTADOR';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_CUIRASSIER' WHERE Unit = 'UNIT_KNIGHT';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_CUIRASSIER' WHERE Unit = 'UNIT_ARABIAN_MAMLUK';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_LONGSWORDSMAN' WHERE Unit = 'UNIT_SWORDSMAN';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_LONGSWORDSMAN' WHERE Unit = 'UNIT_ROMAN_LEGION';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_LONGSWORDSMAN' WHERE Unit = 'UNIT_KONGO_SHIELD_BEARER';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_MEDIEVAL_HORSEMAN' WHERE  Unit = 'UNIT_HORSEMAN';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_KNIGHT' WHERE Unit = 'UNIT_SUMERIAN_WAR_CART';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_EXPLORER' WHERE Unit = 'UNIT_SCOUT';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_MORTAR' WHERE Unit = 'UNIT_FIELD_CANNON';

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_SELF_PROPELLED_ARTILLERY' WHERE Unit = 'UNIT_ARTILLERY';

/* Unit Changes */
UPDATE Units SET Combat = 46 WHERE UnitType = 'UNIT_JAPANESE_SAMURAI';

UPDATE Units SET Combat = 41 WHERE UnitType = 'UNIT_ROMAN_LEGION';

UPDATE Units SET Cost = 200 WHERE UnitType = 'UNIT_KNIGHT';

UPDATE Units SET Cost = 200 WHERE UnitType = 'UNIT_ARABIAN_MAMLUK';

UPDATE Units SET Cost = 180 WHERE UnitType = 'UNIT_PIKEMAN';

UPDATE Units SET Cost = 140 WHERE UnitType = 'UNIT_NORWEGIAN_BERSERKER';

UPDATE Units SET BaseSightRange = 2 WHERE UnitType='UNIT_NATURALIST';

UPDATE Units SET Bombard = 0, RangedCombat = 95, BaseMoves = 3, PromotionClass = 'PROMOTION_CLASS_RANGED' WHERE UnitType = 'UNIT_ROCKET_ARTILLERY';

UPDATE Units SET ZoneOfControl = 1, Cost = 360, Maintenance = 4 WHERE UnitType = 'UNIT_MACHINE_GUN';

UPDATE ModifierArguments SET Value = 9 WHERE ModifierId = 'CONQUISTADOR_SPECIFIC_UNIT_COMBAT' AND Name = 'Amount';

/* Anti Cavalry boost */
DELETE FROM UnitAbilityModifiers WHERE UnitAbilityType = 'ABILITY_ANTI_CAVALRY' AND ModifierId = 'ANTI_CAVALRY_COMBAT_BONUS';

/* DLC Changes */

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_LONGSWORDSMAN' WHERE Unit = 'UNIT_PERSIAN_IMMORTAL' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_PERSIAN_IMMORTAL');

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_LONGSWORDSMAN' WHERE Unit = 'UNIT_GREEK_HYPASPIST' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_GREEK_HYPASPIST');

/* Rise & Fall Changes */

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_MORTAR' WHERE Unit = 'UNIT_KOREAN_HWACHA' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_KOREAN_HWACHA');

UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_DLV_EXPLORER' WHERE Unit = 'UNIT_CREE_OKIHTCITAW' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_CREE_OKIHTCITAW');

UPDATE Units SET Cost = 140 WHERE UnitType = 'UNIT_GEORGIAN_KHEVSURETI' AND EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_GEORGIAN_KHEVSURETI');
