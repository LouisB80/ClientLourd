   M S B A M L   `   `   `  ����A  =Agenda, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:AgendaAgenda  5          Agenda.AddAppointment   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ` \Xceed.Wpf.Toolkit, Version=3.8.19076.18510, Culture=neutral, PublicKeyToken=ba83ff368b7563c64xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5       localclr-namespace:Agenda  5        N� Title$  AddAppointment��5
       � 	Resources 5         appointmentViewSource��%   &	        �� 5   
   6   5      .��5      � 
����=H�.+�5   
   �� $
��Left=�6   $��
194,23,0,0q�6/   $
��Wrap=�6C   $��Ajouter un Rendez-Vous��6W   $	��Top=�6u   $	��396��6�   $��54��6�   
�������$
��20px(�6�    �� TextAlignment$ Center=�6�   � 5   
   -   5         �Name$ grid1��5       � DataContext# [  6   $
��Left=�6S   $��
124,98,0,0q�6n   $	��Top=�6�   $	��132��6�   $	��560��6�    � ColumnDefinitions 5      �� 5      $
��Auto �6#   �� 5      $
��Auto �6#    � RowDefinitions 5      �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    .+�5      �� $��
Courtier :��6   $��0��6)   $
��Left=�69   $��3q�6T   $��1��6_   $��Center=�6l   �� 5      -   5        $��CustomersComboBox��5       �� SelectedValuePath$ 
CustomerID��6H    �� DisplayMemberPath$ Lastname��6g   $��1��6�   $
��Left=�6�   $��23��6�   $��
3,5,-308,5q�6�   $��0��6�   $��Center=�6�   $	��461��6�   ��60   �� 6�   �� 5      $��Client :��6   $��0��6'   $
��Left=�67   $��3q�6R   $��0��6]   $��Center=�6j   �� 5      -   5        $��BrokersComboBox��5      $ BrokerID��6F   $ Lastname��6c   $��Center=�6�   $	��461��6�   $��1��6�   $
��Left=�6�   $��23��6�   $��
3,5,-307,5q�6�   $��1��6�   ��6.   �� 6�   �� 5       $��	Date RDV:��6   $��0��6(   $
��Left=�68   $��3q�6S   $��2��6^   $��Center=�6k   &   Xceed.Wpf.Toolkit.DateTimePicker  5!      -   5        	  Name$	 dtpStartTime��5!   "   &   Xceed.Wpf.Toolkit.DateTimeUpDown
   Format$
 Custom=�68      FormatString$ dd/MM/yyyy HH:mm��6H   $��
3,3,-304,3q�6h   $��2��6|   $��1��6�   �� 5"      $��Objet du RDV:��6   $��0��6,   $
��Left=�6<   $��3q�6W   $��3��6b   $��Center=�6o   �� 5#      -   5         ��Name$ subjectTextBox��5#      $��1��6.   $
��Left=�6>   $��24��6Y   $��
3,4,-305,4q�6e   $��3��6y   $��Center=�6�   $	��461��6  ��6�   �� *	Subject+ �� Mode$ TwoWay=� �� NotifyOnValidationError .  �� ValidatesOnExceptions . 6  5$      �� 5%   
   -   5        $��BtnSend��5%      $��Enregistrer��6    $
��Left=�66   $��301,289,0,0q�6Q   $	��Top=�6f   $��75��6~   6�   5&      5'      