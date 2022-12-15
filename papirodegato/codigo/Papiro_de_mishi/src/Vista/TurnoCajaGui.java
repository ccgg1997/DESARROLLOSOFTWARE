
package Vista;

import Control.CtrlCaja;
import Control.CtrlUsuario;
import Modelo.Caja;
import Modelo.TurnoCaja;
import Modelo.Usuario;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Calendar;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableModel;
import javax.swing.table.TableRowSorter;

public class TurnoCajaGui extends javax.swing.JDialog {

    CtrlUsuario objCtrlUsuario=new CtrlUsuario();
    CtrlCaja objCtrlCaja=new CtrlCaja();
    
    DefaultTableModel modelo;//modelo de datos
    TableRowSorter<TableModel> elqueOrdena;
    
    
    public TurnoCajaGui(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
        EsconderColumnaCodigo();
        txtIdTurnoCaja.setVisible(false);
        txObservaciones.setEnabled(false);
        btnEditar.setEnabled(false);
        setLocationRelativeTo(null);
        traerEmpleado();
        traerDatosTable();
        
        
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jScrollPane1 = new javax.swing.JScrollPane();
        tblTurnoCaja = new javax.swing.JTable();
        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jScrollPane2 = new javax.swing.JScrollPane();
        txObservaciones = new javax.swing.JTextArea();
        btnEditar = new javax.swing.JButton();
        jSeparator1 = new javax.swing.JSeparator();
        jLabel5 = new javax.swing.JLabel();
        lblNombreEmpleado = new javax.swing.JLabel();
        txtIdTurnoCaja = new javax.swing.JTextField();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);

        tblTurnoCaja.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "idTurnoCaja", "Caja", "Fecha", "Hora Inicial", "Hora Final", "Observaciones"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        tblTurnoCaja.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tblTurnoCajaMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(tblTurnoCaja);

