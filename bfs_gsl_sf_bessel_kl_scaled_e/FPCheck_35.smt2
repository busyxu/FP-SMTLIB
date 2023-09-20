(declare-fun a_ack!158 () (_ BitVec 32))
(declare-fun b_ack!157 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!158 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!157) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!158)))
(assert (not (= #x00000001 a_ack!158)))
(assert (= #x00000002 a_ack!158))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!157) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!157) ((_ to_fp 11 53) #x2aa965fea53d6e98))))
(assert (FPCHECK_FDIV_ACCURACY
  #x400921fb54442d18
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) b_ack!157))))

(check-sat)
(exit)
