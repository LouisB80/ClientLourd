   M S B A M L   `   `   `  ����A  =Agenda, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:AgendaAgenda  5          Agenda.AppointmentsList   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      &localclr-namespace:Agenda     5      ` \Xceed.Wpf.Toolkit, Version=3.8.19076.18510, Culture=neutral, PublicKeyToken=ba83ff368b7563c64xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5        N� Title$  Liste des Rendez-vous��5
      .��5      � 
�������.+�5   
   &   System.Windows.Controls.DataGrid  -   5        $��AppointmentsListDataGrid��5      $��10,10,482,10q�63   5      � 5   
   -   5         �Name$ grid1��5      $
��Left=�6   $��
372,52,0,0q�69   $	��Top=�6M   $	��180��6e   $	��408��6r    � ColumnDefinitions 5      �� 5      $
��Auto �6#   �� 5      $
��Auto �6#   �� 5      $
��Auto �6#    � RowDefinitions 5      �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    .+�5      �� $��Appointment ID:��6   $��0��6.   $
��Left=�6>   $��3q�6Y   $��0��6d   $��Center=�6q   �� 5      $��Nom du Courtier :��6   $��0��60   $
��Left=�6@   $��3q�6[   $��1��6f   $��Center=�6s   �� 5       $��Nom du Client :��6   $��0��6.   $
��Left=�6>   $��3q�6Y   $��2��6d   $��Center=�6q   �� 5!      $��	Date RDV:��6   $��0��6(   $
��Left=�68   $��3q�6S   $��3��6^   $��Center=�6k   &   Xceed.Wpf.Toolkit.DateTimePicker  5"      -   5          Name$ dateHourDatePicker��5"   "   &   Xceed.Wpf.Toolkit.DateTimeUpDown   Format$ Custom=�6>      FormatString$ dd/MM/yyyy HH:mm��6N   $��1��6�   $
��Left=�6�   $��3,6,-113,11q�6�   $��3��6  $��Center=�6  $	��278��66  �  �Xceed.Wpf.Toolkit.Primitives.UpDownBase`1[[System.Nullable`1[[System.DateTime, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   Value 6n   ��  �� ElementName$ AppointmentsListDataGrid��	 �� Path$	 SelectedItem.DateHour�
 �� Mode$
 TwoWay=�66  �� 5#      $��Sujet du RDV:��6   $��0��6,   $
��Left=�6<   $��3q�6W   $��4��6b   $��Center=�6o   �� 5$      -   5        $��BrokerComboBox��5$       �� DisplayMemberPath$ Lastname��6�    �� SelectedValuePath$ BrokerID��6�   $��1��6�   $
��Left=�6�   $��
3,4,-121,0q�6  $��1��6  $	��Top=�6&  $	��278��6>   �� SelectedValue 6-   �� $ AppointmentsListDataGrid��$	 SelectedItem.BrokerID���6�   �� 6>  �� 5%      -   5        $��CustomerComboBox��5%      $ Lastname��6�   $ 
CustomerID��6�   $��1��6�   $
��Left=�6�   $��
3,3,-117,0q�6  $��2��6  $	��Top=�6,  $	��278��6D   6/   �� $ AppointmentsListDataGrid��$	 SelectedItem.CustomerID���6�   �� 6D  �� 5&      -   5        $��TxtAppointmentID��5&      $��1��6�   $
��Left=�6�   $��23��6�   $��3,10,-111,0q�6�    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��278��6
  $��2��6  ��6.   �� $ AppointmentsListDataGrid��$ 	 SelectedItem.AppointmentID�$
 TwoWay=�6  �� 5'      -   5        $��
TxtSubject��5'      $��1��6�   $
��Left=�6�   $��23��6�   $��10,9,-109,0q�6�   $��4��6�   $
 Wrap=�6�   $	��Top=�6�   $	��271��6  $��2��6  ��6(   �� $ AppointmentsListDataGrid��$	 SelectedItem.Subject�$
 TwoWay=�6  5(      �� 5)   
   -   5        $��	BtnModify��5)      $��Enregistrer��6"   $
��Left=�68   $��434,255,0,0q�6S   $	��Top=�6h   $	��123��6�   $��32��6�   6�   �� 5*   
   -	   5        $��	BtnDelete��5*      $��	Supprimer��6#   $
��Left=�67   $��598,255,0,0q�6R   $	��Top=�6g   $	��119��6   $��32��6�   6�   5+      5-      