(declare-fun b_ack!3436 () (_ BitVec 64))
(declare-fun a_ack!3438 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun c_ack!3437 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!3436) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!3438 #x00000000)))
(assert (not (= #x00000000 a_ack!3438)))
(assert (not (= #x00000001 a_ack!3438)))
(assert (not (= #x00000002 a_ack!3438)))
(assert (not (= #x00000003 a_ack!3438)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3436) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3436) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3436) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvsle #x00000004 a_ack!3438))
(assert (bvsle #x00000005 a_ack!3438))
(assert (bvsle #x00000006 a_ack!3438))
(assert (bvsle #x00000007 a_ack!3438))
(assert (bvsle #x00000008 a_ack!3438))
(assert (bvsle #x00000009 a_ack!3438))
(assert (bvsle #x0000000a a_ack!3438))
(assert (bvsle #x0000000b a_ack!3438))
(assert (bvsle #x0000000c a_ack!3438))
(assert (bvsle #x0000000d a_ack!3438))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x402a000000000000)
                                   ((_ to_fp 11 53) b_ack!3436))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4028000000000000)
                                   ((_ to_fp 11 53) b_ack!3436))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4026000000000000)
                                   ((_ to_fp 11 53) b_ack!3436))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!3436))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4022000000000000)
                                   ((_ to_fp 11 53) b_ack!3436))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   ((_ to_fp 11 53) b_ack!3436))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x401c000000000000)
                                   ((_ to_fp 11 53) b_ack!3436))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4018000000000000)
                                   ((_ to_fp 11 53) b_ack!3436))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4014000000000000)
                                   ((_ to_fp 11 53) b_ack!3436))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!10 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!3436))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!11 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4018000000000000)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            ((_ to_fp 11 53) b_ack!3436))))
      (a!15 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3436)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!16 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!3436)))
                    ((_ to_fp 11 53) c_ack!3437)))
      (a!19 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4014000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3436)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!22 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x401c000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3436)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!24 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4020000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3436)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!26 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4022000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3436)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!28 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3436)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!30 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4026000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3436)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!32 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4028000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3436)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!34 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x402a000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3436)))
                    ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!3436)
                                    a!11))
                    ((_ to_fp 11 53) c_ack!3437)))
      (a!17 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!3436)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbff0000000000000)
                            (fp.mul roundNearestTiesToEven
                                    a!16
                                    ((_ to_fp 11 53) c_ack!3437))))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbff0000000000000)
                            ((_ to_fp 11 53) b_ack!3436))
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!12
                                    ((_ to_fp 11 53) c_ack!3437))
                            ((_ to_fp 11 53) #x4008000000000000)))))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3436))
                            ((_ to_fp 11 53) c_ack!3437))
                    a!13)))
(let ((a!18 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) c_ack!3437))
                            a!14)
                    (fp.mul roundNearestTiesToEven a!15 a!17))))
(let ((a!20 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) c_ack!3437))
                            (fp.div roundNearestTiesToEven
                                    a!18
                                    ((_ to_fp 11 53) #x4010000000000000)))
                    (fp.mul roundNearestTiesToEven a!19 a!14))))
(let ((a!21 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) c_ack!3437))
                            (fp.div roundNearestTiesToEven
                                    a!20
                                    ((_ to_fp 11 53) #x4014000000000000)))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4000000000000000))
                            (fp.div roundNearestTiesToEven
                                    a!18
                                    ((_ to_fp 11 53) #x4010000000000000))))))
(let ((a!23 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) c_ack!3437))
                            (fp.div roundNearestTiesToEven
                                    a!21
                                    ((_ to_fp 11 53) #x4018000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!22
                            (fp.div roundNearestTiesToEven
                                    a!20
                                    ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!25 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) c_ack!3437))
                            (fp.div roundNearestTiesToEven
                                    a!23
                                    ((_ to_fp 11 53) #x401c000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!24
                            (fp.div roundNearestTiesToEven
                                    a!21
                                    ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!27 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) c_ack!3437))
                            (fp.div roundNearestTiesToEven
                                    a!25
                                    ((_ to_fp 11 53) #x4020000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!26
                            (fp.div roundNearestTiesToEven
                                    a!23
                                    ((_ to_fp 11 53) #x401c000000000000))))))
(let ((a!29 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) c_ack!3437))
                            (fp.div roundNearestTiesToEven
                                    a!27
                                    ((_ to_fp 11 53) #x4022000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!28
                            (fp.div roundNearestTiesToEven
                                    a!25
                                    ((_ to_fp 11 53) #x4020000000000000))))))
(let ((a!31 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) c_ack!3437))
                            (fp.div roundNearestTiesToEven
                                    a!29
                                    ((_ to_fp 11 53) #x4024000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!30
                            (fp.div roundNearestTiesToEven
                                    a!27
                                    ((_ to_fp 11 53) #x4022000000000000))))))
(let ((a!33 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) c_ack!3437))
                            (fp.div roundNearestTiesToEven
                                    a!31
                                    ((_ to_fp 11 53) #x4026000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!32
                            (fp.div roundNearestTiesToEven
                                    a!29
                                    ((_ to_fp 11 53) #x4024000000000000))))))
(let ((a!35 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) c_ack!3437))
                            (fp.div roundNearestTiesToEven
                                    a!33
                                    ((_ to_fp 11 53) #x4028000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!34
                            (fp.div roundNearestTiesToEven
                                    a!31
                                    ((_ to_fp 11 53) #x4026000000000000))))))
  (FPCHECK_FDIV_UNDERFLOW a!35 #x402a000000000000))))))))))))))))

(check-sat)
(exit)
