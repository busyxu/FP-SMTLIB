(declare-fun c_ack!119 () (_ BitVec 64))
(declare-fun b_ack!118 () (_ BitVec 64))
(declare-fun a_ack!120 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!118))
            (fp.abs ((_ to_fp 11 53) c_ack!119)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!120))
            (fp.abs ((_ to_fp 11 53) c_ack!119)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!118))
            (fp.abs ((_ to_fp 11 53) c_ack!119)))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!119))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.abs ((_ to_fp 11 53) a_ack!120))
  (fp.abs ((_ to_fp 11 53) c_ack!119))))

(check-sat)
(exit)
