﻿using TrainingCenters.InterfacesApi;
using TrainingCenters.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;
using System.Net.Http;
using Microsoft.Extensions.Options;
using TrainingCenters.ConnectApi;
using TrainingCenters.Models.ModelMN;
using System.Net.Http.Headers;
using TrainingCenters.Models.ModeIMN;
namespace TrainingCenters.RepositoryApi
{
    public class TrungTamRepon : ITrungTam
    {
        private readonly HttpClient _httpClient;
        private readonly string _apiUrl;

        public TrungTamRepon(HttpClient httpClient, IOptions<TrainingCenters.ConnectApi.ConnectApi> connectionStrings)
        {
            _httpClient = httpClient;
            _apiUrl = connectionStrings?.Value?.StringConnectAPI ?? throw new ArgumentNullException(nameof(connectionStrings));
            _httpClient.Timeout = TimeSpan.FromSeconds(30);
        }

        public async Task<ResponseDI<bool>> CheckId(int id, string accessToken)
        {
            var responseModel = new ResponseDI<bool>();
            try
            {
                var apiUrl = $"{_apiUrl}/api/TrungTam/CheckId?id={id}";
                if (!string.IsNullOrEmpty(accessToken))
                {
                    // Thêm accessToken vào header của HttpClient
                    _httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", accessToken);
                }
                // Chuyển dữ liệu thành JSON
                var response = await _httpClient.GetAsync(apiUrl);
                // Kiểm tra mã trạng thái HTTP để xác định xem yêu cầu đã thành công hay không
                if (response.IsSuccessStatusCode)
                {
                    var jsonResponse = await response.Content.ReadAsStringAsync();
                    var responseObject = JsonConvert.DeserializeObject<ApiResponse>(jsonResponse);
                    if (responseObject != null)
                    {
                        responseModel.IsSuccess = true;
                        responseModel.Message = "Thành công";
                        responseModel.Data = responseObject.IsSuccess;
                    }
                    else
                    {
                        responseModel.IsSuccess = false;
                        responseModel.Message = "Chuyển đổi dữ liệu thất bại";
                    }
                }
                else
                {
                    responseModel.IsSuccess = false;
                    responseModel.Message = "Authorization";
                }
            }
            catch
            {
                responseModel.IsSuccess = false;
                responseModel.Message = $"Lỗi Try_C";
            }
            return responseModel;
        }

        public async Task<ResponseDI<bool>> Create(TrungTam item, string accessToken)
        {
            var responseModel = new ResponseDI<bool>();

            try
            {
                var apiUrl = $"{_apiUrl}/api/TrungTam/Create";
                if (!string.IsNullOrEmpty(accessToken))
                {
                    // Thêm accessToken vào header của HttpClient
                    _httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", accessToken);
                }
                // Chuyển dữ liệu thành JSON
                var content = new StringContent(JsonConvert.SerializeObject(item), Encoding.UTF8, "application/json");
                var response = await _httpClient.PostAsync(apiUrl, content);
                // Kiểm tra mã trạng thái HTTP để xác định xem yêu cầu đã thành công hay không
                if (response.IsSuccessStatusCode)
                {
                    var jsonResponse = await response.Content.ReadAsStringAsync();
                    var responseObject = JsonConvert.DeserializeObject<ApiResponse>(jsonResponse);
                    if (responseObject != null)
                    {
                        responseModel.IsSuccess = true;
                        responseModel.Message = "Thành công";
                        responseModel.Data = responseObject.IsSuccess;
                    }
                    else
                    {
                        responseModel.IsSuccess = false;
                        responseModel.Message = "Chuyển đổi dữ liệu thất bại";
                    }
                }
                else
                {
                    responseModel.IsSuccess = false;
                    responseModel.Message = "Authorization";
                }
            }
            catch
            {
                responseModel.IsSuccess = false;
                responseModel.Message = $"Lỗi Try_C";
            }
            return responseModel;
        }

