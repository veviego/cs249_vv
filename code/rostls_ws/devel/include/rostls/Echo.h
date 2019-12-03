// Generated by gencpp from file rostls/Echo.msg
// DO NOT EDIT!


#ifndef ROSTLS_MESSAGE_ECHO_H
#define ROSTLS_MESSAGE_ECHO_H

#include <ros/service_traits.h>


#include <rostls/EchoRequest.h>
#include <rostls/EchoResponse.h>


namespace rostls
{

struct Echo
{

typedef EchoRequest Request;
typedef EchoResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Echo
} // namespace rostls


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::rostls::Echo > {
  static const char* value()
  {
    return "26085aab37368ac2457ca01f3459ff4a";
  }

  static const char* value(const ::rostls::Echo&) { return value(); }
};

template<>
struct DataType< ::rostls::Echo > {
  static const char* value()
  {
    return "rostls/Echo";
  }

  static const char* value(const ::rostls::Echo&) { return value(); }
};


// service_traits::MD5Sum< ::rostls::EchoRequest> should match 
// service_traits::MD5Sum< ::rostls::Echo > 
template<>
struct MD5Sum< ::rostls::EchoRequest>
{
  static const char* value()
  {
    return MD5Sum< ::rostls::Echo >::value();
  }
  static const char* value(const ::rostls::EchoRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::rostls::EchoRequest> should match 
// service_traits::DataType< ::rostls::Echo > 
template<>
struct DataType< ::rostls::EchoRequest>
{
  static const char* value()
  {
    return DataType< ::rostls::Echo >::value();
  }
  static const char* value(const ::rostls::EchoRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::rostls::EchoResponse> should match 
// service_traits::MD5Sum< ::rostls::Echo > 
template<>
struct MD5Sum< ::rostls::EchoResponse>
{
  static const char* value()
  {
    return MD5Sum< ::rostls::Echo >::value();
  }
  static const char* value(const ::rostls::EchoResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::rostls::EchoResponse> should match 
// service_traits::DataType< ::rostls::Echo > 
template<>
struct DataType< ::rostls::EchoResponse>
{
  static const char* value()
  {
    return DataType< ::rostls::Echo >::value();
  }
  static const char* value(const ::rostls::EchoResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROSTLS_MESSAGE_ECHO_H