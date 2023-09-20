(declare-fun a_ack!808 () (_ BitVec 32))
(declare-fun b_ack!807 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!808 #x00000000)))
(assert (not (= #x00000000 a_ack!808)))
(assert (not (= #x00000001 a_ack!808)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!807) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!807))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000001 a_ack!808))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!807))
            ((_ to_fp 11 53) #x7fefffffffffffff))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) b_ack!807))
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!807))
          ((_ to_fp 11 53) #x3cb0000000000000))))

(check-sat)
(exit)
