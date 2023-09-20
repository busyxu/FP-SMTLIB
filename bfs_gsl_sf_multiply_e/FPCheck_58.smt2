(declare-fun a_ack!286 () (_ BitVec 64))
(declare-fun b_ack!285 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!286) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!285) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!286))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) b_ack!285))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!286))
       (fp.abs ((_ to_fp 11 53) b_ack!285))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!286))
            (fp.abs ((_ to_fp 11 53) b_ack!285)))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!285))
       ((_ to_fp 11 53) #x5feccccccccccccc)))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3cc0000000000000
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!286)
                  ((_ to_fp 11 53) b_ack!285)))))

(check-sat)
(exit)
