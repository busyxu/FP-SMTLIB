(declare-fun a_ack!3121 () (_ BitVec 64))
(declare-fun b_ack!3120 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!3120))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               (fp.abs ((_ to_fp 11 53) a_ack!3121)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3120) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3121) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!3121) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!3121) (CF_floor a_ack!3121)))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3121)
                    ((_ to_fp 11 53) b_ack!3120))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3121)
                    ((_ to_fp 11 53) b_ack!3120))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
