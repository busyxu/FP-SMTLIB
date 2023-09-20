(declare-fun a_ack!3268 () (_ BitVec 32))
(declare-fun b_ack!3267 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (= #x00000000 a_ack!3268)))
(assert (= #x00000001 a_ack!3268))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3267) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3267) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3267) ((_ to_fp 11 53) #xc000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) b_ack!3267) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!3267) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xc000000000000000)
                    (CF_log b_ack!3267))
            ((_ to_fp 11 53) #xc0861b2bdd7abcd2))))
(assert (not (fp.gt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xc000000000000000)
                    (CF_log b_ack!3267))
            ((_ to_fp 11 53) #x40862642fefa39ef))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4024000000000000)
                       ((_ to_fp 11 53) b_ack!3267))
               ((_ to_fp 11 53) #x4024000000000000))
       ((_ to_fp 11 53) b_ack!3267)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4024000000000000)
                       ((_ to_fp 11 53) b_ack!3267))
               ((_ to_fp 11 53) b_ack!3267))
       ((_ to_fp 11 53) #x4024000000000000)))

(check-sat)
(exit)
