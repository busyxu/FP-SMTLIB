(declare-fun b_ack!147 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun a_ack!148 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!147) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!147) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!147) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!148)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!147)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))))))
  (FPCHECK_FMUL_OVERFLOW #x3cc0000000000000 (fp.abs a!1))))

(check-sat)
(exit)
