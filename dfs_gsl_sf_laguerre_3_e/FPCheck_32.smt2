(declare-fun a_ack!119 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!118 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) a_ack!119) ((_ to_fp 11 53) #xc000000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!118)
                  ((_ to_fp 11 53) b_ack!118))
          ((_ to_fp 11 53) #x4018000000000000))
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x4008000000000000)
          (fp.abs ((_ to_fp 11 53) b_ack!118)))))

(check-sat)
(exit)