        jPanel1.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 20)); // NOI18N
        jLabel1.setText("TURNO CAJA");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(252, 252, 252)
                .addComponent(jLabel1)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap(23, Short.MAX_VALUE)
                .addComponent(jLabel1)
                .addGap(21, 21, 21))
        );

        jLabel4.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel4.setText("Observaciones:");

        txObservaciones.setColumns(20);
        txObservaciones.setFont(new java.awt.Font("Tahoma", 0, 17)); // NOI18N
        txObservaciones.setRows(5);
        jScrollPane2.setViewportView(txObservaciones);

        btnEditar.setBackground(new java.awt.Color(241, 100, 14));
        btnEditar.setFont(new java.awt.Font("Tahoma", 0, 13)); // NOI18N
        btnEditar.setForeground(new java.awt.Color(255, 255, 255));
        btnEditar.setText("Editar");
        btnEditar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnEditarActionPerformed(evt);
            }
        });

        jLabel5.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel5.setText("Empleado:");

        lblNombreEmpleado.setFont(new java.awt.Font("Tahoma", 0, 17)); // NOI18N
        lblNombreEmpleado.setText("empleado");

        txtIdTurnoCaja.setEditable(false);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGap(71, 71, 71)
                        .addComponent(jLabel5)
                        .addGap(18, 18, 18)
                        .addComponent(lblNombreEmpleado, javax.swing.GroupLayout.PREFERRED_SIZE, 374, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(28, 28, 28)
                        .addComponent(txtIdTurnoCaja, javax.swing.GroupLayout.PREFERRED_SIZE, 51, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jPanel1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 651, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(0, 0, Short.MAX_VALUE))
                            .addComponent(jSeparator1))))
                .addContainerGap())
            .addGroup(layout.createSequentialGroup()
                .addGap(39, 39, 39)
                .addComponent(jLabel4)
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btnEditar, javax.swing.GroupLayout.PREFERRED_SIZE, 149, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 398, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(18, 18, 18)
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(txtIdTurnoCaja, javax.swing.GroupLayout.DEFAULT_SIZE, 27, Short.MAX_VALUE)
                        .addGap(2, 2, 2))
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(lblNombreEmpleado, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(jLabel5)))
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel4)
                    .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addComponent(btnEditar, javax.swing.GroupLayout.PREFERRED_SIZE, 33, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jSeparator1, javax.swing.GroupLayout.PREFERRED_SIZE, 10, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(45, 45, 45)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 195, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void tblTurnoCajaMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tblTurnoCajaMouseClicked
            
            int filasele=0;//variable entera que contendra el numero de la variable donde dimos click
            filasele=tblTurnoCaja.getSelectedRow();//nos arroja el numero da fila seleccionada que empieza de 0 a n filas
            System.out.println("filasele="+filasele);//aqui se dan cuenta en consola que numero de fila es la clickeada
            
            txtIdTurnoCaja.setText(tblTurnoCaja.getValueAt(filasele, 0).toString());                                 
            txObservaciones.setText(tblTurnoCaja.getValueAt(filasele, 5).toString());      
            txObservaciones.setEnabled(true);
            btnEditar.setEnabled(true);
            
    }//GEN-LAST:event_tblTurnoCajaMouseClicked

    private void btnEditarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnEditarActionPerformed
       editar();
    }//GEN-LAST:event_btnEditarActionPerformed
    
    
    
    
     public void editar(){// metodo editar que hace unas instrucciones para editar un registro
              
        
            if(objCtrlCaja.modificarTurnoCajaDos(Integer.valueOf(txtIdTurnoCaja.getText()),txObservaciones.getText())){// validamos que se cumpla todo la modificacion recordemos que el metodo modificar arroja true o false
                JOptionPane.showMessageDialog(null,"Se Edito con Exito!");
                //actualizamos el table
                borrarJtable();
                traerDatosTable();
                //limpiamos los campos textfield
                limpiar();
                btnEditar.setEnabled(false);
                txObservaciones.setEnabled(false);
                
            }else{
                JOptionPane.showMessageDialog(null,"No se Edito!");
            }   
       
    }
    
    
    
    
    public void guardar(){// metodo que ejecuta algo en este caso instrucciones para insertar en la base de datos      
//        ControlCaja objCC=new ControlCaja();
//        objCC.setIdUsuario(UsuarioGui.idUsuario);
//        objCC.setCodigoCaja(Integer.valueOf(txtCodigoCaja.getText()));
//        objCC.setFecha(Date.valueOf(getMiFecha()));        
//        objCC.setNovedades(txNovedades.getText());
////        String hay=objCtrlCaja.existeRelaEmpleCaja(UsuarioGui.idUsuario, Integer.valueOf(txtCodigoCaja.getText()));
//        
//        
//        
//            if(objCtrlCaja.guardarCtrlCaja(objCC)){// como el metodo guardar nos arroja true o false lo metemos en esta condicion
//                //si todo salio bien al momento de insertar nos arroja true y entra a las siguientes acciones
//                JOptionPane.showMessageDialog(null," Se registro!");//mensaje
//                borrarJtable();//Hacemos un llamado al metodo borrarJtable(); esto con el fin de hacer el efecto de actualizar el table
//                traerDatosTable();//hacemos el llamado del metodo traerDatos que nos traer todo la lista de barrios de la BD
//                //como arriba borramos todo lo que habia en el table con esto volvemos a traer datos dando el efecto de actualizar
//                limpiar();//hacemos el llamado del metodo limpiar que lo que hace es limpiar los campos idBarrio(escondido),nombre,comuna
//                deshabilitar();            
//            }else{
//               JOptionPane.showMessageDialog(null,"NO Fue Registrado!");  
//            } 
       
    }
    
    public void limpiar(){
        txtIdTurnoCaja.setText("");
//        jDcFecha.setDate(null);
        txObservaciones.setText("");
    }
     private void borrarJtable(){
        modelo=(DefaultTableModel)tblTurnoCaja.getModel();
        for (int i = tblTurnoCaja.getRowCount() -1; i >= 0; i--){ 
                modelo.removeRow(i); 
        }      
    }
