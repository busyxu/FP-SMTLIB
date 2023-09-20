(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun p0_ack!37 () (_ BitVec 64))
(declare-fun x0_ack!36 () (_ BitVec 64))
(declare-fun p2_ack!35 () (_ BitVec 64))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) p2_ack!35)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x0_ack!36)
                  ((_ to_fp 11 53) p0_ack!37)))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x0_ack!36)
          ((_ to_fp 11 53) p0_ack!37))))

(check-sat)
(exit)
