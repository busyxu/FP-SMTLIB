(declare-fun c_ack!44 () (_ BitVec 64))
(declare-fun b_ack!43 () (_ BitVec 64))
(declare-fun a_ack!45 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!43))
            (fp.abs ((_ to_fp 11 53) c_ack!44)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!45)) (fp.abs ((_ to_fp 11 53) c_ack!44))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!45))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_INVALID
  (fp.abs ((_ to_fp 11 53) a_ack!45))
  (fp.abs ((_ to_fp 11 53) a_ack!45))))

(check-sat)
(exit)
