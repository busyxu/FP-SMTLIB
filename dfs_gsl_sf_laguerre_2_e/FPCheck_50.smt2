(declare-fun a_ack!144 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun b_ack!143 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!144) ((_ to_fp 11 53) #xc000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) a_ack!144)))
  b_ack!143))

(check-sat)
(exit)
