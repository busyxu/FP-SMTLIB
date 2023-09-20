(declare-fun p0_ack!352 () (_ BitVec 64))
(declare-fun x0_ack!350 () (_ BitVec 64))
(declare-fun p2_ack!349 () (_ BitVec 64))
(declare-fun p1_ack!348 () (_ BitVec 64))
(declare-fun x1_ack!351 () (_ BitVec 64))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) p2_ack!349))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x0_ack!350)
                                  ((_ to_fp 11 53) p0_ack!352)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!349))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!350)
                                   ((_ to_fp 11 53) p0_ack!352))))))
  (fp.lt ((_ to_fp 11 53) #x0000000000000000) a!1)))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x0000000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x1_ack!351)
                                  ((_ to_fp 11 53) p1_ack!348)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))

(check-sat)
(exit)
