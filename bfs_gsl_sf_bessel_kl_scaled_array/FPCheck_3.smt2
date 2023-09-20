(declare-fun a_ack!18 () (_ BitVec 32))
(declare-fun b_ack!17 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!18 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!17) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!18))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!17) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW
  #x400921fb54442d18
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) b_ack!17))))

(check-sat)
(exit)
