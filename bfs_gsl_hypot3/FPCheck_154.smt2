(declare-fun c_ack!794 () (_ BitVec 64))
(declare-fun b_ack!793 () (_ BitVec 64))
(declare-fun a_ack!795 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!793))
            (fp.abs ((_ to_fp 11 53) c_ack!794)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!795))
       (fp.abs ((_ to_fp 11 53) c_ack!794))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!795))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ZERO
  (fp.abs ((_ to_fp 11 53) c_ack!794))
  (fp.abs ((_ to_fp 11 53) a_ack!795))))

(check-sat)
(exit)
