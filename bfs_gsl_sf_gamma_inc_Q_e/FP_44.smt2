(declare-fun a_ack!1044 () (_ BitVec 64))
(declare-fun b_ack!1043 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1044) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1043) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1043) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1044) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!1043)
        (fp.mul roundNearestTiesToEven
                ((_ to_fp 11 53) #x3fe0000000000000)
                ((_ to_fp 11 53) a_ack!1044))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1044) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1043)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!1044)))))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1043)
                                   ((_ to_fp 11 53) a_ack!1044))
                           ((_ to_fp 11 53) a_ack!1044))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1043)
                                   ((_ to_fp 11 53) a_ack!1044))
                           ((_ to_fp 11 53) a_ack!1044)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f48406003b2ae5a)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1043)
                                   ((_ to_fp 11 53) a_ack!1044))
                           ((_ to_fp 11 53) a_ack!1044)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3fe0000000000000))))

(check-sat)
(exit)
