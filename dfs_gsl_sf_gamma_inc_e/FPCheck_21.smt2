(declare-fun b_ack!74 () (_ BitVec 64))
(declare-fun a_ack!75 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!74) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!74) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!75) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!75) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!75) ((_ to_fp 11 53) #x4065600000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!75) (CF_floor a_ack!75))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!75)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!75)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!75) ((_ to_fp 11 53) #x4014000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!75) ((_ to_fp 11 53) #x4024000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!75) ((_ to_fp 11 53) #x4065600000000000)))
(assert (FPCHECK_FMUL_OVERFLOW #x3fe0000000000000 a_ack!75))

(check-sat)
(exit)
