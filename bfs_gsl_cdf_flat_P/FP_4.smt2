(declare-fun a_ack!68 () (_ BitVec 64))
(declare-fun x_ack!70 () (_ BitVec 64))
(declare-fun b_ack!69 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!70) ((_ to_fp 11 53) a_ack!68))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!70) ((_ to_fp 11 53) b_ack!69))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!69)
                       ((_ to_fp 11 53) a_ack!68))
               ((_ to_fp 11 53) a_ack!68))
       ((_ to_fp 11 53) b_ack!69)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!69)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!69)
                       ((_ to_fp 11 53) a_ack!68)))
       ((_ to_fp 11 53) a_ack!68)))

(check-sat)
(exit)
