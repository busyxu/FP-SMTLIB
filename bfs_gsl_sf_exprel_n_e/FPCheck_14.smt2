(declare-fun a_ack!60 () (_ BitVec 32))
(declare-fun b_ack!59 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!60 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!59) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!59))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ed965fea53d6e41)
               ((_ to_fp 11 53) roundNearestTiesToEven a_ack!60))))
(assert (FPCHECK_FDIV_INVALID
  b_ack!59
  ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x00000002 a_ack!60))))

(check-sat)
(exit)
