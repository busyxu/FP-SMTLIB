(declare-fun c_ack!773 () (_ BitVec 64))
(declare-fun b_ack!772 () (_ BitVec 64))
(declare-fun a_ack!774 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!772))
            (fp.abs ((_ to_fp 11 53) c_ack!773)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!774))
       (fp.abs ((_ to_fp 11 53) c_ack!773))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!774))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.abs ((_ to_fp 11 53) c_ack!773))
  (fp.abs ((_ to_fp 11 53) a_ack!774))))

(check-sat)
(exit)
