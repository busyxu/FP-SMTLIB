(declare-fun b_ack!10 () (_ BitVec 32))
(declare-fun a_ack!11 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!11 b_ack!10))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!11 b_ack!10))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!11))
  #x3ff0000000000000))

(check-sat)
(exit)
