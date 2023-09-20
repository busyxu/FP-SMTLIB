(declare-fun b_ack!3199 () (_ BitVec 64))
(declare-fun a_ack!3201 () (_ BitVec 32))
(declare-fun c_ack!3200 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!3199) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!3201 #x00000000)))
(assert (not (= #x00000000 a_ack!3201)))
(assert (not (= #x00000001 a_ack!3201)))
(assert (not (= #x00000002 a_ack!3201)))
(assert (not (= #x00000003 a_ack!3201)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!3199) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) c_ack!3200) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3200) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!3199) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!3199) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000004 a_ack!3201))
(assert (bvsle #x00000005 a_ack!3201))
(assert (bvsle #x00000006 a_ack!3201))
(assert (bvsle #x00000007 a_ack!3201))
(assert (bvsle #x00000008 a_ack!3201))
(assert (bvsle #x00000009 a_ack!3201))
(assert (bvsle #x0000000a a_ack!3201))
(assert (bvsle #x0000000b a_ack!3201))
(assert (bvsle #x0000000c a_ack!3201))
(assert (bvsle #x0000000d a_ack!3201))
(assert (bvsle #x0000000e a_ack!3201))
(assert (bvsle #x0000000f a_ack!3201))
(assert (bvsle #x00000010 a_ack!3201))
(assert (bvsle #x00000011 a_ack!3201))
(assert (bvsle #x00000012 a_ack!3201))
(assert (bvsle #x00000013 a_ack!3201))
(assert (bvsle #x00000014 a_ack!3201))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4034000000000000)
                                   ((_ to_fp 11 53) b_ack!3199))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4033000000000000)
                                   ((_ to_fp 11 53) b_ack!3199))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4032000000000000)
                                   ((_ to_fp 11 53) b_ack!3199))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4031000000000000)
                                   ((_ to_fp 11 53) b_ack!3199))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4030000000000000)
                                   ((_ to_fp 11 53) b_ack!3199))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x402e000000000000)
                                   ((_ to_fp 11 53) b_ack!3199))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x402c000000000000)
                                   ((_ to_fp 11 53) b_ack!3199))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x402a000000000000)
                                   ((_ to_fp 11 53) b_ack!3199))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4028000000000000)
                                   ((_ to_fp 11 53) b_ack!3199))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!10 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4026000000000000)
                                    ((_ to_fp 11 53) b_ack!3199))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!11 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!3199))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022000000000000)
                                    ((_ to_fp 11 53) b_ack!3199))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!13 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4020000000000000)
                                    ((_ to_fp 11 53) b_ack!3199))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!14 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x401c000000000000)
                                    ((_ to_fp 11 53) b_ack!3199))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!3199))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!16 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4014000000000000)
                                    ((_ to_fp 11 53) b_ack!3199))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!17 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!3199))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xc000000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff5555555555555)
                                    ((_ to_fp 11 53) c_ack!3200))
                            ((_ to_fp 11 53) c_ack!3200))))
      (a!19 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3199)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!20 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) c_ack!3200))
                            ((_ to_fp 11 53) c_ack!3200))))
      (a!22 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4014000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3199)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!24 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4018000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3199)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!26 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x401c000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3199)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!28 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4020000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3199)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!30 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4022000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3199)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!32 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3199)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!34 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4026000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3199)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!36 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4028000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3199)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!38 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x402a000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3199)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!40 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x402c000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3199)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!42 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x402e000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3199)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!44 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4030000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3199)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!46 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4031000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3199)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!48 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4032000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3199)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!50 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4033000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3199)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!52 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4034000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3199)))
                    ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!21 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!17
                                    ((_ to_fp 11 53) c_ack!3200))
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!3200)
                                    a!18))
                    (fp.mul roundNearestTiesToEven a!19 a!20))))
(let ((a!23 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!16
                                    ((_ to_fp 11 53) c_ack!3200))
                            (fp.div roundNearestTiesToEven
                                    a!21
                                    ((_ to_fp 11 53) #x4010000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!22
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!3200)
                                    a!18)))))
