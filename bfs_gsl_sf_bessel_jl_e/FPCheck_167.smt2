(declare-fun a_ack!604 () (_ BitVec 32))
(declare-fun b_ack!603 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!604 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!603) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!603) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!604)))
(assert (not (= #x00000001 a_ack!604)))
(assert (not (= #x00000002 a_ack!604)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4024000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!604)
                  ((_ to_fp 11 53) #x3fe0000000000000)))
  #x4005bf0a8b145769))

(check-sat)
(exit)
