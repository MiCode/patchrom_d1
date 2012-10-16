import common
import edify_generator

def AddAssertions(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if ");" in edify.script[i] and ("ro.product.device" in edify.script[i] or "ro.build.product" in edify.script[i]):
            edify.script[i] = edify.script[i].replace(");", ' || getprop("ro.build.product") == "front");')
            break

def InstallImage(img_name, img_file, partition, info):
    common.ZipWriteStr(info.output_zip, img_name, img_file)
    info.script.AppendExtra(('package_extract_file("' + img_name + '", "/dev/block/platform/omap/omap_hsmmc.1/by-name/' + partition + '");'))

image_partitions = {
    #'bootloader@mmcblk0p3.img'  : 'bootloader',
    'efi@mmcblk0p1.img'         : 'efi',
    'modemimage@mmcblk0p10.img' : 'modemimage',
}

def RemovePartOfCust(info):
    extraCommand = """
run_program("/sbin/busybox", "mount", "-o,rw", "-t", "ext4", "/dev/block/platform/omap/omap_hsmmc.1/by-name/cust", "/cust");
run_program("/sbin/busybox", "rm", "/cust/hw/default/delapp", "-rf");
run_program("/sbin/busybox", "rm", "/cust/hw/default/wallpaper", "-rf");
run_program("/sbin/busybox", "rm", "/cust/hw/default/prop/local.prop", "-rf");
run_program("/sbin/busybox", "umount", "/cust");
        """
    info.script.AppendExtra(extraCommand)
    return 

def FullOTA_InstallEnd(info):
    AddAssertions(info)
    RemovePartOfCust(info)
    for k, v in image_partitions.iteritems():
        try:
            img_file = info.input_zip.read("RADIO/" + k)
            info.script.Print("Writing image " + k + "...")
            InstallImage(k, img_file, v, info)
        except KeyError:
            print "warning: no " + k + " image in input target_files; not flashing " + k
    return 

def IncrementalOTA_InstallEnd(info):
    AddAssertions(info)
    for k, v in image_partitions.iteritems():
        try:
            source_file = info.source_zip.read("RADIO/" + k)
            target_file = info.target_zip.read("RADIO/" + k)
            if source_file != target_file:
                info.script.Print("Writing image " + k + "...")
                InstallImage(k, target_file, v, info)
            else:
                print k + " image unchanged; skipping"
        except KeyError:
            print "warning: " + k + " image missing from target; not flashing " + k
    return


