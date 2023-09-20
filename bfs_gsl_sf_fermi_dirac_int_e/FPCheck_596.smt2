(declare-fun a_ack!1712 () (_ BitVec 32))
(declare-fun b_ack!1711 () (_ BitVec 64))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (bvslt a_ack!1712 #xffffffff))
(assert (not (bvsle #xffffffff a_ack!1712)))
(assert (not (bvslt a_ack!1712 #xffffff9b)))
(assert (bvsle #x00000002 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000003 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000004 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000005 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000006 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000007 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000008 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000009 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000000a (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000000b (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000000c (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000000d (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000000e (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000000f (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000010 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000011 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000012 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000013 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000014 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000015 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000016 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000017 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000018 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000019 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000001a (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000001b (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000001c (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000001d (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000001e (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000001f (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000020 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000021 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000022 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000023 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000024 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000025 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000026 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000027 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000028 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000029 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000002a (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000002b (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000002c (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000002d (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000002e (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000002f (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000030 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000031 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000032 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000033 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000034 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000035 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000036 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000037 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000038 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000039 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000003a (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000003b (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000003c (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000003d (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000003e (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000003f (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000040 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000041 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000042 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000043 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000044 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000045 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000046 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000047 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000048 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000049 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000004a (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000004b (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000004c (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000004d (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000004e (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000004f (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000050 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000051 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000052 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000053 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000054 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000055 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000056 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000057 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000058 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000059 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000005a (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000005b (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000005c (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000005d (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000005e (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000005f (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000060 (bvsub #xffffffff a_ack!1712)))
(assert (not (bvsle #x00000061 (bvsub #xffffffff a_ack!1712))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1711) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000002 (bvsub #xffffffff a_ack!1712)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1711))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #xc5efffffffffffff))
                 a!1)
         ((_ to_fp 11 53) #xc5efffffffffffff))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1711))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #xc5efffffffffffff))
                 ((_ to_fp 11 53) #xc5efffffffffffff))
         a!1)))
(assert (bvsle #x00000003 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000004 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000005 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000006 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000007 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000008 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x00000009 (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000000a (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000000b (bvsub #xffffffff a_ack!1712)))
(assert (bvsle #x0000000c (bvsub #xffffffff a_ack!1712)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1711))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #xc5efffffffffffff))
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1711))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x4971d500bfaf40a5))
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1711))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xcbeffffffff27c9c))
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1711))))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x4dddf6754a98b363))
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1711))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #xcf71d4fde916a334))
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1711))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x50c6b8d74ab18408))
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1711))))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!7
                           ((_ to_fp 11 53) #xd1effdd8fb050591))
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1711))))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!8
                           ((_ to_fp 11 53) #x52f3d9a56eec98b7))
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1711))))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!9
                            ((_ to_fp 11 53) #xd3ddd85ae01150d6))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!1711))))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!10
                            ((_ to_fp 11 53) #x54b1093b0a13d20d))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!1711))))))
  (FPCHECK_FADD_OVERFLOW a!11 #xd5716d2e12c093e1)))))))))))))

(check-sat)
(exit)
