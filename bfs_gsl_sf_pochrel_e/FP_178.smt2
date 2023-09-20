(declare-fun a_ack!3197 () (_ BitVec 64))
(declare-fun b_ack!3196 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!3196))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               (fp.abs ((_ to_fp 11 53) a_ack!3197)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3196) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3197) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!3197) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!3197) (CF_floor a_ack!3197)))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!3197)
               ((_ to_fp 11 53) b_ack!3196))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3196) (CF_floor b_ack!3196))))

(check-sat)
(exit)
