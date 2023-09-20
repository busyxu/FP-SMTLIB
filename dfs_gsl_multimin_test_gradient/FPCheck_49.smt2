(declare-fun p0_ack!227 () (_ BitVec 64))
(declare-fun x0_ack!226 () (_ BitVec 64))
(declare-fun p2_ack!225 () (_ BitVec 64))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) p2_ack!225))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x0_ack!226)
                                  ((_ to_fp 11 53) p0_ack!227)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!225))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!226)
                                   ((_ to_fp 11 53) p0_ack!227))))))
  (fp.lt ((_ to_fp 11 53) #x0000000000000000) a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!225))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!226)
                                   ((_ to_fp 11 53) p0_ack!227))))))
  (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
