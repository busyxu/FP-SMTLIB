(declare-fun Q_ack!37 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) Q_ack!37) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) Q_ack!37) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq (fp.abs (fp.sub roundNearestTiesToEven
                        ((_ to_fp 11 53) Q_ack!37)
                        ((_ to_fp 11 53) #x3fe0000000000000)))
        ((_ to_fp 11 53) #x3fdb333333333333)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) Q_ack!37)
                                  ((_ to_fp 11 53) #x3fe0000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) Q_ack!37)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) Q_ack!37)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) Q_ack!37)
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) Q_ack!37)
                 ((_ to_fp 11 53) #x3fe0000000000000)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) Q_ack!37)
                                  ((_ to_fp 11 53) #x3fe0000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) Q_ack!37)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) Q_ack!37)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) Q_ack!37)
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) Q_ack!37)
                 ((_ to_fp 11 53) #x3fe0000000000000)))))

(check-sat)
(exit)
