(declare-fun p0_ack!524 () (_ BitVec 64))
(declare-fun x0_ack!521 () (_ BitVec 64))
(declare-fun p2_ack!520 () (_ BitVec 64))
(declare-fun p1_ack!519 () (_ BitVec 64))
(declare-fun x1_ack!522 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun step_size_ack!523 () (_ BitVec 64))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) p2_ack!520))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x0_ack!521)
                                  ((_ to_fp 11 53) p0_ack!524)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!520))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!521)
                                   ((_ to_fp 11 53) p0_ack!524))))))
  (fp.lt ((_ to_fp 11 53) #x0000000000000000) a!1)))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x0000000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x1_ack!522)
                                  ((_ to_fp 11 53) p1_ack!519)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not (not a!1))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!520))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!521)
                                   ((_ to_fp 11 53) p0_ack!524))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!520))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!521)
                                   ((_ to_fp 11 53) p0_ack!524))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FSUB_UNDERFLOW #x8000000000000000 step_size_ack!523))

(check-sat)
(exit)
