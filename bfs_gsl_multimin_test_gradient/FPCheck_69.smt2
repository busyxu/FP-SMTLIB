(declare-fun p0_ack!342 () (_ BitVec 64))
(declare-fun x0_ack!340 () (_ BitVec 64))
(declare-fun p2_ack!339 () (_ BitVec 64))
(declare-fun p1_ack!338 () (_ BitVec 64))
(declare-fun x1_ack!341 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) p2_ack!339))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x0_ack!340)
                                  ((_ to_fp 11 53) p0_ack!342)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!339))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!340)
                                   ((_ to_fp 11 53) p0_ack!342))))))
  (fp.lt ((_ to_fp 11 53) #x0000000000000000) a!1)))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x0000000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x1_ack!341)
                                  ((_ to_fp 11 53) p1_ack!338)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not (not a!1))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!339))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!340)
                                   ((_ to_fp 11 53) p0_ack!342))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!339))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!340)
                                   ((_ to_fp 11 53) p0_ack!342))))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) p2_ack!339))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x0_ack!340)
                           ((_ to_fp 11 53) p0_ack!342)))))
  (FPCHECK_FMUL_ACCURACY a!1 a!1)))

(check-sat)
(exit)
