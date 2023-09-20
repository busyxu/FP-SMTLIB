(declare-fun p0_ack!503 () (_ BitVec 64))
(declare-fun x0_ack!500 () (_ BitVec 64))
(declare-fun p2_ack!499 () (_ BitVec 64))
(declare-fun p1_ack!498 () (_ BitVec 64))
(declare-fun x1_ack!501 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun step_size_ack!502 () (_ BitVec 64))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) p2_ack!499))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x0_ack!500)
                                  ((_ to_fp 11 53) p0_ack!503)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!499))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!500)
                                   ((_ to_fp 11 53) p0_ack!503))))))
  (fp.lt ((_ to_fp 11 53) #x0000000000000000) a!1)))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x0000000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x1_ack!501)
                                  ((_ to_fp 11 53) p1_ack!498)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not (not a!1))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!499))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!500)
                                   ((_ to_fp 11 53) p0_ack!503))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!499))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!500)
                                   ((_ to_fp 11 53) p0_ack!503))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FSUB_OVERFLOW #x8000000000000000 step_size_ack!502))

(check-sat)
(exit)
