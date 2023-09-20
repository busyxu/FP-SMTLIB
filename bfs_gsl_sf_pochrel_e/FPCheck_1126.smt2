(declare-fun a_ack!3131 () (_ BitVec 64))
(declare-fun b_ack!3130 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!3130))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               (fp.abs ((_ to_fp 11 53) a_ack!3131)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3130) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3131) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!3131) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!3131) (CF_floor a_ack!3131)))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3131)
                    ((_ to_fp 11 53) b_ack!3130))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3131)
                    ((_ to_fp 11 53) b_ack!3130))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.abs (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) #xbff0000000000000)
                  ((_ to_fp 11 53) b_ack!3130)))
  #x3cc0000000000000))

(check-sat)
(exit)
