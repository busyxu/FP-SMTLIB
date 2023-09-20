(declare-fun a_ack!2694 () (_ BitVec 32))
(declare-fun b_ack!2693 () (_ BitVec 64))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (bvslt a_ack!2694 #xffffffff))
(assert (not (bvsle #xffffffff a_ack!2694)))
(assert (not (bvslt a_ack!2694 #xffffff9b)))
(assert (bvsle #x00000002 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000003 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000004 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000005 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000006 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000007 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000008 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000009 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000000a (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000000b (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000000c (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000000d (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000000e (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000000f (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000010 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000011 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000012 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000013 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000014 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000015 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000016 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000017 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000018 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000019 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000001a (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000001b (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000001c (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000001d (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000001e (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000001f (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000020 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000021 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000022 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000023 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000024 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000025 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000026 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000027 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000028 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000029 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000002a (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000002b (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000002c (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000002d (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000002e (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000002f (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000030 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000031 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000032 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000033 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000034 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000035 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000036 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000037 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000038 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000039 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000003a (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000003b (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000003c (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000003d (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000003e (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000003f (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000040 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000041 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000042 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000043 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000044 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000045 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000046 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000047 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000048 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000049 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000004a (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000004b (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000004c (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000004d (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000004e (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000004f (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000050 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000051 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000052 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000053 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000054 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000055 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000056 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000057 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000058 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000059 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000005a (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000005b (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000005c (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000005d (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000005e (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000005f (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000060 (bvsub #xffffffff a_ack!2694)))
(assert (not (bvsle #x00000061 (bvsub #xffffffff a_ack!2694))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2693) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000002 (bvsub #xffffffff a_ack!2694)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!2693))))))
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
                                   ((_ to_fp 11 53) b_ack!2693))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #xc5efffffffffffff))
                 ((_ to_fp 11 53) #xc5efffffffffffff))
         a!1)))
(assert (bvsle #x00000003 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000004 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000005 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000006 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000007 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000008 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000009 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000000a (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000000b (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000000c (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000000d (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000000e (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000000f (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000010 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000011 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000012 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000013 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000014 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000015 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000016 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000017 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000018 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000019 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000001a (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000001b (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000001c (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000001d (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000001e (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000001f (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000020 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000021 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000022 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000023 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000024 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000025 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000026 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000027 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000028 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000029 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000002a (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000002b (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000002c (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000002d (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000002e (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000002f (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000030 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000031 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000032 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000033 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000034 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000035 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000036 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000037 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000038 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000039 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000003a (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000003b (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000003c (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000003d (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000003e (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x0000003f (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000040 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000041 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000042 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000043 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000044 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000045 (bvsub #xffffffff a_ack!2694)))
(assert (bvsle #x00000046 (bvsub #xffffffff a_ack!2694)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #xc5efffffffffffff))
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x4971d500bfaf40a5))
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xcbeffffffff27c9c))
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x4dddf6754a98b363))
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #xcf71d4fde916a334))
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x50c6b8d74ab18408))
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!7
                           ((_ to_fp 11 53) #xd1effdd8fb050591))
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!8
                           ((_ to_fp 11 53) #x52f3d9a56eec98b7))
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!9
                            ((_ to_fp 11 53) #xd3ddd85ae01150d6))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!10
                            ((_ to_fp 11 53) #x54b1093b0a13d20d))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #xd5716d2e12c093e1))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!12
                            ((_ to_fp 11 53) #x562216fee4ef297a))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!13
                            ((_ to_fp 11 53) #xd6c4f82ee1a1e873))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!14
                            ((_ to_fp 11 53) #x575d4116c70620c6))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!15
                            ((_ to_fp 11 53) #xd7ea1119508d1f88))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!16
                            ((_ to_fp 11 53) #x586f21d9459ef6a5))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!18 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!17
                            ((_ to_fp 11 53) #xd8e9eb5eb5a49037))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!19 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!18
                            ((_ to_fp 11 53) #x595f15330827bb17))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!19
                            ((_ to_fp 11 53) #xd9cb966ae7799848))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!20
                            ((_ to_fp 11 53) #x5a328b6563d1805e))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!22 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!21
                            ((_ to_fp 11 53) #xda9341c9780fc478))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!23 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!22
                            ((_ to_fp 11 53) #x5aef6aa50a337c1a))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!24 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!23
                            ((_ to_fp 11 53) #xdb446d4f26fdf951))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!25 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!24
                            ((_ to_fp 11 53) #x5b9571911f560e51))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!26 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!25
                            ((_ to_fp 11 53) #xdbe2601212d008b7))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!27 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!26
                            ((_ to_fp 11 53) #x5c29f5695c24f894))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!28 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!27
                            ((_ to_fp 11 53) #xdc6e7d674daa6a85))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!29 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!28
                            ((_ to_fp 11 53) #x5cae00de8c6654d9))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!30 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!29
                            ((_ to_fp 11 53) #xdce8e77dbadca792))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!31 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!30
                            ((_ to_fp 11 53) #x5d218addaf5f99cf))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!32 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!31
                            ((_ to_fp 11 53) #xdd5515fe957880d5))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!33 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!32
                            ((_ to_fp 11 53) #x5d85baaed449c155))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!34 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!33
                            ((_ to_fp 11 53) #xddb347ce43a81cb3))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!35 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!34
                            ((_ to_fp 11 53) #x5ddd93164cafef1a))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!36 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!35
                            ((_ to_fp 11 53) #xde03ac6a4c6b312b))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!37 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!36
                            ((_ to_fp 11 53) #x5e26c5aa179eed28))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!38 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!37
                            ((_ to_fp 11 53) #xde46fedaf408f3cf))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!39 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!38
                            ((_ to_fp 11 53) #x5e644eb5cebc34e5))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!40 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!39
                            ((_ to_fp 11 53) #xde7f6f21644cad32))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!41 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!40
                            ((_ to_fp 11 53) #x5e955c9717924ade))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!42 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!41
                            ((_ to_fp 11 53) #xdea988d30f90b4a2))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!43 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!42
                            ((_ to_fp 11 53) #x5ebae1a5bf4442b8))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!44 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!43
                            ((_ to_fp 11 53) #xdec8f3fa2d72c406))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!45 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!44
                            ((_ to_fp 11 53) #x5ed47195eeec1fc7))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!46 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!45
                            ((_ to_fp 11 53) #xdedd96a41764cc4f))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!47 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!46
                            ((_ to_fp 11 53) #x5ee2ec609d6d51c4))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!48 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!47
                            ((_ to_fp 11 53) #xdee5665b4097abed))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!49 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!48
                            ((_ to_fp 11 53) #x5ee5665b4097abed))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!50 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!49
                            ((_ to_fp 11 53) #xdee2ec609d6d51c4))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!51 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!50
                            ((_ to_fp 11 53) #x5edd96a41764cc4f))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!52 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!51
                            ((_ to_fp 11 53) #xded47195eeec1fc7))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!53 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!52
                            ((_ to_fp 11 53) #x5ec8f3fa2d72c406))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!54 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!53
                            ((_ to_fp 11 53) #xdebae1a5bf4442b8))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!55 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!54
                            ((_ to_fp 11 53) #x5ea988d30f90b4a2))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!56 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!55
                            ((_ to_fp 11 53) #xde955c9717924ade))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!57 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!56
                            ((_ to_fp 11 53) #x5e7f6f21644cad32))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!58 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!57
                            ((_ to_fp 11 53) #xde644eb5cebc34e5))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!59 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!58
                            ((_ to_fp 11 53) #x5e46fedaf408f3cf))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!60 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!59
                            ((_ to_fp 11 53) #xde26c5aa179eed28))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!61 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!60
                            ((_ to_fp 11 53) #x5e03ac6a4c6b312b))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!62 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!61
                            ((_ to_fp 11 53) #xdddd93164cafef1a))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!63 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!62
                            ((_ to_fp 11 53) #x5db347ce43a81cb3))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!64 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!63
                            ((_ to_fp 11 53) #xdd85baaed449c155))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!65 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!64
                            ((_ to_fp 11 53) #x5d5515fe957880d5))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!66 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!65
                            ((_ to_fp 11 53) #xdd218addaf5f99cf))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!67 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!66
                            ((_ to_fp 11 53) #x5ce8e77dbadca792))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
(let ((a!68 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!67
                            ((_ to_fp 11 53) #xdcae00de8c6654d9))
                    (CF_exp (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!2693))))))
  (FPCHECK_FMUL_ACCURACY
    (fp.add roundNearestTiesToEven a!68 ((_ to_fp 11 53) #x5c6e7d674daa6a85))
    (CF_exp (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) b_ack!2693)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

(check-sat)
(exit)
