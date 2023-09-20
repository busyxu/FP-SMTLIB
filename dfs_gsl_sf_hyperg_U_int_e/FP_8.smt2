(declare-fun c_ack!112 () (_ BitVec 64))
(declare-fun b_ack!111 () (_ BitVec 32))
(declare-fun a_ack!113 () (_ BitVec 32))
(assert (fp.eq ((_ to_fp 11 53) c_ack!112) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvsle #x00000001 b_ack!111)))
(assert (fp.eq ((_ to_fp 11 53) c_ack!112) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.leq (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!113))
                           ((_ to_fp 11 53) roundNearestTiesToEven b_ack!111))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) roundNearestTiesToEven a_ack!113))
               ((_ to_fp 11 53) roundNearestTiesToEven b_ack!111))
       ((_ to_fp 11 53) #x3fe0000000000000)))

(check-sat)
(exit)
