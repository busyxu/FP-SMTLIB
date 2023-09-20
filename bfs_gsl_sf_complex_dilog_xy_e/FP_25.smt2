(declare-fun b_ack!361 () (_ BitVec 64))
(declare-fun a_ack!362 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!361) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!362)
                                   ((_ to_fp 11 53) a_ack!362))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!361)
                                   ((_ to_fp 11 53) b_ack!361)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3cb0000000000000))))

(check-sat)
(exit)
