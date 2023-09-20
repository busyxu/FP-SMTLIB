(declare-fun a_ack!142 () (_ BitVec 32))
(declare-fun b_ack!141 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!142 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!141) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!142))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!141) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!141) ((_ to_fp 11 53) #x0004000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!141))
       ((_ to_fp 11 53) #x3f20000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!141)
                                   ((_ to_fp 11 53) b_ack!141))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!141)
                                   ((_ to_fp 11 53) b_ack!141)))
                   ((_ to_fp 11 53) #x4028000000000000))))
  (FPCHECK_FDIV_OVERFLOW (fp.abs a!1) b_ack!141)))

(check-sat)
(exit)
