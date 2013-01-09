FasdUAS 1.101.10   ��   ��    k             l      ��  ��   5/
# Copyright (c) 2012 Ciro Mattia Gonano <ciromattia@gmail.com>
#
# Permission to use, copy, modify, and/or distribute this software for
# any purpose with or without fee is hereby granted, provided that the
# above copyright notice and this permission notice appear in all
# copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL
# WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE
# AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL
# DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA
# OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER
# TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
# PERFORMANCE OF THIS SOFTWARE.
#
# This script heavily relies on KindleStrip (C) by Paul Durrant and released in public domain
# 	(http://www.mobileread.com/forums/showthread.php?t=96903)
# Also, you need to have kindlegen v2.7 (with KF8 support) which is downloadable
# 	from Amazon website.
#
# Changelog:
#	1.0: first release
#	1.10: add CBZ/CBR support to comic2ebook.py
#	1.11: add CBZ/CBR support to KindleComicConverter
#	1.2: added image page splitting and optimizations
#
# Todo:
#	- bundle a script to manipulate images (to get rid of Mangle/E-nki/whatsoever)
     � 	 	
^ 
 #   C o p y r i g h t   ( c )   2 0 1 2   C i r o   M a t t i a   G o n a n o   < c i r o m a t t i a @ g m a i l . c o m > 
 # 
 #   P e r m i s s i o n   t o   u s e ,   c o p y ,   m o d i f y ,   a n d / o r   d i s t r i b u t e   t h i s   s o f t w a r e   f o r 
 #   a n y   p u r p o s e   w i t h   o r   w i t h o u t   f e e   i s   h e r e b y   g r a n t e d ,   p r o v i d e d   t h a t   t h e 
 #   a b o v e   c o p y r i g h t   n o t i c e   a n d   t h i s   p e r m i s s i o n   n o t i c e   a p p e a r   i n   a l l 
 #   c o p i e s . 
 # 
 #   T H E   S O F T W A R E   I S   P R O V I D E D   " A S   I S "   A N D   T H E   A U T H O R   D I S C L A I M S   A L L 
 #   W A R R A N T I E S   W I T H   R E G A R D   T O   T H I S   S O F T W A R E   I N C L U D I N G   A L L   I M P L I E D 
 #   W A R R A N T I E S   O F   M E R C H A N T A B I L I T Y   A N D   F I T N E S S .   I N   N O   E V E N T   S H A L L   T H E 
 #   A U T H O R   B E   L I A B L E   F O R   A N Y   S P E C I A L ,   D I R E C T ,   I N D I R E C T ,   O R   C O N S E Q U E N T I A L 
 #   D A M A G E S   O R   A N Y   D A M A G E S   W H A T S O E V E R   R E S U L T I N G   F R O M   L O S S   O F   U S E ,   D A T A 
 #   O R   P R O F I T S ,   W H E T H E R   I N   A N   A C T I O N   O F   C O N T R A C T ,   N E G L I G E N C E   O R   O T H E R 
 #   T O R T I O U S   A C T I O N ,   A R I S I N G   O U T   O F   O R   I N   C O N N E C T I O N   W I T H   T H E   U S E   O R 
 #   P E R F O R M A N C E   O F   T H I S   S O F T W A R E . 
 # 
 #   T h i s   s c r i p t   h e a v i l y   r e l i e s   o n   K i n d l e S t r i p   ( C )   b y   P a u l   D u r r a n t   a n d   r e l e a s e d   i n   p u b l i c   d o m a i n 
 #   	 ( h t t p : / / w w w . m o b i l e r e a d . c o m / f o r u m s / s h o w t h r e a d . p h p ? t = 9 6 9 0 3 ) 
 #   A l s o ,   y o u   n e e d   t o   h a v e   k i n d l e g e n   v 2 . 7   ( w i t h   K F 8   s u p p o r t )   w h i c h   i s   d o w n l o a d a b l e 
 #   	 f r o m   A m a z o n   w e b s i t e . 
 # 
 #   C h a n g e l o g : 
 # 	 1 . 0 :   f i r s t   r e l e a s e 
 # 	 1 . 1 0 :   a d d   C B Z / C B R   s u p p o r t   t o   c o m i c 2 e b o o k . p y 
 # 	 1 . 1 1 :   a d d   C B Z / C B R   s u p p o r t   t o   K i n d l e C o m i c C o n v e r t e r 
 # 	 1 . 2 :   a d d e d   i m a g e   p a g e   s p l i t t i n g   a n d   o p t i m i z a t i o n s 
 # 
 #   T o d o : 
 # 	 -   b u n d l e   a   s c r i p t   t o   m a n i p u l a t e   i m a g e s   ( t o   g e t   r i d   o f   M a n g l e / E - n k i / w h a t s o e v e r ) 
   
  
 l     ��������  ��  ��        p         ������ "0 comic2ebookpath comic2ebookPath��        p         ������ 0 kindlegenpath kindlegenPath��        p         ������ "0 kindlestrippath KindleStripPath��        p         ������ 0 thetitle TheTitle��        p         ������ 0 parentfolder ParentFolder��        l     ��������  ��  ��        i          I      �������� (0 getcomic2ebookpath GetComic2EbookPath��  ��     k     G ! !  " # " r      $ % $ n      & ' & 1    ��
�� 
psxp ' 4     �� (
�� 
file ( l    )���� ) b     * + * l   	 ,���� , I   	�� - .
�� .earsffdralis        afdr -  f     . �� /��
�� 
rtyp / m    ��
�� 
ctxt��  ��  ��   + m   	 
 0 0 � 1 1 B C o n t e n t s : R e s o u r c e s : c o m i c 2 e b o o k . p y��  ��   % o      ���� "0 comic2ebookpath comic2ebookPath #  2 3 2 r     4 5 4 m    ��
