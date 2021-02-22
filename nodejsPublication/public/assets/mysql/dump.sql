/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: smmcDocsTable
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `smmcDocsTable` (
  `docsType` varchar(1000) NOT NULL,
  `authorList` varchar(1000) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `journalConferName` varchar(1000) NOT NULL,
  `year` varchar(1000) NOT NULL,
  `month` varchar(1000) NOT NULL,
  `day` varchar(1000) NOT NULL,
  `volNoPP` varchar(1000) NOT NULL,
  `docsLink` varchar(1000) NOT NULL,
  `docsFile` varchar(1000) NOT NULL,
  PRIMARY KEY (`title`)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: smmcDocsTable
# ------------------------------------------------------------

INSERT INTO
  `smmcDocsTable` (
    `docsType`,
    `authorList`,
    `title`,
    `journalConferName`,
    `year`,
    `month`,
    `day`,
    `volNoPP`,
    `docsLink`,
    `docsFile`
  )
VALUES
  (
    '0049006e007400650072006e006100740069006f006e0061006c0020004a006f00750072006e0061006c0073',
    '004a0069006e00730075006c0020004b0069006d002c00200059006f006e0067006700770061006e00200057006f006e002c0020004300680061006e00670077006f006f00200059006f006f006e002c0020004a0069006e002d0059006f0075006e00670020004b0069006d002c002000530061006e00670068006f0020005000610072006b002c0020004a00610065004300680065006f006c002000520079006f0075002c0020004c0069006e0068002000560061006e0020004d0061',
    '004100200043006f006e0074006500780074002d0061007700610072006500200061006400610070007400690076006500200061006c0067006f0072006900740068006d00200066006f007200200061006d006200690065006e007400200069006e00740065006c006c006900670065006e00630065002000440041005300480020006100740020006d006f00620069006c00650020006500640067006500200063006f006d0070007500740069006e0067',
    '004a006f00750072006e0061006c0020006f006600200041006d006200690065006e007400200049006e00740065006c006c006900670065006e0063006500200061006e0064002000480075006d0061006e0069007a0065006400200043006f006d0070007500740069006e0067',
    '0032003000310038',
    '00300039',
    '00320031',
    '004600690072007300740020004f006e006c0069006e0065003a002000320031002000530065007000740065006d00620065007200200032003000310038',
    '00680074007400700073003a002f002f006c0069006e006b002e0073007000720069006e006700650072002e0063006f006d002f00610072007400690063006c0065002f00310030002e0031003000300037002f007300310032003600350032002d003000310038002d0031003000340039002d007a',
    '0032003000310038002e00300039002e00320031005f004100200043006f006e0074006500780074002d0061007700610072006500200061006400610070007400690076006500200061006c0067006f0072006900740068006d00200066006f007200200061006d006200690065006e002e007000640066'
  );
INSERT INTO
  `smmcDocsTable` (
    `docsType`,
    `authorList`,
    `title`,
    `journalConferName`,
    `year`,
    `month`,
    `day`,
    `volNoPP`,
    `docsLink`,
    `docsFile`
  )
VALUES
  (
    '0049006e007400650072006e006100740069006f006e0061006c0020004a006f00750072006e0061006c0073',
    '004c0069006e0068002000560061006e0020004d0061002c0020004a00610065006800790075006e00670020005000610072006b002c0020004a0069007300650075006e00670020004e0061006d002c00200048006f0079006f0075006e0067002000520079007500200061006e00640020004a0069006e00730075006c0020004b0069006d',
    '0041002000460075007a007a0079002d00420061007300650064002000410064006100700074006900760065002000530074007200650061006d0069006e006700200041006c0067006f0072006900740068006d00200066006f00720020005200650064007500630069006e006700200045006e00740072006f00700079002000520061007400650020006f0066002000440041005300480020004200690074007200610074006500200046006c0075006300740075006100740069006f006e00200074006f00200049006d00700072006f007600650020004d006f00620069006c00650020005100750061006c0069007400790020006f006600200053006500720076006900630065',
    '0045006e00740072006f00700079',
    '0032003000310037',
    '00300039',
    '00300037',
    '0056006f006c002e00310039002c0020004e006f002e0039002c002000700070003400370037002d003400380031',
    '00680074007400700073003a002f002f007700770077002e006d006400700069002e0063006f006d002f0031003000390039002d0034003300300030002f00310039002f0039002f003400370037',
    '0032003000310037002e00300039002e00300037005f0041002000460075007a007a0079002d00420061007300650064002000410064006100700074006900760065002000530074007200650061006d0069006e002e007000640066'
  );
INSERT INTO
  `smmcDocsTable` (
    `docsType`,
    `authorList`,
    `title`,
    `journalConferName`,
    `year`,
    `month`,
    `day`,
    `volNoPP`,
    `docsLink`,
    `docsFile`
  )
VALUES
  (
    '0049006e007400650072006e006100740069006f006e0061006c00200043006f006e0066006500720065006e00630065007300200061006e006400200057006f0072006b00730068006f00700073',
    '004d0061002000560061006e0020004c0069006e0068002c0020ae40c9c4c220002c0020bc15c0c1d604',
    '0041002000460075007a007a0079002d006200610073006500640020004d006500740068006f006400200066006f00720020005200650064007500630069006e00670020004d006f00620069006c006500200056006900640065006f002d007100750061006c00690074007900200046006c0075006300740075006100740069006f006e',
    '0041007300690061002d0050006100630069006600690063002000410063006100640065006d0069006300200061006e006400200049006e0064007500730074007200690061006c0020005300650072007600690063006500730028004100500041004900530029002c00200054006800650020003200300031003700200032006e00640020005300700065006300690061006c00200069007300730075006500200049006e007400650072006e006100740069006f006e0061006c00200057006f0072006b00730068006f00700020006f006e00200049006e0066006f0072006d006100740069006f006e0020005400680065006f0072007900200061006e006400200035004700200054006500630068006e006f006c006f0067006900650073',
    '0032003000310037',
    '00300033',
    '00320031',
    '0056006f006c0075006d006500200031002c0020004e006f002e00200031002c00200032003000310037002c002000700070002000320031002d00320038',
    '0068007400740070003a002f002f00670076007300630068006f006f006c007000750062002e006f00720067002f006a006f00750072006e0061006c0073002f0049004a004d00440045002f0076006f006c0031005f006e006f0031005f0032003000310037002f0076006f006c0031005f006e006f0031005f003200300031003700250032003000410072007400690063006c00650025003200300034002e007000680070',
    '0032003000310037002e00300033002e00320031005f0041002000460075007a007a0079002d006200610073006500640020004d006500740068006f006400200066006f00720020005200650064007500630069006e00670020004d006f00620069006c006500200056006900640065006f002d002e007000640066'
  );
INSERT INTO
  `smmcDocsTable` (
    `docsType`,
    `authorList`,
    `title`,
    `journalConferName`,
    `year`,
    `month`,
    `day`,
    `volNoPP`,
    `docsLink`,
    `docsFile`
  )
VALUES
  (
    '0049006e007400650072006e006100740069006f006e0061006c0020004a006f00750072006e0061006c0073',
    '004c0069006e0068002000560061006e0020004d0061002c0020004a00610065006800790075006e00670020005000610072006b002c0020004a0069007300650075006e00670020004e0061006d002c0020004a006f006e0067006800790075006e0020004a0061006e0067002c0020004a0069006e00730075006c0020004b0069006d',
    '0041006e00200045006600660069006300690065006e00740020005300630068006500640075006c0069006e00670020004d0075006c00740069006d00650064006900610020005400720061006e00730063006f00640069006e00670020004d006500740068006f006400200066006f007200200044004100530048002000530074007200650061006d0069006e006700200069006e00200043006c006f0075006400200045006e007600690072006f006e006d0065006e0074',
    '0043006c0075007300740065007200200043006f006d0070007500740069006e0067',
    '0032003000310037',
    '00310030',
    '00320033',
    '004f006e006c0069006e0065003a0020003200330020004f00630074006f00620065007200200032003000310037',
    '00680074007400700073003a002f002f006c0069006e006b002e0073007000720069006e006700650072002e0063006f006d002f00610072007400690063006c0065002f00310030002e0031003000300037002f007300310030003500380036002d003000310037002d0031003200350039002d0038',
    '0032003000310037002e00310030002e00320033005f004100200043006f006e0074006500780074002d0061007700610072006500200061006400610070007400690076006500200061006c0067006f0072006900740068006d00200066006f007200200061006d006200690065006e002e007000640066'
  );
INSERT INTO
  `smmcDocsTable` (
    `docsType`,
    `authorList`,
    `title`,
    `journalConferName`,
    `year`,
    `month`,
    `day`,
    `volNoPP`,
    `docsLink`,
    `docsFile`
  )
VALUES
  (
    '0049006e007400650072006e006100740069006f006e0061006c0020004a006f00750072006e0061006c0073',
    '004c0069006e0068002000560061006e0020004d0061002c0020004700770061006e0067006800790075006e002000590075002c0020004a0069006e002d0059006f0075006e00670020004b0069006d002c00200059006f006e0067006700770061006e00200057006f006e002c0020004a0069006e00730075006c0020004b0069006d',
    '0041006e00200065006600660069006300690065006e00740020007400720061006e0073006d0069007300730069006f006e0020006d006500740068006f00640020006200610073006500640020006f006e002000480045005600430020006d0075006c00740069002d007600690065007700200061006400610070007400690076006500200076006900640065006f002000730074007200650061006d0069006e00670020006f00760065007200200050003200500020006e006500740077006f0072006b00200069006e0020004e00460056',
    '0054006800650020004a006f00750072006e0061006c0020006f00660020005300750070006500720063006f006d0070007500740069006e0067',
    '0032003000310038',
    '00300039',
    '00310031',
    '004600690072007300740020004f006e006c0069006e0065003a002000310031002000530065007000740065006d00620065007200200032003000310038',
    '00680074007400700073003a002f002f006c0069006e006b002e0073007000720069006e006700650072002e0063006f006d002f00610072007400690063006c0065002f00310030002e0031003000300037002f007300310031003200320037002d003000310038002d0032003500390034002d0030',
    '0032003000310038002e00300039002e00310031005f0041006e00200065006600660069006300690065006e00740020007400720061006e0073006d0069007300730069006f006e0020006d006500740068006f00640020006200610073006500640020006f006e002000480045005600430020006d0075006c00740069002d0076006900650077002e007000640066'
  );
INSERT INTO
  `smmcDocsTable` (
    `docsType`,
    `authorList`,
    `title`,
    `journalConferName`,
    `year`,
    `month`,
    `day`,
    `volNoPP`,
    `docsLink`,
    `docsFile`
  )
VALUES
  (
    '0049006e007400650072006e006100740069006f006e0061006c00200050006100740065006e00740073',
    'ae40c9c4c220002c0020c774d604c6b0002c0020b958c6d0',
    '004d006500740068006f006400200066006f007200200072006500730074006f00720069006e00670020007400720061006e00730070006f007200740020006500720072006f007200200069006e0063006c007500640065006400200069006e00200069006d00610067006500200061006e00640020006100700070006100720061007400750073002000740068006500720065006f0066',
    '005500530038003500320030003900370033',
    '0032003000310030',
    '00300036',
    '00320034',
    'cd9cc6d0bc88d638002000550053002000310032002f003600330039002c003100380036002c0020cd9cc6d0c77c00200032003000300039002e00310032002e00310036002c0020b4f1b85dbc88d6380020005500530038003500320030003900370033002000420032002c0020b4f1b85dc77c00200032003000310030002e00300036002e00320034',
    '00680074007400700073003a002f002f0070006100740065006e00740073002e0067006f006f0067006c0065002e0063006f006d002f0070006100740065006e0074002f0055005300320030003100300030003100350038003400300036',
    '0032003000310030002e00300036002e00320034005f0055005300320030003100300030003100350038003400300036002e007000640066'
  );

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
