(declare-fun a_ack!378 () (_ BitVec 64))
(declare-fun b_ack!377 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!378) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!378))
            (fp.abs ((_ to_fp 11 53) b_ack!377)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!378))
       (fp.abs ((_ to_fp 11 53) b_ack!377))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.abs ((_ to_fp 11 53) b_ack!377))
  (fp.abs ((_ to_fp 11 53) a_ack!378))))

(check-sat)
(exit)
