(declare-fun a_ack!210 () (_ BitVec 32))
(declare-fun CF_pow
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!210 #x00000000)))
(assert (not (= #x00000001 a_ack!210)))
(assert (not (bvsle a_ack!210 #x00000064)))
(assert (not (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!210)
             ((_ to_fp 11 53) #x4014000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!210)
            ((_ to_fp 11 53) #x402e000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_pow #x4000000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!210)))
                   (CF_pow #x4008000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!210))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (CF_pow #x4000000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!210))))))
  (fp.eq a!2
         (CF_pow #x4008000000000000
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x8000000000000000)
                         ((_ to_fp 11 53) roundNearestTiesToEven a_ack!210)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_pow #x4000000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!210)))
                   (CF_pow #x4008000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!210))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (CF_pow #x4008000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!210))))))
  (fp.eq a!2
         (CF_pow #x4000000000000000
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x8000000000000000)
                         ((_ to_fp 11 53) roundNearestTiesToEven a_ack!210)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_pow #x4000000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!210)))
                   (CF_pow #x4008000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!210)))))
      (a!6 (fp.add roundNearestTiesToEven
                   (CF_pow #x4008000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!210)))
                   (CF_pow #x4014000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!210)))))
      (a!11 (fp.add roundNearestTiesToEven
                    (CF_pow #x4014000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      a_ack!210)))
                    (CF_pow #x401c000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      a_ack!210)))))
      (a!15 (fp.add roundNearestTiesToEven
                    (CF_pow #x401c000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      a_ack!210)))
                    (CF_pow #x4026000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      a_ack!210)))))
      (a!18 (fp.add roundNearestTiesToEven
                    (CF_pow #x4026000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      a_ack!210)))
                    (CF_pow #x402a000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      a_ack!210)))))
      (a!20 (fp.mul roundNearestTiesToEven
                    (CF_pow #x4026000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      a_ack!210)))
                    (CF_pow #x402a000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      a_ack!210)))))
      (a!22 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (CF_pow #x4000000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      a_ack!210)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (CF_pow #x4008000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      a_ack!210)))))
      (a!24 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (CF_pow #x4014000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      a_ack!210)))))
      (a!25 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (CF_pow #x401c000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      a_ack!210)))))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (CF_pow #x4026000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      a_ack!210)))))
      (a!28 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (CF_pow #x402a000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      a_ack!210))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (CF_pow #x4014000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!210)))))
      (a!7 (fp.add roundNearestTiesToEven
                   a!6
                   (CF_pow #x401c000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!210)))))
      (a!12 (fp.add roundNearestTiesToEven
                    a!11
                    (CF_pow #x4026000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      a_ack!210)))))
      (a!16 (fp.add roundNearestTiesToEven
                    a!15
                    (CF_pow #x402a000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      a_ack!210)))))
      (a!19 (fp.mul roundNearestTiesToEven
                    (CF_pow #x401c000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      a_ack!210)))
                    a!18))
      (a!27 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!22 a!23)
                                    a!24)
                            a!25)
                    a!26)))
(let ((a!3 (fp.add roundNearestTiesToEven
                   a!2
                   (CF_pow #x401c000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!210)))))
      (a!8 (fp.add roundNearestTiesToEven
                   a!7
                   (CF_pow #x4026000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!210)))))
      (a!13 (fp.add roundNearestTiesToEven
                    a!12
                    (CF_pow #x402a000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      a_ack!210)))))
      (a!17 (fp.mul roundNearestTiesToEven
                    (CF_pow #x4014000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      a_ack!210)))
                    a!16)))
(let ((a!4 (fp.add roundNearestTiesToEven
                   a!3
                   (CF_pow #x4026000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!210)))))
      (a!9 (fp.add roundNearestTiesToEven
                   a!8
                   (CF_pow #x402a000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!210)))))
      (a!14 (fp.mul roundNearestTiesToEven
                    (CF_pow #x4008000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      a_ack!210)))
                    a!13)))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!4
                   (CF_pow #x402a000000000000
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!210)))))
      (a!10 (fp.mul roundNearestTiesToEven
                    (CF_pow #x4000000000000000
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      a_ack!210)))
                    a!9)))
(let ((a!21 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!10 a!14)
                                    a!17)
                            a!19)
                    a!20)))
  (FPCHECK_FMUL_OVERFLOW
    (fp.sub roundNearestTiesToEven a!5 a!21)
    (fp.div roundNearestTiesToEven
            ((_ to_fp 11 53) #x3ff0000000000000)
            (fp.mul roundNearestTiesToEven a!27 a!28))))))))))

(check-sat)
(exit)
