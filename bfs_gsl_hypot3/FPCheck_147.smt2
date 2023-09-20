(declare-fun c_ack!755 () (_ BitVec 64))
(declare-fun b_ack!754 () (_ BitVec 64))
(declare-fun a_ack!756 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!754))
            (fp.abs ((_ to_fp 11 53) c_ack!755)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!756))
       (fp.abs ((_ to_fp 11 53) c_ack!755))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!756))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.abs ((_ to_fp 11 53) c_ack!755))
  (fp.abs ((_ to_fp 11 53) a_ack!756))))

(check-sat)
(exit)
