(declare-fun p0_ack!296 () (_ BitVec 64))
(declare-fun x0_ack!294 () (_ BitVec 64))
(declare-fun p2_ack!293 () (_ BitVec 64))
(declare-fun p1_ack!292 () (_ BitVec 64))
(declare-fun x1_ack!295 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) p2_ack!293))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x0_ack!294)
                                  ((_ to_fp 11 53) p0_ack!296)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!293))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!294)
                                   ((_ to_fp 11 53) p0_ack!296))))))
  (fp.lt ((_ to_fp 11 53) #x0000000000000000) a!1)))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x0000000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x1_ack!295)
                                  ((_ to_fp 11 53) p1_ack!292)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not (not a!1))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!293))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!294)
                                   ((_ to_fp 11 53) p0_ack!296))))))
  (FPCHECK_FMUL_ACCURACY a!1 #x3ff0000000000000)))

(check-sat)
(exit)
