(declare-fun a_ack!280 () (_ BitVec 64))
(declare-fun b_ack!279 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!280) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!280))
       (fp.abs ((_ to_fp 11 53) b_ack!279))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!280))
            (fp.abs ((_ to_fp 11 53) b_ack!279)))))
(assert (FPCHECK_FDIV_INVALID
  (fp.abs ((_ to_fp 11 53) a_ack!280))
  (fp.abs ((_ to_fp 11 53) b_ack!279))))

(check-sat)
(exit)
