(declare-fun a_ack!800 () (_ BitVec 32))
(declare-fun b_ack!799 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!800 #x00000000)))
(assert (not (= #x00000000 a_ack!800)))
(assert (not (= #x00000001 a_ack!800)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!799) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!799))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000001 a_ack!800))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!799))
            ((_ to_fp 11 53) #x7fefffffffffffff))))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!799)
          ((_ to_fp 11 53) b_ack!799))
  #x3ff0000000000000))

(check-sat)
(exit)
