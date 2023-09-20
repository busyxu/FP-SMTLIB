(declare-fun a_ack!758 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!758))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!758))
                           ((_ to_fp 11 53) a_ack!758))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!758)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!758)
                                   a!1)
                           ((_ to_fp 11 53) #x4008000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven a!2 ((_ to_fp 11 53) a_ack!758))
         (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) a_ack!758) a!1)
                 ((_ to_fp 11 53) #x4008000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!758))
                           ((_ to_fp 11 53) a_ack!758))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!758)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!758)
                                   a!1)
                           ((_ to_fp 11 53) #x4008000000000000)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!758)
                                   a!1)
                           ((_ to_fp 11 53) #x4008000000000000)))))
  (fp.eq a!3 ((_ to_fp 11 53) a_ack!758))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) a_ack!758))
                   ((_ to_fp 11 53) a_ack!758))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!758)
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!758)
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.div roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000)))
                   ((_ to_fp 11 53) #x401c000000000000)))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000)))
                   (fp.div roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x4010000000000000)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!758)
                                   a!2)
                           (fp.div roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4014000000000000)))
                   a!4))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4014000000000000)))
                   ((_ to_fp 11 53) #x4026000000000000)))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4014000000000000)))
                   (fp.div roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x4018000000000000)))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!5
                           (fp.div roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x4022000000000000)))
                   a!7))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.div roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x401c000000000000)))
                    ((_ to_fp 11 53) #x402e000000000000)))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.div roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x401c000000000000)))
                    (fp.div roundNearestTiesToEven
                            a!1
                            ((_ to_fp 11 53) #x4020000000000000)))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!8
                            (fp.div roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x402a000000000000)))
                    a!10))
      (a!13 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.div roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4022000000000000)))
                    ((_ to_fp 11 53) #x4033000000000000)))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.div roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4022000000000000)))
                    (fp.div roundNearestTiesToEven
                            a!1
                            ((_ to_fp 11 53) #x4024000000000000)))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!11
                            (fp.div roundNearestTiesToEven
                                    a!12
                                    ((_ to_fp 11 53) #x4031000000000000)))
                    a!13))
      (a!16 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!15
                            (fp.div roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4026000000000000)))
                    ((_ to_fp 11 53) #x4037000000000000)))
      (a!18 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!15
                            (fp.div roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4026000000000000)))
                    (fp.div roundNearestTiesToEven
                            a!1
                            ((_ to_fp 11 53) #x4028000000000000)))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!14
                            (fp.div roundNearestTiesToEven
                                    a!15
                                    ((_ to_fp 11 53) #x4035000000000000)))
                    a!16))
      (a!19 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!18
                            (fp.div roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x402a000000000000)))
                    ((_ to_fp 11 53) #x403b000000000000)))
      (a!21 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!18
                            (fp.div roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x402a000000000000)))
                    (fp.div roundNearestTiesToEven
                            a!1
                            ((_ to_fp 11 53) #x402c000000000000)))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!17
                            (fp.div roundNearestTiesToEven
                                    a!18
                                    ((_ to_fp 11 53) #x4039000000000000)))
                    a!19))
      (a!22 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!21
                            (fp.div roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x402e000000000000)))
                    ((_ to_fp 11 53) #x403f000000000000)))
      (a!24 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!21
                            (fp.div roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x402e000000000000)))
                    (fp.div roundNearestTiesToEven
                            a!1
                            ((_ to_fp 11 53) #x4030000000000000)))))
(let ((a!23 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!20
                            (fp.div roundNearestTiesToEven
                                    a!21
                                    ((_ to_fp 11 53) #x403d000000000000)))
                    a!22))
      (a!25 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!24
                            (fp.div roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4031000000000000)))
                    ((_ to_fp 11 53) #x4041800000000000)))
      (a!27 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!24
                            (fp.div roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4031000000000000)))
                    (fp.div roundNearestTiesToEven
                            a!1
                            ((_ to_fp 11 53) #x4032000000000000)))))
(let ((a!26 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!23
                            (fp.div roundNearestTiesToEven
                                    a!24
                                    ((_ to_fp 11 53) #x4040800000000000)))
                    a!25))
      (a!28 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!27
                            (fp.div roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4033000000000000)))
                    ((_ to_fp 11 53) #x4043800000000000))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven
            a!26
            (fp.div roundNearestTiesToEven
                    a!27
                    ((_ to_fp 11 53) #x4042800000000000)))
    a!28)))))))))))))

(check-sat)
(exit)
