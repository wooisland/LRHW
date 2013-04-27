INPUT = "C:/Temp/AeccXPipeStack-2.txt"
OUTPUT = "C:/Temp/o.txt"


PATTERN =
/refcount=\d{1,2}\sthis=0x0000000034039580\sAeccXPipe.dll!CAeccPipe::InternalAddRef\(\)\s
\sAeccXPipe.dll!ATL::CComObject<CAeccPipe>::AddRef\(\)\s
\satl100.dll!AtlInternalQueryInterface\(\)\s
\sAeccXPipe.dll!ATL::CComObjectRootBase::InternalQueryInterface\(\)\s
\sAeccXPipe.dll!CAeccPipe::_InternalQueryInterface\(\)\s
\sAeccXPipe.dll!ATL::CComObject<CAeccPipe>::QueryInterface\(\)\s
\sacpi.arx!CStaticPropInfo::GetMethods\(\)\s
\sacpi.arx!CStaticPropInfo::BuildPropInfo\(\)\s
\sacpi.arx!CStaticPropInfo::GetStaticProperties\(\)\s
\sacpi.arx!CPropInfo::PopulateProperties\(\)\s
\sacpi.arx!CPropInfo::Reset\(\)\s
\sacpi.arx!DllGetFilteredCollectionVector\(\)\s
\sAcApp.arx!ROT::TooltipService::GetToolTipTargets\(\)\s
\s
refcount=\d{1,2}\sthis=0x0000000034039580\sAeccXPipe.dll!CAeccPipe::InternalRelease\(\)\s
\sAeccXPipe.dll!ATL::CComObject<CAeccPipe>::Release\(\)\s
\sacpi.arx!CStaticPropInfo::GetMethods\(\)\s
\sacpi.arx!CStaticPropInfo::BuildPropInfo\(\)\s
\sacpi.arx!CStaticPropInfo::GetStaticProperties\(\)\s
\sacpi.arx!CPropInfo::PopulateProperties\(\)\s
\sacpi.arx!CPropInfo::Reset\(\)\s
\sacpi.arx!DllGetFilteredCollectionVector\(\)\s
\sAcApp.arx!ROT::TooltipService::GetToolTipTargets\(\)\s
/


input = File.open(INPUT,'r')
content = input.read
content.scan(PATTERN).each {|x|
	puts x
}

puts "There are total #{content.scan(PATTERN).count} match sections"

output = File.new(OUTPUT,'w+')

output.write content.gsub(PATTERN," ")
output.flush

input.close
output.close


