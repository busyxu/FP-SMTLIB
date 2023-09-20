(declare-fun p0_ack!518 () (_ BitVec 64))
(declare-fun x0_ack!515 () (_ BitVec 64))
(declare-fun p2_ack!514 () (_ BitVec 64))
(declare-fun p1_ack!513 () (_ BitVec 64))
(declare-fun x1_ack!516 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun step_size_ack!517 () (_ BitVec 64))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) p2_ack!514))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x0_ack!515)
                                  ((_ to_fp 11 53) p0_ack!518)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!514))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!515)
                                   ((_ to_fp 11 53) p0_ack!518))))))
  (fp.lt ((_ to_fp 11 53) #x0000000000000000) a!1)))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x0000000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x1_ack!516)
                                  ((_ to_fp 11 53) p1_ack!513)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not (not a!1))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!514))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!515)
                                   ((_ to_fp 11 53) p0_ack!518))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!514))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!515)
                                   ((_ to_fp 11 53) p0_ack!518))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FSUB_OVERFLOW #x8000000000000000 step_size_ack!517))

(check-sat)
(exit)