        public async Task<ResponseDI<bool>> Delete(int id, string nguoiXoa, string accessToken)
        {
            var responseModel = new ResponseDI<bool>();
            try
            {
                var apiUrl = $"{_apiUrl}/api/TrungTam/Delete?id={id}&nguoiXoa={nguoiXoa}"; // Điền đường dẫn API tại đây
                if (!string.IsNullOrEmpty(accessToken))
                {
                    // Thêm accessToken vào header của HttpClient
                    _httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", accessToken);
                }
                var response = await _httpClient.DeleteAsync(apiUrl);
                if (response.IsSuccessStatusCode)
                {
                    var jsonResponse = await response.Content.ReadAsStringAsync();
                    var responseObject = JsonConvert.DeserializeObject<ApiResponse>(jsonResponse);
                    if (responseObject != null)
                    {
                        responseModel.IsSuccess = true;
                        responseModel.Message = "Thành công";
                        responseModel.Data = responseObject.IsSuccess;
                    }
                    else
                    {
                        responseModel.IsSuccess = false;
                        responseModel.Message = "Chuyển đổi dữ liệu thất bại";
                    }
                }
                else
                {
                    responseModel.IsSuccess = false;
                    responseModel.Message = "Authorization";
                }
            }
            catch
            {
                responseModel.IsSuccess = false;
                responseModel.Message = $"Lỗi Try_C";
            }
            return responseModel;
        }

        public async Task<ResponseDI<ICollection<TrungTam>>> Search(TrungTam item, string accessToken)
        {
            var responseModel = new ResponseDI<ICollection<TrungTam>>();

            try
            {
                var apiUrl = $"{_apiUrl}/api/TrungTam/Search";
                if (!string.IsNullOrEmpty(accessToken))
                {
                    // Thêm accessToken vào header của HttpClient
                    _httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", accessToken);
                }
                // Chuyển dữ liệu thành JSON
                var content = new StringContent(JsonConvert.SerializeObject(item), Encoding.UTF8, "application/json");
                var response = await _httpClient.PostAsync(apiUrl, content);
                // Kiểm tra mã trạng thái HTTP để xác định xem yêu cầu đã thành công hay không
                if (response.IsSuccessStatusCode)
                {
                    var content1 = await response.Content.ReadAsStringAsync();
                    var values = JsonConvert.DeserializeObject<ICollection<TrungTam>>(content1);
                    if (values != null)
                    {
                        responseModel.IsSuccess = true;
                        responseModel.Message = "Thành công";
                        responseModel.Data = values;
                    }
                    else
                    {
                        responseModel.IsSuccess = false;
                        responseModel.Message = "Chuyển đổi dữ liệu thất bại";
                    }
                }
                else
                {
                    responseModel.IsSuccess = false;
                    responseModel.Message = "Authorization";
                }
            }
            catch
            {
                responseModel.IsSuccess = false;
                responseModel.Message = $"Lỗi Try_C";
            }
            return responseModel;
        }

        public async Task<ResponseDI<bool>> Update(TrungTam item, string accessToken)
        {
            var responseModel = new ResponseDI<bool>();
            try
            {
                var apiUrl = $"{_apiUrl}/api/TrungTam/Update";
                if (!string.IsNullOrEmpty(accessToken))
                {
                    // Thêm accessToken vào header của HttpClient
                    _httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", accessToken);
                }
                // Chuyển dữ liệu thành JSON
                var content = new StringContent(JsonConvert.SerializeObject(item), Encoding.UTF8, "application/json");
                var response = await _httpClient.PutAsync(apiUrl, content);
                // Kiểm tra mã trạng thái HTTP để xác định xem yêu cầu đã thành công hay không
                if (response.IsSuccessStatusCode)
                {
                    var jsonResponse = await response.Content.ReadAsStringAsync();
                    var responseObject = JsonConvert.DeserializeObject<ApiResponse>(jsonResponse);
                    if (responseObject != null)
                    {
                        responseModel.IsSuccess = true;
                        responseModel.Message = "Thành công";
                        responseModel.Data = responseObject.IsSuccess;
                    }
                    else
                    {
                        responseModel.IsSuccess = false;
                        responseModel.Message = "Chuyển đổi dữ liệu thất bại";
                    }
                }
                else
                {
                    responseModel.IsSuccess = false;
                    responseModel.Message = "Authorization";
                }
            }
            catch
            {
                responseModel.IsSuccess = false;
                responseModel.Message = $"Lỗi Try_C";
            }
            return responseModel;
        }

