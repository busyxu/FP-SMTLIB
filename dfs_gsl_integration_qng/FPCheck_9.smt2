(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun a_ack!31 () (_ BitVec 64))
(declare-fun b_ack!30 () (_ BitVec 64))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3fe0000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!30)
          ((_ to_fp 11 53) a_ack!31))))

(check-sat)
(exit)
