(declare-fun b_ack!1419 () (_ BitVec 32))
(declare-fun a_ack!1421 () (_ BitVec 32))
(declare-fun c_ack!1420 () (_ BitVec 64))
(assert (not (bvslt b_ack!1419 #x00000000)))
(assert (not (bvslt a_ack!1421 b_ack!1419)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1420) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1420) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 b_ack!1419)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1420) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1420) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (let ((a!1 (fp.leq (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) c_ack!1420))
                           ((_ to_fp 11 53) c_ack!1420))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) c_ack!1420))
                           ((_ to_fp 11 53) c_ack!1420)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f6428a2f98d728d)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) c_ack!1420))
                           ((_ to_fp 11 53) c_ack!1420)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3fe0000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1419)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq (fp.add roundNearestTiesToEven
                ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1419)
                ((_ to_fp 11 53) #x3fe0000000000000))
        ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
