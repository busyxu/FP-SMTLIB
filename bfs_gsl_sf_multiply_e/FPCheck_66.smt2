(declare-fun a_ack!318 () (_ BitVec 64))
(declare-fun b_ack!317 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!318) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!317) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!318))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) b_ack!317))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!318))
            (fp.abs ((_ to_fp 11 53) b_ack!317)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!318))
       (fp.abs ((_ to_fp 11 53) b_ack!317))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!318))
       ((_ to_fp 11 53) #x5feccccccccccccc)))
(assert (FPCHECK_FMUL_ACCURACY
  #x3cc0000000000000
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!318)
                  ((_ to_fp 11 53) b_ack!317)))))

(check-sat)
(exit)