//    
//     public String getMiFecha(){
//        String   fecha="" ;
//         int anio=jDcFecha.getCalendar().get(Calendar.YEAR);
//        int mes=jDcFecha.getCalendar().get(Calendar.MONTH);
//        int dia=jDcFecha.getCalendar().get(Calendar.DAY_OF_MONTH);
//        fecha=anio+"-"+(mes+1)+"-"+dia;
//        return fecha;
//    }
    
    public void traerEmpleado(){
       ArrayList<Usuario> listado=new ArrayList();
       listado=objCtrlUsuario.traerUnEmpleado(UsuarioGui.idUsuario);
       int tam= listado.size();
       String nombreEmpleado="";
       for(int index=0;index<tam;index++){
           nombreEmpleado=listado.get(index).getPrimerNombre()+" "+listado.get(index).getPrimerApellido();
       }
       lblNombreEmpleado.setText(nombreEmpleado);
       
    } 
    
//    public void deshabilitar(){
//        cbxCaja.setEnabled(false);
//        jDcFecha.setEnabled(false);
//        txNovedades.setEnabled(false);
//        btnGuardar.setEnabled(false);
//        btnEditar.setEnabled(false);
//        btnEliminar.setEnabled(false);
//       
//    }
//    
//    public void habilitar(){
//        cbxCaja.setEnabled(true);
//        jDcFecha.setEnabled(true);
//        txNovedades.setEnabled(true);
//        btnGuardar.setEnabled(true);
//        btnEditar.setEnabled(false);
//       
//    }
    
    public void traerDatosTable(){//como su nombre lo indica va a traer todos los datos en el jtable desde la base de datos
        modelo=(DefaultTableModel)tblTurnoCaja.getModel();//nos arroja el modelo es decir el jtable
        elqueOrdena=new TableRowSorter<TableModel>(modelo);//ordena por columnas descendiente o ascendente lo que hay en el jtable
        tblTurnoCaja.setRowSorter(elqueOrdena);//con esto se puede ordenar por col el jtable de manera asc o desc
                       
        ArrayList<TurnoCaja> listado=new ArrayList();//declaramos e instanciamos un array list de tipo Barrio llamado listado
        listado=objCtrlCaja.listadoTurnoCaja(UsuarioGui.idUsuario);//almacenamos en listado lo que arroja el metodo listadoBarrio() que esta en la clase CtrlBarrio
        //recordemos que ese metodo lo que arroja es un arraylist(arrayList es como un vector mejorado mil veces) INVESTIGUEN MEJOR!
        Object []col=new Object[modelo.getColumnCount()];//creo un obj tipo Object del tamaño de las columnas de mi Table
        int tam= listado.size();      
       for(int index=0;index<tam;index++){//recorro el arrayList
                col[0]=listado.get(index).getIdTurnoCaja();
                col[1]=listado.get(index).getDescCaja();
                col[2]=listado.get(index).getFecha();  
                col[3]=listado.get(index).getHoraInicial();
                col[4]=listado.get(index).getHoraFinal();
                col[5]=listado.get(index).getObservaciones();
                modelo.addRow(col);//añado el object a la fila
       }
     
    }
    
     public void EsconderColumnaCodigo(){
        //metodo para esconder la columna que contiene el codigo de los Barios
        tblTurnoCaja.getColumnModel().getColumn(0).setMaxWidth(0);
        tblTurnoCaja.getColumnModel().getColumn(0).setMinWidth(0);
        tblTurnoCaja.getTableHeader().getColumnModel().getColumn(0).setMaxWidth(0);
        tblTurnoCaja.getTableHeader().getColumnModel().getColumn(0).setMinWidth(0);
    }
    
    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(TurnoCajaGui.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(TurnoCajaGui.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(TurnoCajaGui.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(TurnoCajaGui.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the dialog */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                TurnoCajaGui dialog = new TurnoCajaGui(new javax.swing.JFrame(), true);
                dialog.addWindowListener(new java.awt.event.WindowAdapter() {
                    @Override
                    public void windowClosing(java.awt.event.WindowEvent e) {
                        System.exit(0);
                    }
                });
                dialog.setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnEditar;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JLabel lblNombreEmpleado;
    private javax.swing.JTable tblTurnoCaja;
    private javax.swing.JTextArea txObservaciones;
    private javax.swing.JTextField txtIdTurnoCaja;
    // End of variables declaration//GEN-END:variables
}