(declare-fun a_ack!198 () (_ BitVec 64))
(declare-fun c_ack!197 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!198) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!198))
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!197)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!198)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3cb0000000000000))))

(check-sat)
(exit)
