(declare-fun x_ack!34 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.eq (fp.add roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) x_ack!34))
                          ((_ to_fp 11 53) #x0000000000000000))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_ack!34))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) x_ack!34))))
  (FPCHECK_FDIV_INVALID
    (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) #xc014000000000000))
    (fp.add roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    ((_ to_fp 11 53) x_ack!34))
            ((_ to_fp 11 53) #x0000000000000000)))))

(check-sat)
(exit)
