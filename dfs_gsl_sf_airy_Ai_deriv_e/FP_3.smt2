(declare-fun a_ack!27 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!27) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!27) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!27)
                                  ((_ to_fp 11 53) a_ack!27))
                          ((_ to_fp 11 53) a_ack!27))
                  ((_ to_fp 11 53) #x41313a9357d08d7f))))
  (not a!1)))

(check-sat)
(exit)
