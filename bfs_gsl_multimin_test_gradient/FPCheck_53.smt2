(declare-fun p0_ack!236 () (_ BitVec 64))
(declare-fun x0_ack!235 () (_ BitVec 64))
(declare-fun p2_ack!234 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) p2_ack!234))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x0_ack!235)
                                  ((_ to_fp 11 53) p0_ack!236)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!234))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!235)
                                   ((_ to_fp 11 53) p0_ack!236))))))
  (fp.lt ((_ to_fp 11 53) #x0000000000000000) a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!234))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!235)
                                   ((_ to_fp 11 53) p0_ack!236))))))
  (FPCHECK_FDIV_OVERFLOW #x0000000000000000 a!1)))

(check-sat)
(exit)
