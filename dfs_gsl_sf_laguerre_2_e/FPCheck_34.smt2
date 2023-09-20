(declare-fun a_ack!89 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun b_ack!88 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!89) ((_ to_fp 11 53) #xc000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) a_ack!89)))
  b_ack!88))

(check-sat)
(exit)
