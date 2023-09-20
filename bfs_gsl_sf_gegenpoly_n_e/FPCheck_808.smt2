(declare-fun b_ack!3857 () (_ BitVec 64))
(declare-fun a_ack!3859 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun c_ack!3858 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!3857) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!3859 #x00000000)))
(assert (not (= #x00000000 a_ack!3859)))
(assert (not (= #x00000001 a_ack!3859)))
(assert (not (= #x00000002 a_ack!3859)))
(assert (not (= #x00000003 a_ack!3859)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3857) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3857) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3857) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvsle #x00000004 a_ack!3859))
(assert (bvsle #x00000005 a_ack!3859))
(assert (bvsle #x00000006 a_ack!3859))
(assert (bvsle #x00000007 a_ack!3859))
(assert (bvsle #x00000008 a_ack!3859))
(assert (bvsle #x00000009 a_ack!3859))
(assert (bvsle #x0000000a a_ack!3859))
(assert (bvsle #x0000000b a_ack!3859))
(assert (bvsle #x0000000c a_ack!3859))
(assert (bvsle #x0000000d a_ack!3859))
(assert (bvsle #x0000000e a_ack!3859))
(assert (bvsle #x0000000f a_ack!3859))
(assert (bvsle #x00000010 a_ack!3859))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4030000000000000)
                                   ((_ to_fp 11 53) b_ack!3857))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x402e000000000000)
                                   ((_ to_fp 11 53) b_ack!3857))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x402c000000000000)
                                   ((_ to_fp 11 53) b_ack!3857))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x402a000000000000)
                                   ((_ to_fp 11 53) b_ack!3857))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4028000000000000)
                                   ((_ to_fp 11 53) b_ack!3857))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4026000000000000)
                                   ((_ to_fp 11 53) b_ack!3857))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!3857))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4022000000000000)
                                   ((_ to_fp 11 53) b_ack!3857))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   ((_ to_fp 11 53) b_ack!3857))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!10 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x401c000000000000)
                                    ((_ to_fp 11 53) b_ack!3857))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!11 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!3857))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4014000000000000)
                                    ((_ to_fp 11 53) b_ack!3857))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!13 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!3857))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!14 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4018000000000000)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            ((_ to_fp 11 53) b_ack!3857))))
      (a!18 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3857)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!19 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!3857)))
                    ((_ to_fp 11 53) c_ack!3858)))
      (a!22 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4014000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3857)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!25 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x401c000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3857)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!27 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4020000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3857)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!29 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4022000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3857)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!31 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3857)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!33 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4026000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3857)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!35 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4028000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3857)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!37 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x402a000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3857)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!39 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x402c000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3857)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!41 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x402e000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3857)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!43 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4030000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3857)))
                    ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!3857)
                                    a!14))
                    ((_ to_fp 11 53) c_ack!3858)))
      (a!20 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!3857)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbff0000000000000)
                            (fp.mul roundNearestTiesToEven
                                    a!19
                                    ((_ to_fp 11 53) c_ack!3858))))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbff0000000000000)
                            ((_ to_fp 11 53) b_ack!3857))
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!15
                                    ((_ to_fp 11 53) c_ack!3858))
                            ((_ to_fp 11 53) #x4008000000000000)))))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!3857))
                            ((_ to_fp 11 53) c_ack!3858))
                    a!16)))
(let ((a!21 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) c_ack!3858))
                            a!17)
                    (fp.mul roundNearestTiesToEven a!18 a!20))))
(let ((a!23 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!12
                                    ((_ to_fp 11 53) c_ack!3858))
                            (fp.div roundNearestTiesToEven
                                    a!21
                                    ((_ to_fp 11 53) #x4010000000000000)))
                    (fp.mul roundNearestTiesToEven a!22 a!17))))
(let ((a!24 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) c_ack!3858))
                            (fp.div roundNearestTiesToEven
                                    a!23
                                    ((_ to_fp 11 53) #x4014000000000000)))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!14
                                    ((_ to_fp 11 53) #x4000000000000000))
                            (fp.div roundNearestTiesToEven
                                    a!21
                                    ((_ to_fp 11 53) #x4010000000000000))))))
(let ((a!26 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) c_ack!3858))
                            (fp.div roundNearestTiesToEven
                                    a!24
                                    ((_ to_fp 11 53) #x4018000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!25
                            (fp.div roundNearestTiesToEven
                                    a!23
                                    ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!28 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) c_ack!3858))
                            (fp.div roundNearestTiesToEven
                                    a!26
                                    ((_ to_fp 11 53) #x401c000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!27
                            (fp.div roundNearestTiesToEven
                                    a!24
                                    ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!30 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) c_ack!3858))
                            (fp.div roundNearestTiesToEven
                                    a!28
                                    ((_ to_fp 11 53) #x4020000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!29
                            (fp.div roundNearestTiesToEven
                                    a!26
                                    ((_ to_fp 11 53) #x401c000000000000))))))
(let ((a!32 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) c_ack!3858))
                            (fp.div roundNearestTiesToEven
                                    a!30
                                    ((_ to_fp 11 53) #x4022000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!31
                            (fp.div roundNearestTiesToEven
                                    a!28
                                    ((_ to_fp 11 53) #x4020000000000000))))))
(let ((a!34 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) c_ack!3858))
                            (fp.div roundNearestTiesToEven
                                    a!32
                                    ((_ to_fp 11 53) #x4024000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!33
                            (fp.div roundNearestTiesToEven
                                    a!30
                                    ((_ to_fp 11 53) #x4022000000000000))))))
(let ((a!36 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) c_ack!3858))
                            (fp.div roundNearestTiesToEven
                                    a!34
                                    ((_ to_fp 11 53) #x4026000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!35
                            (fp.div roundNearestTiesToEven
                                    a!32
                                    ((_ to_fp 11 53) #x4024000000000000))))))
(let ((a!38 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) c_ack!3858))
                            (fp.div roundNearestTiesToEven
                                    a!36
                                    ((_ to_fp 11 53) #x4028000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!37
                            (fp.div roundNearestTiesToEven
                                    a!34
                                    ((_ to_fp 11 53) #x4026000000000000))))))
(let ((a!40 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) c_ack!3858))
                            (fp.div roundNearestTiesToEven
                                    a!38
                                    ((_ to_fp 11 53) #x402a000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!39
                            (fp.div roundNearestTiesToEven
                                    a!36
                                    ((_ to_fp 11 53) #x4028000000000000))))))
(let ((a!42 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) c_ack!3858))
                            (fp.div roundNearestTiesToEven
                                    a!40
                                    ((_ to_fp 11 53) #x402c000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!41
                            (fp.div roundNearestTiesToEven
                                    a!38
                                    ((_ to_fp 11 53) #x402a000000000000))))))
  (FPCHECK_FSUB_ACCURACY
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 ((_ to_fp 11 53) c_ack!3858))
            (fp.div roundNearestTiesToEven
                    a!42
                    ((_ to_fp 11 53) #x402e000000000000)))
    (fp.mul roundNearestTiesToEven
            a!43
            (fp.div roundNearestTiesToEven
                    a!40
                    ((_ to_fp 11 53) #x402c000000000000)))))))))))))))))))))

(check-sat)
(exit)
