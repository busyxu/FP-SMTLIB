(declare-fun c_ack!53 () (_ BitVec 64))
(declare-fun b_ack!52 () (_ BitVec 64))
(declare-fun a_ack!54 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!52))
            (fp.abs ((_ to_fp 11 53) c_ack!53)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!54)) (fp.abs ((_ to_fp 11 53) c_ack!53))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!54))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) a_ack!54))
  (fp.abs ((_ to_fp 11 53) a_ack!54))))

(check-sat)
(exit)
