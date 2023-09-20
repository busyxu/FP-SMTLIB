(declare-fun p0_ack!304 () (_ BitVec 64))
(declare-fun x0_ack!303 () (_ BitVec 64))
(declare-fun p2_ack!302 () (_ BitVec 64))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) p2_ack!302))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x0_ack!303)
                                  ((_ to_fp 11 53) p0_ack!304)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!302))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!303)
                                   ((_ to_fp 11 53) p0_ack!304))))))
  (not (fp.lt ((_ to_fp 11 53) #x0000000000000000) a!1))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!302))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!303)
                                   ((_ to_fp 11 53) p0_ack!304))))))
  (not (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000))))))

(check-sat)
(exit)
