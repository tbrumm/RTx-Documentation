RTx-Documentation
=================

Modul to create Queue/CustomField based Documentations for RT


NAME
  RTx::Documentation

DESCRIPTION
  If you have Queues with special handling, you can write down a 
  usage guide and display them directly for this Queue.
  This guide will be displayed on Ticket Create/Display and Modify
  Pages.
  
  The initdb file from etc/initial Data will create the correct 
  Custom Field. 
  
INSTALLATION
  1. Run "perl Makefile.PL"

  2. Run "make"

  3. Run "make install" (you may need root permissions)
  
  4. Run "make initdb" for first time installation

  5. Additionally, if you're running 3.8, you'll need to add
     "RTx::Documentation" to @Plugins in
     etc/RT_SiteConfig.pm.  For example:
     Set(@Plugins, qw(RTx::Documentation));

  6. Clear RT's mason cache and restart the web server to make sure the
     extension is incorporated.

Usage
  1. Go to Configuration->CustomFields
  2. Select CF "Documentation" and let it apply to the Queue where you
     need the documentation feature.
  3. Go to Configuration -> Queues and edit the Documentation Field

  
   
LICENSE
  Under the same terms as perl itself.

AUTHOR
  Chad Granum (exodist)
  Update by Torsten Brumm
