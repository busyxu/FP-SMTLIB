(declare-fun c_ack!761 () (_ BitVec 64))
(declare-fun b_ack!760 () (_ BitVec 64))
(declare-fun a_ack!762 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!760))
            (fp.abs ((_ to_fp 11 53) c_ack!761)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!762))
       (fp.abs ((_ to_fp 11 53) c_ack!761))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!762))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_INVALID
  (fp.abs ((_ to_fp 11 53) c_ack!761))
  (fp.abs ((_ to_fp 11 53) a_ack!762))))

(check-sat)
(exit)
