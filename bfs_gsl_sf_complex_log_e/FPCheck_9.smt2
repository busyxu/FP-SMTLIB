(declare-fun a_ack!28 () (_ BitVec 64))
(declare-fun b_ack!27 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (not (fp.eq ((_ to_fp 11 53) a_ack!28)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!27) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!28))
            (fp.abs ((_ to_fp 11 53) b_ack!27)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!28))
            (fp.abs ((_ to_fp 11 53) b_ack!27)))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.abs ((_ to_fp 11 53) b_ack!27))
  (fp.abs ((_ to_fp 11 53) b_ack!27))))

(check-sat)
(exit)
