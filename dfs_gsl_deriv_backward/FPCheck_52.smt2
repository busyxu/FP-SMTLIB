(declare-fun h_ack!196 () (_ BitVec 64))
(declare-fun x_ack!197 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!197)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!196))
                           ((_ to_fp 11 53) #x4010000000000000)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.eq (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) x_ack!197)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) h_ack!196)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!197)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!196))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!197)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!196))
                           ((_ to_fp 11 53) #x4010000000000000)))))
  (FPCHECK_FMUL_ACCURACY
    #x4031555555555555
    (fp.sub roundNearestTiesToEven
            (CF_pow a!1 #x3ff8000000000000)
            (CF_pow a!2 #x3ff8000000000000)))))

(check-sat)
(exit)
