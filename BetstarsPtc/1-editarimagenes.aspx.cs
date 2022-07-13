using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.IO;

namespace BetstarsPtc
{
    public partial class _1_editarimagenes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            cargar_datos();
        }
        protected void cargar_datos()
        {
            DataTable myTable = conexiones.ListarImagenes();
            ListaImagenes.DataSource = myTable;
            ListaImagenes.DataBind();
        }
        protected void cargar_registro(int id)
        {
            try
            {
                string[] respuesta = conexiones.SeleccionarRegistroImagen(id);
                if (respuesta[0] != null && respuesta[0] != String.Empty && respuesta[0] != "")
                {
                    ImagePreview.ImageUrl = "/images/" + respuesta[0];

                }
                else
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "Swal.fire('Hubo un error al obtener los datos', '', 'error');", true);

            }
            catch (Exception exc)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "Swal.fire('Hubo un error al obtener los datos', '', 'error');", true);
            }
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            string strFileName;
            string strFilePath;
            string strFolder;

            strFolder = Server.MapPath("./images/");

            int id = Convert.ToInt32(IdImagen.Text);




            if (!Directory.Exists(strFolder))
            {
                Directory.CreateDirectory(strFolder);
            }


            if (PhotoFile.HasFile) //Verifica si se ha subido un archivo
            {
                // Obtener el nombre del archivo subido.
                strFileName = PhotoFile.PostedFile.FileName;
                strFileName = Path.GetFileName(strFileName);
                string foto = strFileName;
                // Guardando el archivo en el servidor
                strFilePath = strFolder + strFileName;
                if (!File.Exists(strFilePath)) //Si el archivo subido no existe, lo crea en el servidor
                {
                    PhotoFile.PostedFile.SaveAs(strFilePath);
                }



                int guardado = conexiones.ActualizarImagen(id, foto);

                if (guardado == 1)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "Swal.fire('Su Imagen se actualizó con éxito.', '', 'success');", true);
                    cargar_datos();
                    cargar_registro(id);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "Swal.fire('Hubo un error al actualizar la imagen', '', 'error');", true);
                }
            }
            else //En caso de que no se actualice la foto que posee el registro
            {
                string foto = String.Empty;
                int guardado = conexiones.ActualizarImagen(id, foto);

                if (guardado == 1)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "Swal.fire('Su Imagen se actualizó con éxito.', '', 'success');", true);
                    cargar_datos();
                    cargar_registro(id);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "Swal.fire('Hubo un error al actualizar la imagen', '', 'error');", true);
                }
            }

        }
    }
}