(declare-fun p0_ack!442 () (_ BitVec 64))
(declare-fun x0_ack!440 () (_ BitVec 64))
(declare-fun p2_ack!439 () (_ BitVec 64))
(declare-fun p1_ack!438 () (_ BitVec 64))
(declare-fun x1_ack!441 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) p2_ack!439))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x0_ack!440)
                                  ((_ to_fp 11 53) p0_ack!442)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!439))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!440)
                                   ((_ to_fp 11 53) p0_ack!442))))))
  (fp.lt ((_ to_fp 11 53) #x0000000000000000) a!1)))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x0000000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x1_ack!441)
                                  ((_ to_fp 11 53) p1_ack!438)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not (not a!1))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!439))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!440)
                                   ((_ to_fp 11 53) p0_ack!442))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!439))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!440)
                                   ((_ to_fp 11 53) p0_ack!442))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!439))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!440)
                           ((_ to_fp 11 53) p0_ack!442))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!441)
                           ((_ to_fp 11 53) p1_ack!438)))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) #x0000000000000000)
            (fp.mul roundNearestTiesToEven a!1 a!1))
    (fp.mul roundNearestTiesToEven a!2 a!2))))

(check-sat)
(exit)
