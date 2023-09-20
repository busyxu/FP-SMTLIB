(declare-fun a_ack!246 () (_ BitVec 64))
(declare-fun b_ack!245 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_atan2 ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (fp.eq ((_ to_fp 11 53) a_ack!246) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!245) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!246))
       (fp.abs ((_ to_fp 11 53) b_ack!245))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!246))
            (fp.abs ((_ to_fp 11 53) b_ack!245)))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!245))
       ((_ to_fp 11 53) #x7fefffffffffffff)))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               (fp.abs ((_ to_fp 11 53) b_ack!245))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  #x3cc0000000000000
  (fp.abs (CF_atan2 b_ack!245 a_ack!246))))

(check-sat)
(exit)
