(declare-fun a_ack!34 () (_ BitVec 32))
(declare-fun b_ack!33 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!34 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!33) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!33))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ed965fea53d6e41)
               ((_ to_fp 11 53) roundNearestTiesToEven a_ack!34))))
(assert (FPCHECK_FDIV_UNDERFLOW
  b_ack!33
  ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x00000001 a_ack!34))))

(check-sat)
(exit)