        public async Task<ResponseDI<ICollection<TrungTam>>> GetAll(string accessToken)
        {
            var responseModel = new ResponseDI<ICollection<TrungTam>>();
            try
            {
                var apiUrl = $"{_apiUrl}/api/TrungTam/GetAll";
                // Đọc accessToken từ HttpContext.Items
                if (!string.IsNullOrEmpty(accessToken))
                {
                    // Thêm accessToken vào header của HttpClient
                    _httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", accessToken);
                }
                // Chuyển dữ liệu thành JSON
                var response = await _httpClient.GetAsync(apiUrl);


                // Kiểm tra mã trạng thái HTTP để xác định xem yêu cầu đã thành công hay không
                if (response.IsSuccessStatusCode)
                {
                    var content1 = await response.Content.ReadAsStringAsync();
                    var values = JsonConvert.DeserializeObject<ICollection<TrungTam>>(content1);
                    if (values != null)
                    {
                        responseModel.IsSuccess = true;
                        responseModel.Message = "Thành công";
                        responseModel.Data = values;
                    }
                    else
                    {
                        responseModel.IsSuccess = false;
                        responseModel.Message = "Chuyển đổi dữ liệu thất bại";
                    }
                }
                else
                {
                    responseModel.IsSuccess = false;
                    responseModel.Message = "Authorization";
                }
            }
            catch
            {
                responseModel.IsSuccess = false;
                responseModel.Message = $"Lỗi Try_C";
            }
            return responseModel;
        }

        public async Task<ResponseDI<TrungTam>> GetById(int id, string accessToken)
        {
            var responseModel = new ResponseDI<TrungTam>();
            try
            {
                var apiUrl = $"{_apiUrl}/api/TrungTam/GetById?id={id}";
                if (!string.IsNullOrEmpty(accessToken))
                {
                    // Thêm accessToken vào header của HttpClient
                    _httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", accessToken);
                }
                // Chuyển dữ liệu thành JSON
                var response = await _httpClient.GetAsync(apiUrl);
                // Kiểm tra mã trạng thái HTTP để xác định xem yêu cầu đã thành công hay không
                if (response.IsSuccessStatusCode)
                {
                    var jsonResponse = await response.Content.ReadAsStringAsync();
                    var responseObject = JsonConvert.DeserializeObject<TrungTam>(jsonResponse);
                    if (responseObject != null)
                    {
                        responseModel.IsSuccess = true;
                        responseModel.Message = "Thành công";
                        responseModel.Data = responseObject;
                    }
                    else
                    {
                        responseModel.IsSuccess = false;
                        responseModel.Message = "Chuyển đổi dữ liệu thất bại";
                    }
                }
                else
                {
                    responseModel.IsSuccess = false;
                    responseModel.Message = "Authorization";
                }
            }
            catch
            {
                responseModel.IsSuccess = false;
                responseModel.Message = $"Lỗi Try_C";
            }
            return responseModel;
        }

