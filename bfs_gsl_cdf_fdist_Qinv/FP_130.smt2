(declare-fun x_ack!1650 () (_ BitVec 64))
(declare-fun nu1_ack!1648 () (_ BitVec 64))
(declare-fun nu2_ack!1649 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1650) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!1650) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!1648) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!1649) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!1650) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1650) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!1650) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!1649)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu1_ack!1648)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!1650) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!1650) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!1650) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1650) ((_ to_fp 11 53) #x3fb999999999999a))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu2_ack!1649)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!1649)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!1648)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
