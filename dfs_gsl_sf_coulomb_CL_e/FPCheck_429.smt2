(declare-fun a_ack!1483 () (_ BitVec 64))
(declare-fun b_ack!1482 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1483) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!1483))
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1482)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1483)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3cb0000000000000)))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!1483)
                     ((_ to_fp 11 53) #x3ff0000000000000))
             ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1483)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) b_ack!1482)
                         ((_ to_fp 11 53) b_ack!1482)))
         ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
