(declare-fun a_ack!641 () (_ BitVec 64))
(declare-fun c_ack!639 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun d_ack!640 () (_ BitVec 64))
(declare-fun b_ack!638 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!641) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!639) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!641))
        ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) c_ack!639))
        ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FADD_ACCURACY
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!638)
                  ((_ to_fp 11 53) c_ack!639)))
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) d_ack!640)
                  ((_ to_fp 11 53) a_ack!641)))))

(check-sat)
(exit)
