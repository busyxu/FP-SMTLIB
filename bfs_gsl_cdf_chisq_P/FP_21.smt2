(declare-fun x_ack!312 () (_ BitVec 64))
(declare-fun nu_ack!311 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!312) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!312)
               ((_ to_fp 11 53) #x4000000000000000))
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu_ack!311)
               ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu_ack!311)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!312)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!312)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu_ack!311)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq (fp.div roundNearestTiesToEven
                ((_ to_fp 11 53) x_ack!312)
                ((_ to_fp 11 53) #x4000000000000000))
        (fp.mul roundNearestTiesToEven
                ((_ to_fp 11 53) #x3fe0000000000000)
                (fp.div roundNearestTiesToEven
                        ((_ to_fp 11 53) nu_ack!311)
                        ((_ to_fp 11 53) #x4000000000000000)))))

(check-sat)
(exit)
