(declare-fun a_ack!3025 () (_ BitVec 64))
(declare-fun b_ack!3024 () (_ BitVec 64))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!3024))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               (fp.abs ((_ to_fp 11 53) a_ack!3025)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3024) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!3025) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!3025)
               ((_ to_fp 11 53) b_ack!3024))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!3024))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               ((_ to_fp 11 53) a_ack!3025))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3025) ((_ to_fp 11 53) #x4065600000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!3025)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) a_ack!3025)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!3025)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!3025)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
