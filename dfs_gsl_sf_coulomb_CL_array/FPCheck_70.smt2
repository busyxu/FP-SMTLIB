(declare-fun a_ack!237 () (_ BitVec 64))
(declare-fun c_ack!236 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!237) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!237))
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!236)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!237)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!237)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!237)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b))))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!237)
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x4000000000000000))

(check-sat)
(exit)
