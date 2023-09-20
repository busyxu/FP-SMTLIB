(declare-fun p0_ack!257 () (_ BitVec 64))
(declare-fun x0_ack!256 () (_ BitVec 64))
(declare-fun p2_ack!255 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) p2_ack!255))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x0_ack!256)
                                  ((_ to_fp 11 53) p0_ack!257)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!255))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!256)
                                   ((_ to_fp 11 53) p0_ack!257))))))
  (fp.lt ((_ to_fp 11 53) #x0000000000000000) a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!255))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!256)
                                   ((_ to_fp 11 53) p0_ack!257))))))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3ff0000000000000)
            (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    a!1))
    (fp.div roundNearestTiesToEven ((_ to_fp 11 53) #x0000000000000000) a!1))))

(check-sat)
(exit)
