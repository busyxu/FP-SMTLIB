(declare-fun p0_ack!317 () (_ BitVec 64))
(declare-fun x0_ack!315 () (_ BitVec 64))
(declare-fun p2_ack!314 () (_ BitVec 64))
(declare-fun p1_ack!313 () (_ BitVec 64))
(declare-fun x1_ack!316 () (_ BitVec 64))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) p2_ack!314))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x0_ack!315)
                                  ((_ to_fp 11 53) p0_ack!317)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!314))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!315)
                                   ((_ to_fp 11 53) p0_ack!317))))))
  (fp.lt ((_ to_fp 11 53) #x0000000000000000) a!1)))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x0000000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x1_ack!316)
                                  ((_ to_fp 11 53) p1_ack!313)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not (not a!1))))

(check-sat)
(exit)
