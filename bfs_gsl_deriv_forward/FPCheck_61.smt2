(declare-fun h_ack!238 () (_ BitVec 64))
(declare-fun x_ack!239 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(assert (let ((a!1 (fp.eq (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) x_ack!239)
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) h_ack!238)
                                  ((_ to_fp 11 53) #x4010000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!239)
                                   ((_ to_fp 11 53) h_ack!238))
                           #x3ff8000000000000)))
      (a!2 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!239)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   ((_ to_fp 11 53) h_ack!238)))
                   #x3ff8000000000000))
      (a!3 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!239)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!238)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000))
      (a!4 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!239)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!238)
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   #x3ff8000000000000)))
  (FPCHECK_FADD_UNDERFLOW
    (fp.add roundNearestTiesToEven
            (fp.add roundNearestTiesToEven a!1 (fp.abs a!2))
            (fp.abs a!3))
    (fp.abs a!4))))

(check-sat)
(exit)