        public async Task<ResponseDI<object>> LoadingDataTableView(TrungTam item, int skip, int take, string accessToken)
        {
            var responseModel = new ResponseDI<object>();
            try
            {
                var apiUrl = $"{_apiUrl}/api/TrungTam/LoadingDataTableView?skip={skip}&take={take}";
                if (!string.IsNullOrEmpty(accessToken))
                {
                    // Thêm accessToken vào header của HttpClient
                    _httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", accessToken);
                }
                // Chuyển dữ liệu thành JSON
                var content = new StringContent(JsonConvert.SerializeObject(item), Encoding.UTF8, "application/json");
                var response = await _httpClient.PostAsync(apiUrl, content);
                // Kiểm tra mã trạng thái HTTP để xác định xem yêu cầu đã thành công hay không
                if (response.IsSuccessStatusCode)
                {
                    var content1 = await response.Content.ReadAsStringAsync();
                    if (content1 != null)
                    {
                        responseModel.IsSuccess = true;
                        responseModel.Message = "Thành công";
                        responseModel.Data = content1;
                    }
                    else
                    {
                        responseModel.IsSuccess = false;
                        responseModel.Message = "Chuyển đổi dữ liệu thất bại";
                    }
                }
                else
                {
                    responseModel.IsSuccess = false;
                    responseModel.Message = "Authorization";
                }
            }
            catch
            {
                responseModel.IsSuccess = false;
                responseModel.Message = $"Lỗi Try_C";
            }
            return responseModel;
        }

        public async Task<ResponseDI<List<TrungTamMN>>> SearchName(TrungTam item, string accessToken)
        {
            var responseModel = new ResponseDI<List<TrungTamMN>>();
            try
            {
                var apiUrl = $"{_apiUrl}/api/TrungTam/SearchName";
                if (!string.IsNullOrEmpty(accessToken))
                {
                    // Thêm accessToken vào header của HttpClient
                    _httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", accessToken);
                }
                // Chuyển dữ liệu thành JSON
                var content = new StringContent(JsonConvert.SerializeObject(item), Encoding.UTF8, "application/json");
                var response = await _httpClient.PostAsync(apiUrl, content);
                // Kiểm tra mã trạng thái HTTP để xác định xem yêu cầu đã thành công hay không
                if (response.IsSuccessStatusCode)
                {
                    var content1 = await response.Content.ReadAsStringAsync();
                    // Deserialize JSON thành một danh sách các đối tượng
                    var objects = JsonConvert.DeserializeObject<List<TrungTamMN>>(content1);
                    if (objects != null)
                    {
                        responseModel.IsSuccess = true;
                        responseModel.Message = "Thành công";
                        responseModel.Data = objects;
                    }
                    else
                    {
                        responseModel.IsSuccess = false;
                        responseModel.Message = "Chuyển đổi dữ liệu thất bại";
                    }
                }
                else
                {
                    responseModel.IsSuccess = false;
                    responseModel.Message = "Authorization";
                }
            }
            catch
            {
                responseModel.IsSuccess = false;
                responseModel.Message = $"Lỗi Try_C";
            }
            return responseModel;
        }

        public async Task<ResponseDI<int>> SearchCount(TrungTam item, string accessToken)
        {
            var responseModel = new ResponseDI<int>();
            try
            {
                var apiUrl = $"{_apiUrl}/api/TrungTam/SearchCount";
                if (!string.IsNullOrEmpty(accessToken))
                {
                    // Thêm accessToken vào header của HttpClient
                    _httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", accessToken);
                }
                // Chuyển dữ liệu thành JSON
                var content = new StringContent(JsonConvert.SerializeObject(item), Encoding.UTF8, "application/json");
                var response = await _httpClient.PostAsync(apiUrl, content);
                // Kiểm tra mã trạng thái HTTP để xác định xem yêu cầu đã thành công hay không
                if (response.IsSuccessStatusCode)
                {
                    var content1 = await response.Content.ReadAsStringAsync();
                    if (content1 != null)
                    {
                        responseModel.IsSuccess = true;
                        responseModel.Message = "Thành công";
                        responseModel.Data = Convert.ToInt32(content1);
                    }
                    else
                    {
                        responseModel.IsSuccess = false;
                        responseModel.Message = "Chuyển đổi dữ liệu thất bại";
                    }
                }
                else
                {
                    responseModel.IsSuccess = false;
                    responseModel.Message = "Authorization";
                }
            }
            catch
            {
                responseModel.IsSuccess = false;
                responseModel.Message = $"Lỗi Try_C";
            }
            return responseModel;
        }
    }
}