(declare-fun p0_ack!572 () (_ BitVec 64))
(declare-fun x0_ack!570 () (_ BitVec 64))
(declare-fun p2_ack!569 () (_ BitVec 64))
(declare-fun p1_ack!568 () (_ BitVec 64))
(declare-fun x1_ack!571 () (_ BitVec 64))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) p2_ack!569))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x0_ack!570)
                                  ((_ to_fp 11 53) p0_ack!572)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!569))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!570)
                                   ((_ to_fp 11 53) p0_ack!572))))))
  (fp.lt ((_ to_fp 11 53) #x0000000000000000) a!1)))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x0000000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x1_ack!571)
                                  ((_ to_fp 11 53) p1_ack!568)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not (not a!1))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!569))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!570)
                                   ((_ to_fp 11 53) p0_ack!572))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!569))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!570)
                                   ((_ to_fp 11 53) p0_ack!572))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))

(check-sat)
(exit)
