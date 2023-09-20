(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun p0_ack!49 () (_ BitVec 64))
(declare-fun x0_ack!48 () (_ BitVec 64))
(declare-fun p2_ack!47 () (_ BitVec 64))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) p2_ack!47)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x0_ack!48)
                  ((_ to_fp 11 53) p0_ack!49)))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x0_ack!48)
          ((_ to_fp 11 53) p0_ack!49))))

(check-sat)
(exit)
