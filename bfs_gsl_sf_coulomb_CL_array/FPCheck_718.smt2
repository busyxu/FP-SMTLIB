(declare-fun a_ack!2572 () (_ BitVec 64))
(declare-fun c_ack!2571 () (_ BitVec 64))
(declare-fun b_ack!2570 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!2572) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!2572))
       ((_ to_fp 11 53) #x3cb0000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!2571))
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (not (fp.gt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x401921fb54442d18)
                    ((_ to_fp 11 53) c_ack!2571))
            ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x401921fb54442d18)
               ((_ to_fp 11 53) c_ack!2571))
       ((_ to_fp 11 53) #xc086232bdd7abcd2)))
(assert (bvsle #x00000001 b_ack!2570))
(assert (bvsle #x00000002 b_ack!2570))
(assert (bvsle #x00000003 b_ack!2570))
(assert (bvsle #x00000004 b_ack!2570))
(assert (bvsle #x00000005 b_ack!2570))
(assert (bvsle #x00000006 b_ack!2570))
(assert (bvsle #x00000007 b_ack!2570))
(assert (bvsle #x00000008 b_ack!2570))
(assert (bvsle #x00000009 b_ack!2570))
(assert (bvsle #x0000000a b_ack!2570))
(assert (bvsle #x0000000b b_ack!2570))
(assert (bvsle #x0000000c b_ack!2570))
(assert (bvsle #x0000000d b_ack!2570))
(assert (bvsle #x0000000e b_ack!2570))
(assert (bvsle #x0000000f b_ack!2570))
(assert (bvsle #x00000010 b_ack!2570))
(assert (bvsle #x00000011 b_ack!2570))
(assert (bvsle #x00000012 b_ack!2570))
(assert (bvsle #x00000013 b_ack!2570))
(assert (bvsle #x00000014 b_ack!2570))
(assert (bvsle #x00000015 b_ack!2570))
(assert (bvsle #x00000016 b_ack!2570))
(assert (bvsle #x00000017 b_ack!2570))
(assert (bvsle #x00000018 b_ack!2570))
(assert (bvsle #x00000019 b_ack!2570))
(assert (bvsle #x0000001a b_ack!2570))
(assert (bvsle #x0000001b b_ack!2570))
(assert (bvsle #x0000001c b_ack!2570))
(assert (bvsle #x0000001d b_ack!2570))
(assert (bvsle #x0000001e b_ack!2570))
(assert (bvsle #x0000001f b_ack!2570))
(assert (bvsle #x00000020 b_ack!2570))
(assert (bvsle #x00000021 b_ack!2570))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2572)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2572)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2572)
                                   ((_ to_fp 11 53) #x4008000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2572)
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2572)
                                   ((_ to_fp 11 53) #x4014000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x4018000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x401c000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x4020000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x4022000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x4024000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!21 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x4026000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x4028000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x402a000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x402c000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x402e000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!31 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x4030000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!33 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x4031000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!35 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x4032000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!37 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x4033000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!39 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x4034000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!41 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x4035000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!43 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x4036000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!45 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x4037000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!47 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x4038000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!49 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x4039000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!51 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x403a000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!53 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x403b000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!55 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x403c000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!57 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x403d000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!59 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x403e000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!61 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x403f000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!63 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x4040000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x7ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2572)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x7fdfffffffffffff))
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2572)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           a!3))))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x7fdfffffffffffff))
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2572)
                                   ((_ to_fp 11 53) #x4008000000000000))
                           a!5))))
(let ((a!8 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x7fdfffffffffffff))
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2572)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!7))))
(let ((a!10 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!8
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x4014000000000000))
                            a!9))))
(let ((a!12 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!10
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!11))))
(let ((a!14 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!12
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x401c000000000000))
                            a!13))))
(let ((a!16 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!14
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!15))))
(let ((a!18 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!16
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x4022000000000000))
                            a!17))))
(let ((a!20 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!18
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!19))))
(let ((a!22 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!20
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x4026000000000000))
                            a!21))))
(let ((a!24 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!22
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!23))))
(let ((a!26 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!24
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x402a000000000000))
                            a!25))))
(let ((a!28 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!26
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!27))))
(let ((a!30 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!28
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x402e000000000000))
                            a!29))))
(let ((a!32 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!30
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!31))))
(let ((a!34 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!32
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x4031000000000000))
                            a!33))))
(let ((a!36 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!34
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!35))))
(let ((a!38 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!36
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x4033000000000000))
                            a!37))))
(let ((a!40 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!38
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!39))))
(let ((a!42 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!40
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x4035000000000000))
                            a!41))))
(let ((a!44 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!42
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!43))))
(let ((a!46 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!44
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x4037000000000000))
                            a!45))))
(let ((a!48 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!46
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x4038000000000000))
                            a!47))))
(let ((a!50 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!48
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x4039000000000000))
                            a!49))))
(let ((a!52 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!50
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x403a000000000000))
                            a!51))))
(let ((a!54 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!52
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x403b000000000000))
                            a!53))))
(let ((a!56 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!54
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x403c000000000000))
                            a!55))))
(let ((a!58 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!56
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x403d000000000000))
                            a!57))))
(let ((a!60 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!58
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x403e000000000000))
                            a!59))))
(let ((a!62 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!60
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x403f000000000000))
                            a!61))))
(let ((a!64 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!62
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2572)
                                    ((_ to_fp 11 53) #x4040000000000000))
                            a!63))))
  (FPCHECK_FMUL_ACCURACY a!64 #x7fdfffffffffffff)))))))))))))))))))))))))))))))))))

(check-sat)
(exit)
