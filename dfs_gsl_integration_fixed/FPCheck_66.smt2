(declare-fun b_ack!185 () (_ BitVec 64))
(declare-fun alpha_ack!186 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!185) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) alpha_ack!186)
             ((_ to_fp 11 53) #xbff0000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fe0000000000000)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) alpha_ack!186)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3fe0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fe0000000000000)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) alpha_ack!186)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3fe0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.leq (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) alpha_ack!186)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x4065600000000000))))
  (not a!1)))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) alpha_ack!186)
                  ((_ to_fp 11 53) #x3ff0000000000000)))
  #x3ff0000000000000))

(check-sat)
(exit)
