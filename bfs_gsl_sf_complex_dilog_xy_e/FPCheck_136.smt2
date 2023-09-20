(declare-fun b_ack!419 () (_ BitVec 64))
(declare-fun a_ack!420 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!419) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!420)
                                   ((_ to_fp 11 53) a_ack!420))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!419)
                                   ((_ to_fp 11 53) b_ack!419)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3cb0000000000000)))))
(assert (let ((a!1 (fp.lt (fp.add roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!420)
                                  ((_ to_fp 11 53) a_ack!420))
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!419)
                                  ((_ to_fp 11 53) b_ack!419)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!420)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!420)
                                   ((_ to_fp 11 53) a_ack!420))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!419)
                                   ((_ to_fp 11 53) b_ack!419))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x3fe76c8b43958106)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!420)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!420)
                                   ((_ to_fp 11 53) a_ack!420))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!419)
                                   ((_ to_fp 11 53) b_ack!419))))))
  (FPCHECK_FDIV_ACCURACY a!1 #x7ff8000000000001)))

(check-sat)
(exit)
