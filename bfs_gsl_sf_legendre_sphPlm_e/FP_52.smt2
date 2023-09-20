(declare-fun b_ack!1326 () (_ BitVec 32))
(declare-fun a_ack!1328 () (_ BitVec 32))
(declare-fun c_ack!1327 () (_ BitVec 64))
(assert (not (bvslt b_ack!1326 #x00000000)))
(assert (not (bvslt a_ack!1328 b_ack!1326)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1327) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1327) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 b_ack!1326)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1327) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1327) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (let ((a!1 (fp.leq (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) c_ack!1327))
                           ((_ to_fp 11 53) c_ack!1327))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) c_ack!1327))
                           ((_ to_fp 11 53) c_ack!1327)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3f6428a2f98d728d))))
(assert (not (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1326)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1326)
                     ((_ to_fp 11 53) #x3fe0000000000000))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) #x3fe0000000000000)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1326))))
(assert (fp.lt ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1326)
       ((_ to_fp 11 53) #x4065600000000000)))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) roundNearestTiesToEven b_ack!1326)
                    ((_ to_fp 11 53) #x3fe0000000000000))
            ((_ to_fp 11 53) #x4065600000000000))))

(check-sat)
(exit)
