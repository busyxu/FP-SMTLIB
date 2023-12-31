(declare-fun a_ack!8 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!8) ((_ to_fp 11 53) #x4059000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!8)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f7e5078049f59f0))))
  (not a!1)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!8) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!8) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!8) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW #x4000000000000000 a_ack!8))

(check-sat)
(exit)
