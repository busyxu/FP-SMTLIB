(declare-fun a_ack!101 () (_ BitVec 32))
(declare-fun b_ack!100 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!101 #x000003e8)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!100) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW
  #x3ff0000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven (bvmul a_ack!101 a_ack!101))))

(check-sat)
(exit)
