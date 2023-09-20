(declare-fun a_ack!552 () (_ BitVec 64))
(declare-fun b_ack!551 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!552) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!551) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!551) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!551) ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!551)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!552)))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!552) ((_ to_fp 11 53) #x412e848000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!552) ((_ to_fp 11 53) b_ack!551)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!552)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc999999999999a)
                    ((_ to_fp 11 53) b_ack!551)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!552) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!551)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!552)))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!551)
                       ((_ to_fp 11 53) a_ack!552))
               ((_ to_fp 11 53) a_ack!552))
       ((_ to_fp 11 53) b_ack!551)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!551)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!551)
                       ((_ to_fp 11 53) a_ack!552)))
       ((_ to_fp 11 53) a_ack!552)))

(check-sat)
(exit)
