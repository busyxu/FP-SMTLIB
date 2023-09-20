(declare-fun x_ack!13 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun a_ack!12 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!13) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!13) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!13) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  a_ack!12
  (CF_log (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) x_ack!13)))))

(check-sat)
(exit)
