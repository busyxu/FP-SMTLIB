(declare-fun a_ack!16 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun b_ack!15 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!16) ((_ to_fp 11 53) #xc000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) a_ack!16) ((_ to_fp 11 53) #xc008000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          ((_ to_fp 11 53) b_ack!15))
  b_ack!15))

(check-sat)
(exit)
