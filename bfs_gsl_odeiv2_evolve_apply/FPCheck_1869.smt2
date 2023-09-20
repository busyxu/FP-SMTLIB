(declare-fun t_ack!10837 () (_ BitVec 64))
(declare-fun t1_ack!10838 () (_ BitVec 64))
(declare-fun h_ack!10841 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y1_ack!10840 () (_ BitVec 64))
(declare-fun y0_ack!10839 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10838)
                    ((_ to_fp 11 53) t_ack!10837))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10838)
                    ((_ to_fp 11 53) t_ack!10837))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!10838)
                ((_ to_fp 11 53) t_ack!10837))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!10841)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10838)
                    ((_ to_fp 11 53) t_ack!10837)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10838)
                    ((_ to_fp 11 53) t_ack!10837))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!10840))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!10839)
                                   ((_ to_fp 11 53) y0_ack!10839))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!10839)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                                   ((_ to_fp 11 53) h_ack!10841))
                           ((_ to_fp 11 53) y1_ack!10840)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fa887ad701404ac)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!10839))
                           a!1)))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f95555555555555)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!10839))
                           a!1)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           ((_ to_fp 11 53) h_ack!10841))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!10839))
                           a!1)))
      (a!10 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fa0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!10839))
                            a!1)))
      (a!21 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fd4000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!10839))
                            a!1)))
      (a!30 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fa3333333333333)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!10839))
                            a!1))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!10840)
                                   a!5))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!4 a!4)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3f95555555555555)
                            ((_ to_fp 11 53) y1_ack!10840))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!10840)
                                    a!5)))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fb0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!4)
                           a!6)))
      (a!12 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!10839)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!10841)
                                    a!11))))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!10839)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!10841)
                                    a!11))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!10839)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!10841)
                                    a!11)))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y1_ack!10840)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) h_ack!10841)
                           (fp.add roundNearestTiesToEven a!3 a!7)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) h_ack!10841)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fa0000000000000)
                                   ((_ to_fp 11 53) y1_ack!10840))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fb8000000000000)
                                   a!8))))
      (a!14 (fp.sub roundNearestTiesToEven
                    a!12
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!8)
                            (fp.sub roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) h_ack!10841)
                    (fp.add roundNearestTiesToEven
                            a!10
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fb8000000000000)
                                    a!14))))
      (a!16 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!10839)
                                    a!9)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!10839)
                                    a!9))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!10840)
                                    a!15))
                    a!16))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd4000000000000)
                                    ((_ to_fp 11 53) y1_ack!10840))
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbff2c00000000000)
                                    a!8))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff2c00000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!10840)
                                    a!15))))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fa3333333333333)
                            ((_ to_fp 11 53) y1_ack!10840))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc8000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!10840)
                                    a!15)))))
(let ((a!18 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!10839)
                                    a!9))
                    a!17))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!10839)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!10841)
                                    a!19))))
      (a!24 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!10839)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!10841)
                                    a!19))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!10839)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!10841)
                                    a!19)))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!21
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbff2c00000000000)
                                    a!14))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff2c00000000000)
                            a!18))))
(let ((a!23 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!10840)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!10841)
                                    a!22))))
      (a!28 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc3333333333333)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!10840)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!10841)
                                    a!22)))))
(let ((a!25 (fp.sub roundNearestTiesToEven
                    a!20
                    (fp.mul roundNearestTiesToEven
                            a!23
                            (fp.sub roundNearestTiesToEven
                                    a!24
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!29 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!10839)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) h_ack!10841)
                            (fp.add roundNearestTiesToEven a!27 a!28)))))
(let ((a!26 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!2
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fbcbc54e6660e1d)
                                    a!18))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbf9a1e28caf3b65c)
                            a!25)))
      (a!31 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!30
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fc8000000000000)
                                    a!18))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc3333333333333)
                            a!25))))
(let ((a!32 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!10840)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!10841)
                                    a!31)))))
(let ((a!33 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            a!29)
                    (fp.mul roundNearestTiesToEven
                            a!32
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!29 a!29)
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!34 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) h_ack!10841)
                    (fp.add roundNearestTiesToEven
                            a!26
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3f8a4f6f83ae9731)
                                    a!33)))))
  (FPCHECK_FMUL_ACCURACY
    #x4024000000000000
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y1_ack!10840) a!34)))))))))))))))))))

(check-sat)
(exit)
