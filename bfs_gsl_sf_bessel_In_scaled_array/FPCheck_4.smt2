(declare-fun a_ack!45 () (_ BitVec 32))
(declare-fun b_ack!43 () (_ BitVec 32))
(declare-fun c_ack!44 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!43 a_ack!45)))
(assert (not (bvslt a_ack!45 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!44) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!43)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!44))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.abs ((_ to_fp 11 53) c_ack!44))
  (fp.abs ((_ to_fp 11 53) c_ack!44))))

(check-sat)
(exit)