�� boovfals 5 o      ���� 0 
fileexists   3  6 7 6 O   + 8 9 8 Z   * : ;���� : I    �� <��
�� .coredoexbool        obj  < c     = > = o    ���� "0 comic2ebookpath comic2ebookPath > m    ��
�� 
psxf��   ; r   # & ? @ ? m   # $��
�� boovtrue @ o      ���� 0 
fileexists  ��  ��   9 m     A A�                                                                                  MACS  alis    t  Macintosh HD               �8�H+     N
Finder.app                                                      �S��        ����  	                CoreServices    �8҈      �͒       N   H   G  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   7  B C B Z   , D D E���� D l  , . F���� F H   , . G G o   , -���� 0 
fileexists  ��  ��   E I  1 @�� H I
�� .sysodlogaskr        TEXT H m   1 2 J J � K K v T h e   c o m i c 2 e b o o k   p y t h o n   s c r i p t   i s   m i s s i n g   f r o m   t h i s   p a c k a g e . I �� L M
�� 
appr L m   3 4 N N � O O ( K i n d l e C o m i c C o n v e r t e r M �� P Q
�� 
btns P J   5 8 R R  S�� S m   5 6 T T � U U  E x i t��   Q �� V��
�� 
dflt V m   9 :���� ��  ��  ��   C  W�� W L   E G X X o   E F���� 0 
fileexists  ��     Y Z Y l     ��������  ��  ��   Z  [ \ [ i     ] ^ ] I      �������� $0 getkindlegenpath GetKindlegenPath��  ��   ^ k     = _ _  ` a ` r      b c b n      d e d 1    ��
�� 
psxp e 4     �� f
�� 
file f l    g���� g m     h h � i i H M a c i n t o s h   H D : u s r : l o c a l : b i n : k i n d l e g e n��  ��   c o      ���� 0 kindlegenpath kindlegenPath a  j k j r   	  l m l m   	 
��
�� boovfals m o      ���� 0 
fileexists   k  n o n O   # p q p Z   " r s���� r I   �� t��
�� .coredoexbool        obj  t c     u v u o    ���� 0 kindlegenpath kindlegenPath v m    ��
�� 
psxf��   s r     w x w m    ��
�� boovtrue x o      ���� 0 
fileexists  ��  ��   q m     y y�                                                                                  MACS  alis    t  Macintosh HD               �8�H+     N
Finder.app                                                      �S��        ����  	                CoreServices    �8҈      �͒       N   H   G  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   o  z { z Z   $ : | }���� | l  $ & ~���� ~ H   $ &   o   $ %���� 0 
fileexists  ��  ��   } I  ) 6�� � �
�� .sysodlogaskr        TEXT � m   ) * � � � � � * K i n d l e g e n   i s   m i s s i n g . � �� � �
�� 
appr � m   + , � � � � � ( K i n d l e C o m i c C o n v e r t e r � �� � �
�� 
btns � J   - 0 � �  ��� � m   - . � � � � �  E x i t��   � �� ���
�� 
dflt � m   1 2���� ��  ��  ��   {  ��� � L   ; = � � o   ; <���� 0 
fileexists  ��   \  � � � l     ��������  ��  ��   �  � � � i     � � � I      �������� (0 getkindlestrippath GetKindleStripPath��  ��   � k     G � �  � � � r      � � � n      � � � 1    ��
�� 
psxp � 4     �� �
�� 
file � l    ����� � b     � � � l   	 ����� � I   	�� � �
�� .earsffdralis        afdr �  f     � �� ���
�� 
rtyp � m    ��
�� 
ctxt��  ��  ��   � m   	 
 � � � � � B C o n t e n t s : R e s o u r c e s : k i n d l e s t r i p . p y��  ��   � o      ���� "0 kindlestrippath KindleStripPath �  � � � r     � � � m    ��
�� boovfals � o      ���� 0 
fileexists   �  � � � O   + � � � Z   * � ����� � I    �� ���
�� .coredoexbool        obj  � c     � � � o    ���� "0 kindlestrippath KindleStripPath � m    ��
�� 
psxf��   � r   # & � � � m   # $��
�� boovtrue � o      ���� 0 
fileexists  ��  ��   � m     � ��                                                                                  MACS  alis    t  Macintosh HD               �8�H+     N
Finder.app                                                      �S��        ����  	                CoreServices    �8҈      �͒       N   H   G  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   �  � � � Z   , D � ����� � l  , . ����� � H   , . � � o   , -���� 0 
fileexists  ��  ��   � I  1 @�� � �
�� .sysodlogaskr        TEXT � m   1 2 � � � � � � T h e   k i n d l e s t r i p   p y t h o n   s c r i p t   i s   m i s s i n g   f r o m   t h i s   p a c k a g e .   P l e a s e   g e t   a   f r e s h   c o p y . � �� � �
�� 
appr � m   3 4 � � � � � ( K i n d l e C o m i c C o n v e r t e r � �� � �
�� 
btns � J   5 8 � �  ��� � m   5 6 � � � � �  E x i t��   � �� ��
�� 
dflt � m   9 :�~�~ �  ��  ��   �  ��} � L   E G � � o   E F�|�| 0 
fileexists  �}   �  � � � l     �{�z�y�{  �z  �y   �  � � � i     � � � I      �x�w�v�x (0 getexecutablepaths GetExecutablePaths�w  �v   � L      � � F      � � � F      � � � I     �u�t�s�u (0 getcomic2ebookpath GetComic2EbookPath�t  �s   � I    �r�q�p�r $0 getkindlegenpath GetKindlegenPath�q  �p   � I    �o�n�m�o (0 getkindlestrippath GetKindleStripPath�n  �m   �  � � � l     �l�k�j�l  �k  �j   �  � � � i     � � � I      �i ��h�i 0 comic2ebook Comic2Ebook �  ��g � o      �f�f 0 dir  �g  �h   � k     � � �  � � � r      � � � n      � � � 1    �e
�e 
psxp � o     �d�d 0 dir   � o      �c�c 0 dirpath dirPath �  � � � r     � � � b    	 � � � o    �b�b 0 parentfolder ParentFolder � m     � � � � � 0 K i n d l e C o m i c C o n v e r t e r . l o g � o      �a�a 0 resultsfile resultsFile �  � � � r     � � � b     � � � b     � � � b     � � � b     � � � b     � � � m     � � �    p y t h o n   � l   �`�_ n     1    �^
�^ 
strq o    �]�] "0 comic2ebookpath comic2ebookPath�`  �_   � m     � 
   K H D   � l   �\�[ n     1    �Z
�Z 
strq o    �Y�Y 0 dirpath dirPath�\  �[   � m    		 �

    � l   �X�W n     1    �V
�V 
strq o    �U�U 0 thetitle TheTitle�X  �W   � o      �T�T 0 shellcommand   �  Q     5 r   # * I  # (�S�R
�S .sysoexecTEXT���     TEXT o   # $�Q�Q 0 shellcommand  �R   o      �P�P 0 shellresult   R      �O
�O .ascrerr ****      � **** l     �N�M o      �L�L 0 error_message  �N  �M   �K�J
�K 
errn l     �I�H o      �G�G 0 error_number  �I  �H  �J   r   2 5 o   2 3�F�F 0 error_message   o      �E�E 0 shellresult    Z   6 � �D�C G   6 U!"! ?   6 A#$# l  6 ?%�B�A% I  6 ?�@�?&
�@ .sysooffslong    ��� null�?  & �>'(
�> 
psof' m   8 9)) �** 
 E r r o r( �=+�<
�= 
psin+ o   : ;�;�; 0 shellresult  �<  �B  �A  $ m   ? @�:�:  " ?   D Q,-, l  D O.�9�8. I  D O�7�6/
�7 .sysooffslong    ��� null�6  / �501
�5 
psof0 m   F I22 �33  W a r n i n g1 �44�3
�4 
psin4 o   J K�2�2 0 shellresult  �3  �9  �8  - m   O P�1�1    k   X �55 676 r   X h898 I  X f�0:;
�0 .rdwropenshor       file: 4   X ^�/<
�/ 
file< o   \ ]�.�. 0 resultsfile resultsFile; �-=�,
�- 
perm= m   a b�+
�+ boovtrue�,  9 o      �*�* 0 fileref fileRef7 >?> I  i r�)@A
�) .rdwrseofnull���     ****@ o   i j�(�( 0 fileref fileRefA �'B�&
�' 
set2B m   m n�%�%  �&  ? CDC I  s |�$EF
�$ .rdwrwritnull���     ****E o   s t�#�# 0 shellresult  F �"G�!
�" 
refnG o   w x� �  0 fileref fileRef�!  D HIH I  } ��J�
� .rdwrclosnull���     ****J o   } ~�� 0 fileref fileRef�  I K�K I   � ����� 0 errormessage ErrorMessage�  �  �  �D  �C   L�L L   � ���  �   � MNM l     ����  �  �  N OPO i    QRQ I      �S�� 0 	kindlegen 	KindlegenS T�T o      �� 0 dir  �  �  R k     �UU VWV r     XYX b     Z[Z n     \]\ 1    �
� 
psxp] o     �� 0 dir  [ m    ^^ �__  / c o n t e n t . o p fY o      �� 0 opfpath opfPathW `a` r    bcb b    ded o    	�� 0 parentfolder ParentFoldere m   	 
ff �gg 0 K i n d l e C o m i c C o n v e r t e r . l o gc o      �� 0 resultsfile resultsFilea hih r    jkj b    lml b    non o    �
�
 0 kindlegenpath kindlegenPatho m    pp �qq   m l   r�	�r n    sts 1    �
� 
strqt o    �� 0 opfpath opfPath�	  �  k o      �� 0 shellcommand  i uvu Q    -wxyw r    "z{z I    �|�
� .sysoexecTEXT���     TEXT| o    �� 0 shellcommand  �  { o      �� 0 shellresult  x R      � }~
�  .ascrerr ****      � ****} l     ���� o      ���� 0 error_message  ��  ��  ~ �����
�� 
errn� l     ������ o      ���� 0 error_number  ��  ��  ��  y r   * -��� o   * +���� 0 error_message  � o      ���� 0 shellresult  v ��� Z   . �������� G   . K��� ?   . 9��� l  . 7������ I  . 7�����
�� .sysooffslong    ��� null��  � ����
�� 
psof� m   0 1�� ��� 
 E r r o r� �����
�� 
psin� o   2 3���� 0 shellresult  ��  ��  ��  � m   7 8����  � ?   < G��� l  < E������ I  < E�����
�� .sysooffslong    ��� null��  � ����
�� 
psof� m   > ?�� ���  W a r n i n g� �����
�� 
psin� o   @ A���� 0 shellresult  ��  ��  ��  � m   E F����  � k   N ~�� ��� r   N ^��� I  N \����
�� .rdwropenshor       file� 4   N T���
�� 
file� o   R S���� 0 resultsfile resultsFile� �����
�� 
perm� m   W X��
�� boovtrue��  � o      ���� 0 fileref fileRef� ��� I  _ h����
�� .rdwrseofnull���     ****� o   _ `���� 0 fileref fileRef� �����
�� 
set2� m   c d����  ��  � ��� I  i r����
�� .rdwrwritnull���     ****� o   i j���� 0 shellresult  � �����
�� 
refn� o   m n���� 0 fileref fileRef��  � ��� I  s x�����
�� .rdwrclosnull���     ****� o   s t���� 0 fileref fileRef��  � ���� I   y ~�������� 0 errormessage ErrorMessage��  ��  ��  ��  ��  � ���� L   � �����  ��  P ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 	stripfile 	StripFile� ���� o      ���� 0 dir  ��  ��  � k     ��� ��� r     ��� b     ��� n     ��� 1    ��
�� 
psxp� o     ���� 0 dir  � m    �� ���  / c o n t e n t . m o b i� o      ���� 0 origfilepath origFilePath� ��� r    ��� b    ��� b    ��� n    ��� 1   	 ��
�� 
psxp� o    	���� 0 parentfolder ParentFolder� o    ���� 0 thetitle TheTitle� m    �� ��� 
 . m o b i� o      ���� $0 strippedfilepath strippedFilePath� ��� r    ��� b    ��� o    ���� 0 parentfolder ParentFolder� m    �� ��� 0 K i n d l e C o m i c C o n v e r t e r . l o g� o      ���� 0 resultsfile resultsFile� ��� r    +��� b    )��� b    %��� b    #��� b    ��� b    ��� m    �� ���  p y t h o n  � l   ������ n    ��� 1    ��
�� 
strq� o    ���� "0 kindlestrippath KindleStripPath��  ��  � m    �� ���   � l   "������ n    "��� 1     "��
�� 
strq� o     ���� 0 origfilepath origFilePath��  ��  � m   # $�� ���   � l  % (������ n   % (��� 1   & (��
�� 
strq� o   % &���� $0 strippedfilepath strippedFilePath��  ��  � o      ���� 0 shellcommand  � ��� Q   , A���� r   / 6��� I  / 4�����
�� .sysoexecTEXT���     TEXT� o   / 0���� 0 shellcommand  ��  � o      ���� 0 shellresult  � R      �� 
�� .ascrerr ****      � ****  l     ���� o      ���� 0 error_message  ��  ��   ����
�� 
errn l     ���� o      ���� 0 error_number  ��  ��  ��  � r   > A o   > ?���� 0 error_message   o      ���� 0 shellresult  �  Z   B �	
����	 G   B i ?   B Q l  B O���� I  B O����
�� .sysooffslong    ��� null��   ��
�� 
psof m   D E � 
 E r r o r ����
�� 
psin o   H I���� 0 shellresult  ��  ��  ��   m   O P����   ?   T e l  T c���� I  T c����
�� .sysooffslong    ��� null��   ��
�� 
psof m   V Y �  W a r n i n g ����
�� 
psin o   \ ]���� 0 shellresult  ��  ��  ��   m   c d����  
 k   l �  !  r   l |"#" I  l z��$%
�� .rdwropenshor       file$ 4   l r��&
�� 
file& o   p q���� 0 resultsfile resultsFile% ��'��
�� 
perm' m   u v��
�� boovtrue��  # o      ���� 0 fileref fileRef! ()( I  } ���*+
�� .rdwrseofnull���     ***** o   } ~�� 0 fileref fileRef+ �~,�}
�~ 
set2, m   � ��|�|  �}  ) -.- I  � ��{/0
�{ .rdwrwritnull���     ****/ o   � ��z�z 0 shellresult  0 �y1�x
�y 
refn1 o   � ��w�w 0 fileref fileRef�x  . 232 I  � ��v4�u
�v .rdwrclosnull���     ****4 o   � ��t�t 0 fileref fileRef�u  3 5�s5 I   � ��r�q�p�r 0 errormessage ErrorMessage�q  �p  �s  ��  ��   6�o6 L   � ��n�n  �o  � 787 l     �m�l�k�m  �l  �k  8 9:9 i    ;<; I      �j�i�h�j 0 errormessage ErrorMessage�i  �h  < k     == >?> r     @A@ m     BB �CC � A n   e r r o r   h a s   o c c u r r e d ,   c o m p l e t e   l o g   h a s   b e e n   s a v e d   t o   K i n d l e C o m i c C o n v e r t e r . l o g   i n   c o m i c ' s   p a r e n t   f o l d e r .A o      �g�g 0 
dialogtext 
dialogText? DED I   �fFG
�f .sysodlogaskr        TEXTF o    �e�e 0 
dialogtext 
dialogTextG �dHI
�d 
apprH m    JJ �KK 4 K i n d l e C o m i c C o n v e r t e r   E r r o rI �cLM
�c 
btnsL J    NN O�bO m    	PP �QQ  E x i t�b  M �aR�`
�a 
dfltR m    �_�_ �`  E S�^S R    �]T�\
�] .ascrerr ****      � ****T m    �[�[���\  �^  : UVU l     �Z�Y�X�Z  �Y  �X  V WXW i     #YZY I     �W�V�U
�W .aevtoappnull  �   � ****�V  �U  Z Z     [\�T�S[ l    ]�R�Q] I     �P�O�N�P (0 getexecutablepaths GetExecutablePaths�O  �N  �R  �Q  \ k    ^^ _`_ r    aba m    	cc �dd � D r a g   &   D r o p   i m a g e s   f o l d e r s   o n t o   t h i s   A p p l e s c r i p t   a p p l i c a t i o n   t o   c o n v e r t   t h e m   t o   a   P a n e l V i e w   M o b i p o c k e t   e b o o k s .b o      �M�M 0 
dialogtext 
dialogText` e�Le I   �Kfg
�K .sysodlogaskr        TEXTf o    �J�J 0 
dialogtext 
dialogTextg �Ihi
�I 
apprh m    jj �kk ( K i n d l e C o m i c C o n v e r t e ri �Hlm
�H 
btnsl J    nn o�Go m    pp �qq  O K�G  m �Fr�E
�F 
dfltr m    �D�D �E  �L  �T  �S  X sts l     �C�B�A�C  �B  �A  t uvu i   $ 'wxw I     �@y�?
�@ .aevtodocnull  �    alisy o      �>�> 0 
some_items  �?  x Z     �z{�=�<z l    |�;�:| I     �9�8�7�9 (0 getexecutablepaths GetExecutablePaths�8  �7  �;  �:  { X    �}�6~} k    � ��� O   $��� l 	  #��5�4� r    #��� c    !��� l   ��3�2� n    ��� m    �1
�1 
ctnr� o    �0�0 0 	this_item  �3  �2  � m     �/
�/ 
ctxt� o      �.�. 0 parentfolder ParentFolder�5  �4  � m    ���                                                                                  MACS  alis    t  Macintosh HD               �8�H+     N
Finder.app                                                      �S��        ����  	                CoreServices    �8҈      �͒       N   H   G  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� Z   % h���-�� l  % .��,�+� =  % .��� n   % ,��� 1   * ,�*
�* 
asdr� l  % *��)�(� I  % *�'��&
�' .sysonfo4asfe        file� o   % &�%�% 0 	this_item  �&  �)  �(  � m   , -�$
�$ boovfals�,  �+  � k   1 Z�� ��� r   1 6��� c   1 4��� o   1 2�#�# 0 	this_item  � m   2 3�"
�" 
ctxt� o      �!�! 0 filename fileName� �� � Z   7 Z����� E   7 :��� o   7 8�� 0 filename fileName� m   8 9�� ���  .� k   = T�� ��� r   = B��� m   = >�� ���  .� n     ��� 1   ? A�
� 
txdl� 1   > ?�
� 
ascr� ��� r   C T��� c   C R��� l  C N���� n   C N��� 7 D N���
� 
citm� m   H J�� � m   K M����� o   C D�� 0 filename fileName�  �  � m   N Q�
� 
TEXT� o      �� 0 dir  �  �  � r   W Z��� o   W X�� 0 filename fileName� o      �� 0 dir  �   �-  � k   ] h�� ��� r   ] b��� c   ] `��� o   ] ^�� 0 	this_item  � m   ^ _�
� 
ctxt� o      �� 0 filename fileName� ��� r   c h��� c   c f��� o   c d�� 0 	this_item  � m   d e�
� 
ctxt� o      �
�
 0 dir  �  � ��� r   i |��� I  i z�	��
�	 .sysoexecTEXT���     TEXT� b   i v��� m   i l�� ���  b a s e n a m e  � l  l u���� n   l u��� 1   q u�
� 
strq� l  l q���� n   l q��� 1   m q�
� 
psxp� o   l m�� 0 dir  �  �  �  �  �  � o      � �  0 dirname  � ��� r   } ���� I  } �����
�� .sysodlogaskr        TEXT� b   } ���� m   } ��� ��� 2 E n t e r   a   t i t l e   f o r   f o l d e r  � l  � ������� n   � ���� 1   � ���
�� 
strq� o   � ����� 0 dirname  ��  ��  � �����
�� 
dtxt� o   � ����� 0 dirname  ��  � o      ���� 0 temp  � ��� r   � ���� l  � ������� n   � ���� 1   � ���
�� 
ttxt� o   � ����� 0 temp  ��  ��  � o      ���� 0 thetitle TheTitle� ��� I   � �������� 0 comic2ebook Comic2Ebook� ���� o   � ����� 0 filename fileName��  ��  � ��� I   � �������� 0 	kindlegen 	Kindlegen� ���� o   � ����� 0 dir  ��  ��  � ���� I   � �������� 0 	stripfile 	StripFile� ���� o   � ����� 0 dir  ��  ��  ��  �6 0 	this_item  ~ o    ���� 0 
some_items  �=  �<  v ���� l     ��������  ��  ��  ��       ��������� ��  � 
���������������������� (0 getcomic2ebookpath GetComic2EbookPath�� $0 getkindlegenpath GetKindlegenPath�� (0 getkindlestrippath GetKindleStripPath�� (0 getexecutablepaths GetExecutablePaths�� 0 comic2ebook Comic2Ebook�� 0 	kindlegen 	Kindlegen�� 0 	stripfile 	StripFile�� 0 errormessage ErrorMessage
�� .aevtoappnull  �   � ****
�� .aevtodocnull  �    alis� ��  �������� (0 getcomic2ebookpath GetComic2EbookPath��  ��   ���� 0 
fileexists   �������� 0���� A���� J�� N�� T������
�� 
file
�� 
rtyp
�� 
ctxt
�� .earsffdralis        afdr
�� 
psxp�� "0 comic2ebookpath comic2ebookPath
�� 
psxf
�� .coredoexbool        obj 
�� 
appr
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT�� H*�)��l �%/�,E�OfE�O� ��&j 	 eE�Y hUO� �����kv�ka  Y hO�� �� ^�������� $0 getkindlegenpath GetKindlegenPath��  ��   ���� 0 
fileexists   �� h���� y���� ��� ��� �������
�� 
file
�� 
psxp�� 0 kindlegenpath kindlegenPath
�� 
psxf
�� .coredoexbool        obj 
�� 
appr
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT�� >*��/�,E�OfE�O� ��&j  eE�Y hUO� �����kv�k� Y hO�� �� �����	���� (0 getkindlestrippath GetKindleStripPath��  ��   ���� 0 
fileexists  	 �������� ����� ����� ��� ��� �������
�� 
file
�� 
rtyp
�� 
ctxt
�� .earsffdralis        afdr
�� 
psxp�� "0 kindlestrippath KindleStripPath
�� 
psxf
�� .coredoexbool        obj 
�� 
appr
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT�� H*�)��l �%/�,E�OfE�O� ��&j 	 eE�Y hUO� �����kv�ka  Y hO�� �� �����
���� (0 getexecutablepaths GetExecutablePaths��  ��  
   ���������� (0 getcomic2ebookpath GetComic2EbookPath�� $0 getkindlegenpath GetKindlegenPath
�� 
bool�� (0 getkindlestrippath GetKindleStripPath�� *j+  	 	*j+ �&	 	*j+ �&� �� ��������� 0 comic2ebook Comic2Ebook�� ����   ���� 0 dir  ��   ������������������ 0 dir  �� 0 dirpath dirPath�� 0 resultsfile resultsFile�� 0 shellcommand  �� 0 shellresult  �� 0 error_message  �� 0 error_number  �� 0 fileref fileRef ���� � �����	��������)������2����~�}�|�{�z�y�x�w
�� 
psxp�� 0 parentfolder ParentFolder�� "0 comic2ebookpath comic2ebookPath
�� 
strq�� 0 thetitle TheTitle
�� .sysoexecTEXT���     TEXT�� 0 error_message   �v�u�t
�v 
errn�u 0 error_number  �t  
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null
�� 
bool
� 
file
�~ 
perm
�} .rdwropenshor       file
�| 
set2
�{ .rdwrseofnull���     ****
�z 
refn
�y .rdwrwritnull���     ****
�x .rdwrclosnull���     ****�w 0 errormessage ErrorMessage�� ���,E�O��%E�O���,%�%��,%�%��,%E�O �j 	E�W 
X 
 �E�O*���� j
 *�a �� ja & 5*a �/a el E�O�a jl O�a �l O�j O*j+ Y hOh� �sR�r�q�p�s 0 	kindlegen 	Kindlegen�r �o�o   �n�n 0 dir  �q   �m�l�k�j�i�h�g�f�m 0 dir  �l 0 opfpath opfPath�k 0 resultsfile resultsFile�j 0 shellcommand  �i 0 shellresult  �h 0 error_message  �g 0 error_number  �f 0 fileref fileRef �e^�df�cp�b�a�`�_��^�]�\��[�Z�Y�X�W�V�U�T�S�R
�e 
psxp�d 0 parentfolder ParentFolder�c 0 kindlegenpath kindlegenPath
�b 
strq
�a .sysoexecTEXT���     TEXT�` 0 error_message   �Q�P�O
�Q 
errn�P 0 error_number  �O  
�_ 
psof
�^ 
psin�] 
�\ .sysooffslong    ��� null
�[ 
bool
�Z 
file
�Y 
perm
�X .rdwropenshor       file
�W 
set2
�V .rdwrseofnull���     ****
�U 
refn
�T .rdwrwritnull���     ****
�S .rdwrclosnull���     ****�R 0 errormessage ErrorMessage�p ���,�%E�O��%E�O��%��,%E�O �j E�W 
X  	�E�O*���� j
 *���� ja & 5*a �/a el E�O�a jl O�a �l O�j O*j+ Y hOh  �N��M�L�K�N 0 	stripfile 	StripFile�M �J�J   �I�I 0 dir  �L   	�H�G�F�E�D�C�B�A�@�H 0 dir  �G 0 origfilepath origFilePath�F $0 strippedfilepath strippedFilePath�E 0 resultsfile resultsFile�D 0 shellcommand  �C 0 shellresult  �B 0 error_message  �A 0 error_number  �@ 0 fileref fileRef �?��>�=����<�;���:�9�8�7�6�5�4�3�2�1�0�/�.�-�,�+
�? 
psxp�> 0 parentfolder ParentFolder�= 0 thetitle TheTitle�< "0 kindlestrippath KindleStripPath
�; 
strq
�: .sysoexecTEXT���     TEXT�9 0 error_message   �*�)�(
�* 
errn�) 0 error_number  �(  
�8 
psof
�7 
psin�6 
�5 .sysooffslong    ��� null
�4 
bool
�3 
file
�2 
perm
�1 .rdwropenshor       file
�0 
set2
�/ .rdwrseofnull���     ****
�. 
refn
�- .rdwrwritnull���     ****
�, .rdwrclosnull���     ****�+ 0 errormessage ErrorMessage�K ���,�%E�O��,�%�%E�O��%E�O���,%�%��,%�%��,%E�O �j E�W 
X  �E�O*��a �a  j
 *�a a �a  ja & 5*a �/a el E�O�a jl O�a �l O�j O*j+ Y hOh �'<�&�%�$�' 0 errormessage ErrorMessage�&  �%   �#�# 0 
dialogtext 
dialogText 	B�"J�!P� ���
�" 
appr
�! 
btns
�  
dflt� 
� .sysodlogaskr        TEXT����$ �E�O�����kv�k� O)j� �Z���
� .aevtoappnull  �   � ****�  �     
�c��j�p���� (0 getexecutablepaths GetExecutablePaths� 0 
dialogtext 
dialogText
� 
appr
� 
btns
� 
dflt� 
� .sysodlogaskr        TEXT� *j+   �E�O�����kv�k� 	Y h �x���
� .aevtodocnull  �    alis� 0 
some_items  �   ����
�	�� 0 
some_items  � 0 	this_item  � 0 filename fileName�
 0 dir  �	 0 dirname  � 0 temp   ��������� ������������������������������������� (0 getexecutablepaths GetExecutablePaths
� 
kocl
� 
cobj
� .corecnte****       ****
� 
ctnr
� 
ctxt� 0 parentfolder ParentFolder
�  .sysonfo4asfe        file
�� 
asdr
�� 
ascr
�� 
txdl
�� 
citm����
�� 
TEXT
�� 
psxp
�� 
strq
�� .sysoexecTEXT���     TEXT
�� 
dtxt
�� .sysodlogaskr        TEXT
�� 
ttxt�� 0 thetitle TheTitle�� 0 comic2ebook Comic2Ebook�� 0 	kindlegen 	Kindlegen�� 0 	stripfile 	StripFile� �*j+   � ��[��l kh � 	��,�&E�UO�j �,f  .��&E�O�� ���,FO�[�\[Zk\Z�2a &E�Y �E�Y ��&E�O��&E�Oa �a ,a ,%j E�Oa �a ,%a �l E�O�a ,E` O*�k+ O*�k+ O*�k+ [OY�cY hascr  ��ޭ