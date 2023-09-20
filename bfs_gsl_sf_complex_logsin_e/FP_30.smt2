(declare-fun b_ack!454 () (_ BitVec 64))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!454) ((_ to_fp 11 53) #x404e000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!454) ((_ to_fp 11 53) #xc04e000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #xbfe62e42fefa39ef)
                       ((_ to_fp 11 53) b_ack!454))
               ((_ to_fp 11 53) b_ack!454))
       ((_ to_fp 11 53) #xbfe62e42fefa39ef)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #xbfe62e42fefa39ef)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #xbfe62e42fefa39ef)
                       ((_ to_fp 11 53) b_ack!454)))
       ((_ to_fp 11 53) b_ack!454)))

(check-sat)
(exit)
