(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!169 () (_ BitVec 64))
(declare-fun a_ack!170 () (_ BitVec 64))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x40a6c80000000000
  (fp.sub roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!170)
                  ((_ to_fp 11 53) a_ack!170))
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4008000000000000)
                  ((_ to_fp 11 53) b_ack!169)))))

(check-sat)
(exit)
