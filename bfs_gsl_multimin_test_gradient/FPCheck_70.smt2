(declare-fun p0_ack!367 () (_ BitVec 64))
(declare-fun x0_ack!365 () (_ BitVec 64))
(declare-fun p2_ack!364 () (_ BitVec 64))
(declare-fun p1_ack!363 () (_ BitVec 64))
(declare-fun x1_ack!366 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) p2_ack!364))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x0_ack!365)
                                  ((_ to_fp 11 53) p0_ack!367)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!364))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!365)
                                   ((_ to_fp 11 53) p0_ack!367))))))
  (fp.lt ((_ to_fp 11 53) #x0000000000000000) a!1)))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x0000000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x1_ack!366)
                                  ((_ to_fp 11 53) p1_ack!363)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not (not a!1))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!364))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!365)
                                   ((_ to_fp 11 53) p0_ack!367))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!364))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!365)
                                   ((_ to_fp 11 53) p0_ack!367))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!364))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!365)
                           ((_ to_fp 11 53) p0_ack!367)))))
  (FPCHECK_FADD_OVERFLOW
    #x0000000000000000
    (fp.mul roundNearestTiesToEven a!1 a!1))))

(check-sat)
(exit)
