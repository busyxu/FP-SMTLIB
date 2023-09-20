(declare-fun b_ack!88 () (_ BitVec 32))
(declare-fun a_ack!89 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!89 b_ack!88))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3fe0000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!89 b_ack!88))))

(check-sat)
(exit)