(let ((a!25 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!15
                                    ((_ to_fp 11 53) c_ack!3200))
                            (fp.div roundNearestTiesToEven
                                    a!23
                                    ((_ to_fp 11 53) #x4014000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!24
                            (fp.div roundNearestTiesToEven
                                    a!21
                                    ((_ to_fp 11 53) #x4010000000000000))))))
(let ((a!27 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!14
                                    ((_ to_fp 11 53) c_ack!3200))
                            (fp.div roundNearestTiesToEven
                                    a!25
                                    ((_ to_fp 11 53) #x4018000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!26
                            (fp.div roundNearestTiesToEven
                                    a!23
                                    ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!29 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) c_ack!3200))
                            (fp.div roundNearestTiesToEven
                                    a!27
                                    ((_ to_fp 11 53) #x401c000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!28
                            (fp.div roundNearestTiesToEven
                                    a!25
                                    ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!31 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!12
                                    ((_ to_fp 11 53) c_ack!3200))
                            (fp.div roundNearestTiesToEven
                                    a!29
                                    ((_ to_fp 11 53) #x4020000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!30
                            (fp.div roundNearestTiesToEven
                                    a!27
                                    ((_ to_fp 11 53) #x401c000000000000))))))
(let ((a!33 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) c_ack!3200))
                            (fp.div roundNearestTiesToEven
                                    a!31
                                    ((_ to_fp 11 53) #x4022000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!32
                            (fp.div roundNearestTiesToEven
                                    a!29
                                    ((_ to_fp 11 53) #x4020000000000000))))))
(let ((a!35 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) c_ack!3200))
                            (fp.div roundNearestTiesToEven
                                    a!33
                                    ((_ to_fp 11 53) #x4024000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!34
                            (fp.div roundNearestTiesToEven
                                    a!31
                                    ((_ to_fp 11 53) #x4022000000000000))))))
(let ((a!37 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) c_ack!3200))
                            (fp.div roundNearestTiesToEven
                                    a!35
                                    ((_ to_fp 11 53) #x4026000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!36
                            (fp.div roundNearestTiesToEven
                                    a!33
                                    ((_ to_fp 11 53) #x4024000000000000))))))
(let ((a!39 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) c_ack!3200))
                            (fp.div roundNearestTiesToEven
                                    a!37
                                    ((_ to_fp 11 53) #x4028000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!38
                            (fp.div roundNearestTiesToEven
                                    a!35
                                    ((_ to_fp 11 53) #x4026000000000000))))))
(let ((a!41 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) c_ack!3200))
                            (fp.div roundNearestTiesToEven
                                    a!39
                                    ((_ to_fp 11 53) #x402a000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!40
                            (fp.div roundNearestTiesToEven
                                    a!37
                                    ((_ to_fp 11 53) #x4028000000000000))))))
(let ((a!43 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) c_ack!3200))
                            (fp.div roundNearestTiesToEven
                                    a!41
                                    ((_ to_fp 11 53) #x402c000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!42
                            (fp.div roundNearestTiesToEven
                                    a!39
                                    ((_ to_fp 11 53) #x402a000000000000))))))
(let ((a!45 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) c_ack!3200))
                            (fp.div roundNearestTiesToEven
                                    a!43
                                    ((_ to_fp 11 53) #x402e000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!44
                            (fp.div roundNearestTiesToEven
                                    a!41
                                    ((_ to_fp 11 53) #x402c000000000000))))))
(let ((a!47 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) c_ack!3200))
                            (fp.div roundNearestTiesToEven
                                    a!45
                                    ((_ to_fp 11 53) #x4030000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!46
                            (fp.div roundNearestTiesToEven
                                    a!43
                                    ((_ to_fp 11 53) #x402e000000000000))))))
(let ((a!49 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) c_ack!3200))
                            (fp.div roundNearestTiesToEven
                                    a!47
                                    ((_ to_fp 11 53) #x4031000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!48
                            (fp.div roundNearestTiesToEven
                                    a!45
                                    ((_ to_fp 11 53) #x4030000000000000))))))
(let ((a!51 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) c_ack!3200))
                            (fp.div roundNearestTiesToEven
                                    a!49
                                    ((_ to_fp 11 53) #x4032000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!50
                            (fp.div roundNearestTiesToEven
                                    a!47
                                    ((_ to_fp 11 53) #x4031000000000000))))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 ((_ to_fp 11 53) c_ack!3200))
            (fp.div roundNearestTiesToEven
                    a!51
                    ((_ to_fp 11 53) #x4033000000000000)))
    (fp.mul roundNearestTiesToEven
            a!52
            (fp.div roundNearestTiesToEven
                    a!49
                    ((_ to_fp 11 53) #x4032000000000000))))))))))))))))))))))

(check-sat)
(exit)
