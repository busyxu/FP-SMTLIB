(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun p0_ack!160 () (_ BitVec 64))
(declare-fun x0_ack!159 () (_ BitVec 64))
(declare-fun p2_ack!158 () (_ BitVec 64))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) p2_ack!158))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x0_ack!159)
          ((_ to_fp 11 53) p0_ack!160))))

(check-sat)
(exit)
