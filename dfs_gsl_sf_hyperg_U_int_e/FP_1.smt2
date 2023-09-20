(declare-fun c_ack!73 () (_ BitVec 64))
(declare-fun b_ack!72 () (_ BitVec 32))
(declare-fun a_ack!74 () (_ BitVec 32))
(assert (fp.eq ((_ to_fp 11 53) c_ack!73) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvsle #x00000001 b_ack!72)))
(assert (fp.eq ((_ to_fp 11 53) c_ack!73) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.leq (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!74))
                           ((_ to_fp 11 53) roundNearestTiesToEven b_ack!72))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.sub roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  ((_ to_fp 11 53)
                                    roundNearestTiesToEven
                                    a_ack!74))
                          ((_ to_fp 11 53) roundNearestTiesToEven b_ack!72))
                  ((_ to_fp 11 53) #x3fe0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (fp.sub roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  ((_ to_fp 11 53)
                                    roundNearestTiesToEven
                                    a_ack!74))
                          ((_ to_fp 11 53) roundNearestTiesToEven b_ack!72))
                  ((_ to_fp 11 53) #x3fe0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.leq (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!74))
                           ((_ to_fp 11 53) roundNearestTiesToEven b_ack!72))
                   ((_ to_fp 11 53) #x4065600000000000))))
  (not a!1)))

(check-sat)
(exit)
