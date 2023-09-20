(declare-fun b_ack!88 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun a_ack!89 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!88) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!88) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!88) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!89)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!88)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f20000000000000)))))

(check-sat)
(exit)
