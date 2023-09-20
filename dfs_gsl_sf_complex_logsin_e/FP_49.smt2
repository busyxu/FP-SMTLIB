(declare-fun b_ack!1014 () (_ BitVec 64))
(assert (fp.gt ((_ to_fp 11 53) b_ack!1014) ((_ to_fp 11 53) #x404e000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #xbfe62e42fefa39ef)
                       ((_ to_fp 11 53) b_ack!1014))
               ((_ to_fp 11 53) #xbfe62e42fefa39ef))
       ((_ to_fp 11 53) b_ack!1014)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #xbfe62e42fefa39ef)
                       ((_ to_fp 11 53) b_ack!1014))
               ((_ to_fp 11 53) b_ack!1014))
       ((_ to_fp 11 53) #xbfe62e42fefa39ef)))

(check-sat)
(exit)
