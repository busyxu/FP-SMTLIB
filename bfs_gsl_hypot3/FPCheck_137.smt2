(declare-fun c_ack!695 () (_ BitVec 64))
(declare-fun b_ack!694 () (_ BitVec 64))
(declare-fun a_ack!696 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!694))
            (fp.abs ((_ to_fp 11 53) c_ack!695)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!696))
       (fp.abs ((_ to_fp 11 53) c_ack!695))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!696))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_INVALID
  (fp.abs ((_ to_fp 11 53) b_ack!694))
  (fp.abs ((_ to_fp 11 53) a_ack!696))))

(check-sat)
(exit)
