(declare-fun x_ack!369 () (_ BitVec 64))
(declare-fun nu1_ack!367 () (_ BitVec 64))
(declare-fun nu2_ack!368 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!369) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!369) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!367) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!368) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!369) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!369) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!369) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!369) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!369) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!368) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!367) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!369) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!369) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!369) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (let ((a!1 (and (fp.eq ((_ to_fp 11 53) nu2_ack!368)
                       ((_ to_fp 11 53) #x0000000000000000))
                (fp.eq (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) nu2_ack!368)
                               ((_ to_fp 11 53) nu1_ack!367))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!369) ((_ to_fp 11 53) #x3fb999999999999a))))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu2_ack!368)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!368)
                                   ((_ to_fp 11 53) nu1_ack!367)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.geq (fp.div roundNearestTiesToEven
                ((_ to_fp 11 53) nu2_ack!368)
                (fp.add roundNearestTiesToEven
                        ((_ to_fp 11 53) nu2_ack!368)
                        ((_ to_fp 11 53) nu1_ack!367)))
        ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FSUB_OVERFLOW #x3ff0000000000000 x_ack!369))

(check-sat)
(exit)
