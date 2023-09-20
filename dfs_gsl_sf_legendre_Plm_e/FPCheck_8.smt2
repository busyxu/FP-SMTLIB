(declare-fun b_ack!28 () (_ BitVec 32))
(declare-fun a_ack!29 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!29 b_ack!28))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3fe0000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!29 b_ack!28))))

(check-sat)
(exit)
