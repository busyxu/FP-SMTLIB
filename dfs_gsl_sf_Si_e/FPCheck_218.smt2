(declare-fun a_ack!309 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!309))
            ((_ to_fp 11 53) #x3e50000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!309))
             ((_ to_fp 11 53) #x4010000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!309))
        ((_ to_fp 11 53) #x401c48c6001f1ea6)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!309))
                           (fp.abs ((_ to_fp 11 53) a_ack!309))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fa51eb851eb851f))
                           ((_ to_fp 11 53) #x3f95c28f5c28f5c3)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #xbff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!4 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x0000000000000000)))))
  (FPCHECK_FADD_OVERFLOW
    #x0000000000000000
    (fp.add roundNearestTiesToEven
            (fp.add roundNearestTiesToEven
                    a!4
                    ((_ to_fp 11 53) #x0000000000000000))
            ((_ to_fp 11 53) #x3c804195e0e7b209))))))))

(check-sat)
(exit)
