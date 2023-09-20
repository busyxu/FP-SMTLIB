(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun b_ack!36 () (_ BitVec 64))
(declare-fun a_ack!37 () (_ BitVec 64))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!37)
                  (CF_cos b_ack!36))
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!37)
                  (CF_cos b_ack!36)))
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!37)
                  (CF_sin b_ack!36))
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!37)
                  (CF_sin b_ack!36)))))

(check-sat)
(exit)
