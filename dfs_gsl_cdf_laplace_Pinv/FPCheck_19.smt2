(declare-fun x_ack!55 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun a_ack!54 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!55) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!55) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!55) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  a_ack!54
  (CF_log (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) x_ack!55)))))

(check-sat)
(exit)
