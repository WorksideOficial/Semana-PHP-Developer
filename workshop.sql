-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 02-Set-2020 às 18:46
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `workshop`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `loja_categorias`
--

CREATE TABLE `loja_categorias` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `loja_categorias`
--

INSERT INTO `loja_categorias` (`id`, `titulo`, `slug`, `views`) VALUES
(1, 'Programação', 'programacao', 0),
(2, 'Html 5', 'html5', 3),
(3, 'Banco de Dados', 'banco-de-dados', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `loja_produtos`
--

CREATE TABLE `loja_produtos` (
  `id` int(11) NOT NULL,
  `img_padrao` varchar(200) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `categoria` varchar(200) NOT NULL,
  `valor_anterior` varchar(20) NOT NULL,
  `valor_atual` varchar(20) NOT NULL,
  `descricao` text NOT NULL,
  `estoque` int(11) NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `loja_produtos`
--

INSERT INTO `loja_produtos` (`id`, `img_padrao`, `titulo`, `slug`, `categoria`, `valor_anterior`, `valor_atual`, `descricao`, `estoque`, `data`) VALUES
(6, '01.jpeg', 'PHP Developer Certification', 'php-developer', '1', '35.00', '24.99', '&lt;p&gt;Sleepless night and city lights &amp;eacute; um album da banda norte americana I Killed the Prom Queen, ou IKTPQ, como alguns fans da banda tatuam em seus bra&amp;ccedil;os.&lt;/p&gt;\r\n&lt;p&gt;Segue abaixo a lista de faixas inclusas neste album.&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;Intro - 1:10&lt;/li&gt;\r\n&lt;li&gt;When Goodbye Means Forever... - 3:37&lt;/li&gt;\r\n&lt;li&gt;&amp;euro;666 - 3:25&lt;/li&gt;\r\n&lt;li&gt;Homicide Documentaries - 3:55&lt;/li&gt;\r\n&lt;li&gt;Choose To Love, Live Or Die - 3:27&lt;/li&gt;\r\n&lt;li&gt;Your Shirt Would Look Better With A Columbian Neck-Tie - 3:49&lt;/li&gt;\r\n&lt;li&gt;Upon a River&#039;s Sky - 4:12&lt;/li&gt;\r\n&lt;li&gt;Bet It All On Black - 4:21&lt;/li&gt;\r\n&lt;li&gt;Never Never Land - 2:56&lt;/li&gt;\r\n&lt;li&gt;My Best Wishes - 3:13&lt;/li&gt;\r\n&lt;li&gt;To Kill Tomorrow - 3:33&lt;/li&gt;\r\n&lt;li&gt;Say Goodbye - 5:31&lt;/li&gt;\r\n&lt;li&gt;Death Certificate For A Beauty Queen - 4:45&lt;/li&gt;\r\n&lt;li&gt;Sharks In Your Mouth - 4:27&lt;/li&gt;\r\n&lt;/ol&gt;', 100, '2012-08-10 15:32:38'),
(7, '02.jpg', 'Html 5', 'html-5', '2', '30.00', '27.40', '&lt;p&gt;Este &amp;eacute; um album &amp;eacute;pico do rock classico norte americano, o album Get a Grip do aerosmith, neste voc&amp;ecirc; encontra m&amp;uacute;sicas incriveis como &quot;Crazy&quot; veja a lista completa abaixo:&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;&quot;Intro&quot; (Joe Perry, Jim Vallance, Steven Tyler) &amp;ndash; 0:23&lt;/li&gt;\r\n&lt;li&gt;&quot;Eat the Rich&quot; (Perry, Vallance, Tyler) &amp;ndash; 4:09&lt;/li&gt;\r\n&lt;li&gt;&quot;Get a Grip&quot; (Perry, Vallance, Tyler) &amp;ndash; 3:58&lt;/li&gt;\r\n&lt;li&gt;&quot;Fever&quot; (Perry, Tyler) &amp;ndash; 4:15&lt;/li&gt;\r\n&lt;li&gt;&quot;Livin&#039; on the Edge&quot; (Mark Hudson, Perry, Tyler) &amp;ndash; 6:20&lt;/li&gt;\r\n&lt;li&gt;&quot;Flesh&quot; (Desmond Child, Perry, Tyler) &amp;ndash; 5:56&lt;/li&gt;\r\n&lt;li&gt;&quot;Walk on Down&quot; (Perry) &amp;ndash; 3:37&lt;/li&gt;\r\n&lt;li&gt;&quot;Shut Up and Dance&quot; (Jack Blades, Perry, Tommy Shaw, Tyler) &amp;ndash; 4:55&lt;/li&gt;\r\n&lt;li&gt;&quot;Cryin&#039;&quot; (Perry, Taylor Rhodes, Tyler) &amp;ndash; 5:08&lt;/li&gt;\r\n&lt;li&gt;&quot;Gotta Love It&quot; (Hudson, Perry, Tyler) &amp;ndash; 5:58&lt;/li&gt;\r\n&lt;li&gt;&quot;Crazy&quot; (Child, Perry, Tyler) &amp;ndash; 5:16&lt;/li&gt;\r\n&lt;li&gt;&quot;Line Up&quot; (Lenny Kravitz, Perry, Tyler) &amp;ndash; 4:02&lt;/li&gt;\r\n&lt;li&gt;&quot;Amazing&quot; (Richie Supa, Tyler) &amp;ndash; 5:56&lt;/li&gt;\r\n&lt;li&gt;&quot;Boogie Man&quot; (Perry, Vallance, Tyler) &amp;ndash; 2:16&lt;/li&gt;\r\n&lt;/ol&gt;', 55, '2012-08-10 15:37:04'),
(8, '03.png', 'MariaDB', 'mariadb', '3', '36.50', '30.00', '&lt;p&gt;O album Nightmare da banda Avenged Sevenfold, &amp;eacute; um sucesso em todo o mundo pela sua repercurs&amp;atilde;o de letras dentre outros, &amp;eacute; um album de metal de &amp;oacute;tima qualidade, e &amp;eacute; tamb&amp;eacute;m uma homenagem ao antigo integrante da banda The REV.&lt;/p&gt;\r\n&lt;p&gt;&quot;Nightmare&quot; &lt;br /&gt;&quot;Welcome to the Family&quot;&lt;br /&gt;&quot;Danger Line&quot;&lt;br /&gt;&quot;Buried Alive&quot;&lt;br /&gt;&quot;Natural Born Killer&quot;&lt;br /&gt;&quot;So Far Away&quot;&lt;br /&gt;&quot;God Hates Us&quot;&lt;br /&gt;&quot;Victim&quot;&lt;br /&gt;&quot;Tonight the World Dies&quot;&lt;br /&gt;&quot;Fiction&quot;&lt;br /&gt;&quot;Save Me&quot;&lt;/p&gt;', 150, '2012-08-10 15:41:41'),
(9, '04.jpg', 'JQuery Essentials', 'jquery-essentials', '1', '40.00', '28.70', '&lt;p&gt;Lorem Ipsum &amp;eacute; simplesmente uma simula&amp;ccedil;&amp;atilde;o de texto da ind&amp;uacute;stria tipogr&amp;aacute;fica e de impressos, e vem sendo utilizado desde o s&amp;eacute;culo XVI, quando um impressor desconhecido pegou&lt;/p&gt;\r\n&lt;p&gt;&quot;Battery&quot;&lt;br /&gt;&quot;Master of Puppets&quot;&lt;br /&gt;&quot;The Thing That Should Not Be&quot;&lt;br /&gt;&quot;Welcome Home (Sanitarium)&quot;&lt;br /&gt;&quot;Disposable Heroes&quot;&lt;br /&gt;&quot;Leper Messiah&quot;&lt;br /&gt;&quot;Orion (Instrumental)&quot;&lt;br /&gt;&quot;Damage, Inc.&quot;&lt;/p&gt;', 85, '2012-08-10 15:46:51'),
(10, '05.jpg', 'Html5 e Css3', 'html5-e-css3', '2', '29.90', '16.50', '&lt;p&gt;&amp;Eacute; um fato conhecido de todos que um leitor se distrair&amp;aacute; com o conte&amp;uacute;do de texto leg&amp;iacute;vel de uma p&amp;aacute;gina quando estiver examinando sua diagrama&amp;ccedil;&amp;atilde;o.&amp;nbsp;&amp;Eacute; um fato conhecido de todos que um leitor se distrair&amp;aacute; com o conte&amp;uacute;do de texto leg&amp;iacute;vel de uma p&amp;aacute;gina quando estiver examinando sua diagrama&amp;ccedil;&amp;atilde;o.&lt;/p&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;&quot;Dead&quot;&lt;/li&gt;\r\n&lt;li&gt;&quot;Falling Away from Me&quot;&lt;/li&gt;\r\n&lt;li&gt;&quot;Trash&quot;&lt;/li&gt;\r\n&lt;li&gt;&quot;4 U&quot;&lt;/li&gt;\r\n&lt;li&gt;&quot;Beg for Me&quot;&lt;/li&gt;\r\n&lt;li&gt;&quot;Make Me Bad&quot;&lt;/li&gt;\r\n&lt;li&gt;&quot;It&#039;s Gonna Go Away&quot;&lt;/li&gt;\r\n&lt;li&gt;&quot;Wake Up&quot;&lt;/li&gt;\r\n&lt;li&gt;&quot;Am I Going Crazy&quot;&lt;/li&gt;\r\n&lt;li&gt;&quot;Hey Daddy&quot;&lt;/li&gt;\r\n&lt;li&gt;&quot;Somebody Someone&quot;&lt;/li&gt;\r\n&lt;li&gt;&quot;No Way&quot;&lt;/li&gt;\r\n&lt;li&gt;&quot;Let&#039;s Get This Party Started&quot;&lt;/li&gt;\r\n&lt;li&gt;&quot;Wish You Could Be Me&quot;&lt;/li&gt;\r\n&lt;li&gt;&quot;Counting&quot;&lt;/li&gt;\r\n&lt;li&gt;&quot;Dirty&quot;&lt;/li&gt;\r\n&lt;/ol&gt;', 100, '2012-08-10 15:55:23'),
(11, '06.png', 'Docker', 'docker', '1', '50.30', '44.90', '&lt;p&gt;&amp;Eacute; um fato conhecido de todos que um leitor se distrair&amp;aacute; com o conte&amp;uacute;do de texto leg&amp;iacute;vel de uma p&amp;aacute;gina quando estiver examinando sua diagrama&amp;ccedil;&amp;atilde;o. A vantagem de usar Lorem Ipsum &amp;eacute; que ele tem uma distribui&amp;ccedil;&amp;atilde;o normal de letras, ao contr&amp;aacute;rio de&lt;/p&gt;\r\n&lt;p&gt;&quot;Conte&amp;uacute;do aqui, conte&amp;uacute;do aqui&quot;, fazendo com que ele tenha uma apar&amp;ecirc;ncia similar a de um texto leg&amp;iacute;vel. Muitos softwares de publica&amp;ccedil;&amp;atilde;o e editores de p&amp;aacute;ginas na internet agora usam Lorem Ipsum como texto-modelo padr&amp;atilde;o, e uma r&amp;aacute;pida busca por &#039;lorem ipsum&#039; mostra v&amp;aacute;rios websites ainda em sua fase de constru&amp;ccedil;&amp;atilde;o. V&amp;aacute;rias vers&amp;otilde;es novas surgiram ao longo dos anos, eventualmente por acidente, e &amp;agrave;s vezes de prop&amp;oacute;sito (injetando humor, e coisas do g&amp;ecirc;nero).&lt;/p&gt;', 90, '2012-08-10 15:58:15'),
(12, '07.png', '\r\nGit WorkDeveloper', 'git-workdeveloper', '1', '35.40', '30.20', '&lt;p style=&quot;text-align: justify;&quot;&gt;Existem muitas varia&amp;ccedil;&amp;otilde;es dispon&amp;iacute;veis de passagens de Lorem Ipsum, mas a maioria sofreu algum tipo de altera&amp;ccedil;&amp;atilde;o, seja por inser&amp;ccedil;&amp;atilde;o de passagens com humor, ou palavras aleat&amp;oacute;rias que n&amp;atilde;o parecem nem um pouco convincentes. Se voc&amp;ecirc; pretende usar uma passagem de Lorem Ipsum, precisa ter certeza de que n&amp;atilde;o h&amp;aacute; algo embara&amp;ccedil;oso escrito escondido no meio do texto.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;Existem muitas varia&amp;ccedil;&amp;otilde;es dispon&amp;iacute;veis de passagens de Lorem Ipsum, mas a maioria sofreu algum tipo de altera&amp;ccedil;&amp;atilde;o, seja por inser&amp;ccedil;&amp;atilde;o de passagens com humor, ou palavras aleat&amp;oacute;rias que n&amp;atilde;o parecem nem um pouco convincentes. Se voc&amp;ecirc; pretende usar uma passagem de Lorem Ipsum, precisa ter certeza de que n&amp;atilde;o h&amp;aacute; algo embara&amp;ccedil;oso escrito escondido no meio do texto.&lt;/p&gt;\r\n&lt;p&gt;Existem muitas varia&amp;ccedil;&amp;otilde;es dispon&amp;iacute;veis de passagens de Lorem Ipsum, mas a maioria sofreu algum tipo de altera&amp;ccedil;&amp;atilde;o, seja por inser&amp;ccedil;&amp;atilde;o de passagens com humor, ou palavras aleat&amp;oacute;rias que n&amp;atilde;o parecem nem um pouco convincentes. Se voc&amp;ecirc; pretende usar uma passagem de Lorem Ipsum, precisa ter certeza de que n&amp;atilde;o h&amp;aacute; algo embara&amp;ccedil;oso escrito escondido no meio do texto.&lt;/p&gt;', 119, '2012-08-10 16:16:35'),
(13, '08.png', 'Slim framework', 'slim-framework', '1', '25.30', '20.00', '&lt;p&gt;Ao contr&amp;aacute;rio do que se acredita, Lorem Ipsum n&amp;atilde;o &amp;eacute; simplesmente um texto rand&amp;ocirc;mico. Com mais de 2000 anos, suas ra&amp;iacute;zes podem ser encontradas em uma obra de literatura latina cl&amp;aacute;ssica datada de 45 AC. Richard McClintock, um professor de latim do Hampden-Sydney College na Virginia, pesquisou uma das mais obscuras palavras em latim, consectetur, oriunda de.&amp;nbsp;Ao contr&amp;aacute;rio do que se acredita, Lorem Ipsum n&amp;atilde;o &amp;eacute; simplesmente um texto rand&amp;ocirc;mico. Com mais de 2000 anos, suas ra&amp;iacute;zes podem ser encontradas em uma obra de literatura latina cl&amp;aacute;ssica datada de 45 AC. Richard McClintock, um professor de latim do Hampden-Sydney College na Virginia, pesquisou uma das mais obscuras palavras em latim, consectetur, oriunda de.&lt;/p&gt;\r\n&lt;p&gt;Ao contr&amp;aacute;rio do que se acredita, Lorem Ipsum n&amp;atilde;o &amp;eacute; simplesmente um texto rand&amp;ocirc;mico. Com mais de 2000 anos, suas ra&amp;iacute;zes podem ser encontradas em uma obra de literatura latina cl&amp;aacute;ssica datada de 45 AC. Richard McClintock, um professor de latim do Hampden-Sydney College na Virginia, pesquisou uma das mais obscuras palavras em latim, consectetur, oriunda de u&lt;/p&gt;', 100, '2012-08-10 16:25:15'),
(14, '09.jpg', 'Laravel Developer', 'laravel-developer', '1', '32.90', '25.40', '&lt;p&gt;Lorem Ipsum &amp;eacute; simplesmente uma simula&amp;ccedil;&amp;atilde;o de texto da ind&amp;uacute;stria tipogr&amp;aacute;fica e de impressos, e vem sendo utilizado desde o s&amp;eacute;culo XVI, quando um impressor&amp;nbsp;Lorem Ipsum &amp;eacute; simplesmente uma simula&amp;ccedil;&amp;atilde;o de texto da ind&amp;uacute;stria tipogr&amp;aacute;fica e de impressos, e vem sendo utilizado desde o s&amp;eacute;culo XVI, quando um impressor&amp;nbsp;Lorem Ipsum &amp;eacute; simplesmente uma simula&amp;ccedil;&amp;atilde;o de texto da ind&amp;uacute;stria tipogr&amp;aacute;fica e de impressos, e vem sendo utilizado desde o s&amp;eacute;culo XVI, quando um impressor&lt;/p&gt;\r\n&lt;p&gt;Lorem Ipsum &amp;eacute; simplesmente uma simula&amp;ccedil;&amp;atilde;o de texto da ind&amp;uacute;stria tipogr&amp;aacute;fica e de impressos, e vem sendo utilizado desde o s&amp;eacute;culo XVI, quando um impressor&lt;/p&gt;', 119, '2012-08-11 15:42:20');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `loja_categorias`
--
ALTER TABLE `loja_categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `loja_produtos`
--
ALTER TABLE `loja_produtos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `loja_categorias`
--
ALTER TABLE `loja_categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `loja_produtos`
--
ALTER TABLE `loja_produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
