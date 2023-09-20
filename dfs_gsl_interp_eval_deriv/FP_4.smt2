(declare-fun x1_ack!66 () (_ BitVec 64))
(declare-fun x0_ack!68 () (_ BitVec 64))
(declare-fun x2_ack!67 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!68) ((_ to_fp 11 53) x1_ack!66)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!66) ((_ to_fp 11 53) x2_ack!67)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!66)
                       ((_ to_fp 11 53) x0_ack!68))
               ((_ to_fp 11 53) x0_ack!68))
       ((_ to_fp 11 53) x1_ack!66)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!66)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!66)
                       ((_ to_fp 11 53) x0_ack!68)))
       ((_ to_fp 11 53) x0_ack!68)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!67)
                       ((_ to_fp 11 53) x1_ack!66))
               ((_ to_fp 11 53) x1_ack!66))
       ((_ to_fp 11 53) x2_ack!67)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!67)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!67)
                       ((_ to_fp 11 53) x1_ack!66)))
       ((_ to_fp 11 53) x1_ack!66)))

(check-sat)
(exit)
