(declare-fun a_ack!113 () (_ BitVec 64))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!113) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!113) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!113)
                       ((_ to_fp 11 53) #x3fd78b56362cef38))
               ((_ to_fp 11 53) a_ack!113))
       ((_ to_fp 11 53) #x3fd78b56362cef38)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!113)
                       ((_ to_fp 11 53) #x3fd78b56362cef38))
               ((_ to_fp 11 53) #x3fd78b56362cef38))
       ((_ to_fp 11 53) a_ack!113)))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!113)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!113) ((_ to_fp 11 53) #xbeb0c6f7a0b5ed8d)))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!113)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x3f689374bc6a7efa))))

(check-sat)
(exit)
