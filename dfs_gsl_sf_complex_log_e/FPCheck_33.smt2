(declare-fun a_ack!75 () (_ BitVec 64))
(declare-fun b_ack!74 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (not (fp.eq ((_ to_fp 11 53) a_ack!75)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!74) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!75)) (fp.abs ((_ to_fp 11 53) b_ack!74))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!75))
            (fp.abs ((_ to_fp 11 53) b_ack!74)))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.abs ((_ to_fp 11 53) a_ack!75))
  (fp.abs ((_ to_fp 11 53) b_ack!74))))

(check-sat)
(exit)
