(declare-fun t_ack!13010 () (_ BitVec 64))
(declare-fun t1_ack!13011 () (_ BitVec 64))
(declare-fun h_ack!13014 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!13013 () (_ BitVec 64))
(declare-fun y0_ack!13012 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!13011)
                    ((_ to_fp 11 53) t_ack!13010))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!13011)
                    ((_ to_fp 11 53) t_ack!13010))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!13011)
                ((_ to_fp 11 53) t_ack!13010))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!13014)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!13011)
                    ((_ to_fp 11 53) t_ack!13010)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!13011)
                    ((_ to_fp 11 53) t_ack!13010))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!13013))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!13012)
                                   ((_ to_fp 11 53) y0_ack!13012))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!13012)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                                   ((_ to_fp 11 53) h_ack!13014))
                           ((_ to_fp 11 53) y1_ack!13013)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fa0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!13012))
                           a!1)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           ((_ to_fp 11 53) h_ack!13014))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!13012))
                           a!1)))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f95555555555555)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!13012))
                           a!1)))
      (a!15 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fd4000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!13012))
                            a!1))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f95555555555555)
                           ((_ to_fp 11 53) y1_ack!13013))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!13013)
                                   a!3))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!13013)
                                   a!3))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!7 a!7)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!13012)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!13014)
                                   a!4))))
      (a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fb0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!7)
                           a!8)))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!13012)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!13014)
                                    a!4))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y0_ack!13012)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!13014)
                                    a!4)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!13013)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) h_ack!13014)
                            (fp.add roundNearestTiesToEven a!6 a!9)))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    a!5
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    a!10)
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!16 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) h_ack!13014)
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fa0000000000000)
                                    ((_ to_fp 11 53) y1_ack!13013))
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fb8000000000000)
                                    a!10)))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) h_ack!13014)
                    (fp.add roundNearestTiesToEven
                            a!2
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fb8000000000000)
                                    a!12))))
      (a!17 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!13012)
                                    a!16)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!13012)
                                    a!16))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc77ecbb1301621)
                            ((_ to_fp 11 53) y1_ack!13013))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xc003c0097b3c5a32)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!13013)
                                    a!13))))
      (a!18 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!13013)
                                    a!13))
                    a!17)))
(let ((a!19 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y0_ack!13012)
                                    a!16))
                    a!18)))
(let ((a!20 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!15
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbff2c00000000000)
                                    a!12))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff2c00000000000)
                            a!19))))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbfd2a471c23b2d29)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) y1_ack!13013)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) h_ack!13014)
                                    a!20)))))
  (FPCHECK_FADD_ACCURACY a!14 a!21)))))))))))))

(check-sat)
(exit)
