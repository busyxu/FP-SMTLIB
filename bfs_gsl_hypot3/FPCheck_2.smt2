(declare-fun c_ack!17 () (_ BitVec 64))
(declare-fun b_ack!16 () (_ BitVec 64))
(declare-fun a_ack!18 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!16)) (fp.abs ((_ to_fp 11 53) c_ack!17))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!18))
            (fp.abs ((_ to_fp 11 53) b_ack!16)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!16)) (fp.abs ((_ to_fp 11 53) c_ack!17))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!16))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.abs ((_ to_fp 11 53) a_ack!18))
  (fp.abs ((_ to_fp 11 53) b_ack!16))))

(check-sat)
(exit)
