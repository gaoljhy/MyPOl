using System;
using System.Data;
using MySql.Data.MySqlClient;
using System.Collections.Generic;
using shop.Core.Model;
namespace shop.Core.Factory
{
    public class ProductCategoryFactory
    {
        public static void Add(ProductCategoryModel info)
        {
            string sql = @"INSERT INTO shop_productcategory ( 
                            categoryname ,
                            orderid ,
                            parentid) VALUES (?categoryname,?orderid,?parentid)";


            MySqlParameter[] parameters = { 
                MySqlDbHelper.MakeInParam("?categoryname" , MySqlDbType.VarChar , 50 ,info.categoryname) ,
                MySqlDbHelper.MakeInParam("?orderid" , MySqlDbType.Int32 , 4 ,info.orderid) ,
                MySqlDbHelper.MakeInParam("?parentid" , MySqlDbType.Int32 ,4 ,info.parentid) 
            };

            MySqlDbHelper.Query(sql, parameters);
        }

        public static void Delete(int categoryid)
        {
            string sql = "delete from shop_productcategory where categoryid = " + categoryid;
            MySqlDbHelper.ExecuteSql(sql);
        }

        public static void Update(ProductCategoryModel info)
        {
            string sql = @"update shop_productcategory set categoryname = ?categoryname,orderid = ?orderid,parentid = ?parentid where categoryid = ?categoryid";

            MySqlParameter[] parameters = { 
                MySqlDbHelper.MakeInParam("?categoryname" , MySqlDbType.VarChar , 50 ,info.categoryname) ,
                MySqlDbHelper.MakeInParam("?orderid" , MySqlDbType.Int32 , 4 ,info.orderid) ,
                MySqlDbHelper.MakeInParam("?parentid" , MySqlDbType.Int32 ,4 ,info.parentid) ,
                MySqlDbHelper.MakeInParam("?categoryid" , MySqlDbType.Int32 ,4 ,info.categoryid) 
            };

            MySqlDbHelper.Query(sql, parameters);
        }

        public static ProductCategoryModel Get(int categoryid)
        {
            string sql = "select * from shop_productcategory where categoryid=" + categoryid;
            ProductCategoryModel info = null;

            DataTable dt = MySqlDbHelper.Query(sql).Tables[0];
            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0] ;

                info = new ProductCategoryModel();
                info.categoryid = Int32.Parse(dr["categoryid"].ToString());
                info.categoryname = dr["categoryname"].ToString();
                info.orderid = Int32.Parse(dr["orderid"].ToString());
                info.parentid = Int32.Parse(dr["parentid"].ToString());
            }

            return info;
        }

        public static List<ProductCategoryModel> GetListAll()
        {
            DataTable dt = GetAll();

            List<ProductCategoryModel> list = new List<ProductCategoryModel>();
            ProductCategoryModel info = null;
            foreach (DataRow dr in dt.Rows)
            {
                info = new ProductCategoryModel();
                info.categoryid = Int32.Parse(dr["categoryid"].ToString());
                info.categoryname = dr["categoryname"].ToString();
                info.orderid = Int32.Parse(dr["orderid"].ToString());
                info.parentid = Int32.Parse(dr["parentid"].ToString());

                list.Add(info);
            }

            return list;
        }

        public static DataTable GetAll()
        {
            string sql = "select * from shop_productcategory order by orderid asc";
            DataTable dt = MySqlDbHelper.Query(sql).Tables[0];

            return dt;
        }

        public static DataTable GetAll(int parentid)
        {
            string sql = "select * from shop_productcategory where parentid=" + parentid + " order by orderid asc";
            DataTable dt = MySqlDbHelper.Query(sql).Tables[0];

            return dt;
        }

        public static List<ProductCategoryModel> GetListAll(int parentid)
        {
            DataTable dt = GetAll(parentid);

            List<ProductCategoryModel> list = new List<ProductCategoryModel>();
            ProductCategoryModel info = null;
            foreach (DataRow dr in dt.Rows)
            {
                info = new ProductCategoryModel();
                info.categoryid = Int32.Parse(dr["categoryid"].ToString());
                info.categoryname = dr["categoryname"].ToString();
                info.orderid = Int32.Parse(dr["orderid"].ToString());
                info.parentid = Int32.Parse(dr["parentid"].ToString());

                list.Add(info);
            }

            return list;
        }
    }
}
