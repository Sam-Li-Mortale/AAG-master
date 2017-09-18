//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Text;
//using System.Threading.Tasks;
//using System.Data;
//using System.Data.SqlClient;
//using System.Web;
//using System.IO;
//using System.Configuration;


//namespace AAG
//{
//    public class Functions
//    {



//        ///////////////INPUT VALIDATION /////////////////////////

//        //Number validation
//        public bool isNumber(string val)
//        {
//            bool check = false;
//            float a = 0;

//            if (float.TryParse(val, out a))
//            {
//                check = true;
//                return check;
//            }
//            else
//                return check;
//        }

//        //checks if the string passed is empty or not
//        public bool isEmpty(string val)
//        {
//            bool check = true;

//            if (String.IsNullOrWhiteSpace(val))
//            {
//                //string is empty
//                check = false;
//                return check;
//            }
//            else
//                return check;
//        }

//        //check for empty data sets

//        public bool isEmptyData(DataSet dataSet)
//        {
//            foreach (DataTable table in dataSet.Tables)
//                if (table.Rows.Count == 0)
//                {
//                    //there is nothing in the data set, send true
//                    return true;
//                }

//            return false;
//        }


//        //use the ToCharArray() to turn strings to arrays. Then send them here
//        public bool isString(char[] test)
//        {
//            bool check = true;
//            //regex pattern checks for strings
//            string reg = "[a-zA-Z]";

//            foreach (char i in test)
//            {
//                string a = i.ToString();

//                if (i == '-')
//                {
//                    continue;
//                }
//                else if (!System.Text.RegularExpressions.Regex.IsMatch(a, reg))
//                {
//                    //there is a non letter, send false
//                    check = false;
//                    break;
//                }

//            }

//            //everything was cool, send true
//            return check;
//        }


//        public bool isID(char[] test)
//        {
//            bool check = true;
//            int count = 0;
//            //regex pattern checks for numbers 
//            string reg = "[0-9]";

//            foreach (char i in test)
//            {
//                count++;
//                string a = i.ToString();

//                if (!System.Text.RegularExpressions.Regex.IsMatch(a, reg))
//                {
//                    //there is a non number, send false
//                    check = false;
//                    break;
//                }
//            }

//            if (count < 9 && count > 9)
//            {
//                check = false;
//            }

//            //if check = true everything was cool. check=false, something was wrong
//            return check;
//        }


//       ///////////////////////////////////////File Functions////////////////////////////////////////////



//        public void ExportGridToExcel(GridView grid, string filename, HttpResponse response)
//        {

//            response.Clear();
//            response.Charset = "";

//            response.ContentType = "application/vnd.ms-excel";
//            response.AddHeader("content-disposition", "attachment;filename=" + filename + ".xls");

//            StringWriter sw = new System.IO.StringWriter();
//            HtmlTextWriter htw = new HtmlTextWriter(sw);

//            grid.AllowPaging = false;
//            grid.AllowSorting = false;
//            grid.RenderControl(htw);
//            response.Write(sw.ToString());
//            response.End();
//        }


//        //Method to put file into database from drive

//        //public static void databaseFilePut(string varFilePath)
//        //{
//        //    byte[] file;
//        //    using (var stream = new FileStream(varFilePath, FileMode.Open, FileAccess.Read))
//        //    {
//        //        using (var reader = new BinaryReader(stream))
//        //        {
//        //            file = reader.ReadBytes((int)stream.Length);
//        //        }
//        //    }
//        //    using (var varConnection = Locale.sqlConnectOneTime(Locale.sqlDataConnectionDetails))
//        //    using (var sqlWrite = new SqlCommand("INSERT INTO Raporty (RaportPlik) Values(@File)", varConnection))
//        //    {
//        //        sqlWrite.Parameters.Add("@File", SqlDbType.VarBinary, file.Length).Value = file;
//        //        sqlWrite.ExecuteNonQuery();
//        //    }
//        //}


//       // This method is to get file from database and save it on drive:

//        //public static void databaseFileRead(string varID, string varPathToNewLocation)
//        //{
//        //    using (var varConnection = Locale.sqlConnectOneTime(Locale.sqlDataConnectionDetails))
//        //    using (var sqlQuery = new SqlCommand(@"SELECT [RaportPlik] FROM [dbo].[Raporty] WHERE [RaportID] = @varID", varConnection))
//        //    {
//        //        sqlQuery.Parameters.AddWithValue("@varID", varID);
//        //        using (var sqlQueryResult = sqlQuery.ExecuteReader())
//        //            if (sqlQueryResult != null)
//        //            {
//        //                sqlQueryResult.Read();
//        //                var blob = new Byte[(sqlQueryResult.GetBytes(0, 0, null, 0, int.MaxValue))];
//        //                sqlQueryResult.GetBytes(0, 0, blob, 0, blob.Length);
//        //                using (var fs = new FileStream(varPathToNewLocation, FileMode.Create, FileAccess.Write))
//        //                    fs.Write(blob, 0, blob.Length);
//        //            }
//        //    }
//        //}



























//    }
//}





















